module AD9269_SPI(
  input  wire SYS_CLK, 
  input  wire SYS_RST,
  output wire SCLK   ,
  output wire CS     ,
  output wire MOSI   
);

// 芯片的SCLK上升沿芯片进行数据读取，所以在下降沿需要对数据进行更新移动位置

localparam delay_10ms = (50_000_000 / 100) - 1;
localparam sclk_cnt   = (24 * 2) - 1;

// 芯片的寄存器如下所示，见芯片手册的32页 - 
localparam Modes         = 8'h08 ; // 模式寄存器
localparam Clock         = 8'h09 ; // 全局时钟寄存器
localparam Clock_divider = 8'h0B ; // 时钟分频器
localparam Test_mode     = 8'h0D ; // 测试模式
localparam Offset_adjust = 8'h10 ; // 便宜调整寄存器
localparam Output_mode   = 8'h14 ; // 输出模式寄存器
localparam OUTPUT_ADJUST = 8'h15 ; // 输出调整寄存器
localparam OUTPUT_PHASE  = 8'h16 ; // 输出相位调节
localparam OUTPUT_DELAY  = 8'h17 ; // 输出延时寄存器 
localparam Features      = 8'h2A ;
localparam Output_assign = 8'h2E ;

localparam Transfer      = 8'hFF ;

// 数据功能控制寄存器
localparam Sync_control  = 9'h100;
localparam USR2          = 9'h101;
localparam QEC_Control_0 = 9'h110;
localparam QEC_Control_1 = 9'h111;
localparam QEC_gain      = 9'h112;
localparam QEC_phase     = 9'h113;
localparam QEC_DC        = 9'h114;
localparam QEC_Initial_Gain0  = 9'h116;
localparam QEC_Initial_Gain1  = 9'h117;
localparam QEC_Initial_phase0 = 9'h118;
localparam QEC_Initial_phase1 = 9'h119;
localparam QEC_Initial_DC_I_0 = 9'h11A;
localparam QEC_Initial_DC_I_1 = 9'h11B;
localparam QEC_Initial_DC_Q_0 = 9'h11C;
localparam QEC_Initial_DC_Q_1 = 9'h11D; 

localparam clock_cycle0 = 3'b000;
localparam clock_cycle1 = 3'b001;
localparam clock_cycle2 = 3'b010;
localparam clock_cycle3 = 3'b011;
localparam clock_cycle4 = 3'b100;
localparam clock_cycle5 = 3'b101;
localparam clock_cycle6 = 3'b110;
localparam clock_cycle7 = 3'b111;

localparam READ  = 1'b1;
localparam WRITE = 1'b0;

reg        SPI_CS   ;
reg        SPI_SCLK ;
reg        SPI_MOSI ;

reg [1 :0] DATA_CNT ;

reg [25:0] DELAY_CNT;
reg [2 :0] STATE    ;

reg [23:0] SEND_DATA;
reg [23:0] SPI_DATA ;
reg [5 :0] SCLK_CNT ;

reg  cs_first ;
wire cs_nege  ;

// 需要写入的数据
always@(*)begin
    case(DATA_CNT)
      2'd0:SPI_DATA = {WRITE,2'b00,5'd0,Output_mode  ,2'b00,1'b1,1'b0,1'b0,1'b0,2'b01};  // 打开ADC差分模式		
      2'd1:SPI_DATA = {WRITE,2'b00,5'd0,OUTPUT_DELAY ,1'b0 ,1'b0,1'b1,2'b00,3'd1     };  // 关闭输出相位延时，打开数据延时，延时1.12ns
      2'd2:SPI_DATA = {WRITE,2'b00,5'd0,Transfer     ,7'd0 ,1'b1                     };  // 寄存器数据传输
    default:SPI_DATA = 24'd0;
  endcase
end

// SPI的主控制器
always@(posedge SYS_CLK or negedge SYS_RST)
begin
    if(!SYS_RST)begin
      SPI_CS    <= 1'b1 ;
      SPI_SCLK  <= 1'b1 ;
      DATA_CNT  <= 2'd0 ;
      SCLK_CNT  <= 6'd0 ;
      DELAY_CNT <= 26'd0;
      STATE     <= 3'd0 ;
    end
    else begin
        case(STATE)
            3'd0: begin
                SPI_CS    <= 1'b1 ;
                SPI_SCLK  <= 1'b1 ;
                SCLK_CNT  <= 6'd0 ;
                DATA_CNT  <= 2'd0 ;
                if(DELAY_CNT >= delay_10ms)begin  // 初始化延时10ms
                  DELAY_CNT <= 26'd0;
                  STATE     <= 3'd1 ;    
                end
                else begin
                  DELAY_CNT <= DELAY_CNT + 1'b1;
                  STATE     <= 3'd0 ;
                end 
            end
            3'd1: begin
                SPI_CS    <= 1'b0 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd2 ;
            end
            3'd2: begin  // 延时一个周期留给打拍时间
                SPI_CS    <= 1'b0 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd3 ;
            end
            3'd3: begin // 生成SCLK
                SPI_CS  <= 1'b0 ;
                if(SCLK_CNT >= sclk_cnt)begin
                    SCLK_CNT <= 6'd0; 
                    SPI_SCLK <= ~SPI_SCLK;
                    STATE    <= 3'd4;
                end
                else begin
                    SCLK_CNT <= SCLK_CNT + 1'b1;
                    SPI_SCLK <= ~SPI_SCLK;
                    STATE    <= 3'd3;
                end
            end
            3'd4: begin
                SPI_CS    <= 1'b0 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd5;
            end
            3'd5: begin
                SPI_CS    <= 1'b1 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd6;
            end
            3'd6: begin
                SPI_CS    <= 1'b1 ;
                SPI_SCLK  <= 1'b1 ;
                if(DATA_CNT >= 2'd2)begin // 判断是否需要写入的数据全部写入
                  DATA_CNT  <= 2'd0; 
                  STATE   <= 3'd7;
                end
                else begin
                  DATA_CNT  <= DATA_CNT + 1'b1; // 写入下一个数据
                  STATE     <= 3'd1;
                end
            end
            3'd7: begin
                SPI_CS    <= 1'b1 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd7; // 配置完成程序进入死循环
            end
            default:STATE <= 3'd0;
        endcase
    end
end


always@(posedge SYS_CLK) // 对SYNC进行打拍处理
begin
  cs_first <= CS;
end

assign cs_nege = (~CS) & cs_first; // 捕获SYNC的下降沿
 
// 对数据进行移位输出
always@(negedge SCLK or negedge SYS_RST or posedge cs_nege)
begin
    if(!SYS_RST)begin
        SPI_MOSI  <= 1'b0 ;
        SEND_DATA <= 24'd0;
    end
    else if(cs_nege)begin
        SEND_DATA <= SPI_DATA;
    end
    else begin
        SPI_MOSI  <= SEND_DATA[23];
        SEND_DATA <= {SEND_DATA[22:0],1'b0};
    end
end



assign SCLK = SPI_SCLK;
assign CS   = SPI_CS  ;
assign MOSI = SPI_MOSI;


endmodule

