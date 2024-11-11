module AD9269_SPI(
  input  wire SYS_CLK, 
  input  wire SYS_RST,
  output wire SCLK   ,
  output wire CS     ,
  output wire MOSI   
);

// 鑺墖鐨凷CLK涓婂崌娌胯姱鐗囪繘琛屾暟鎹鍙栵紝鎵€浠ュ湪涓嬮檷娌块渶瑕佸鏁版嵁杩涜鏇存柊绉诲姩浣嶇疆

localparam delay_10ms = (50_000_000 / 100) - 1;
localparam sclk_cnt   = (24 * 2) - 1;

// 鑺墖鐨勫瘎瀛樺櫒濡備笅鎵€绀猴紝瑙佽姱鐗囨墜鍐岀殑32椤� - 
localparam Modes         = 8'h08 ; // 妯″紡瀵勫瓨鍣�
localparam Clock         = 8'h09 ; // 鍏ㄥ眬鏃堕挓瀵勫瓨鍣�
localparam Clock_divider = 8'h0B ; // 鏃堕挓鍒嗛鍣�
localparam Test_mode     = 8'h0D ; // 娴嬭瘯妯″紡
localparam Offset_adjust = 8'h10 ; // 渚垮疁璋冩暣瀵勫瓨鍣�
localparam Output_mode   = 8'h14 ; // 杈撳嚭妯″紡瀵勫瓨鍣�
localparam OUTPUT_ADJUST = 8'h15 ; // 杈撳嚭璋冩暣瀵勫瓨鍣�
localparam OUTPUT_PHASE  = 8'h16 ; // 杈撳嚭鐩镐綅璋冭妭
localparam OUTPUT_DELAY  = 8'h17 ; // 杈撳嚭寤舵椂瀵勫瓨鍣� 
localparam Features      = 8'h2A ;
localparam Output_assign = 8'h2E ;

localparam Transfer      = 8'hFF ;

// 鏁版嵁鍔熻兘鎺у埗瀵勫瓨鍣�
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

// 闇€瑕佸啓鍏ョ殑鏁版嵁
always@(*)begin
    case(DATA_CNT)
      2'd0:SPI_DATA = {WRITE,2'b00,5'd0,Output_mode  ,2'b00,1'b1,1'b0,1'b0,1'b0,2'b01};  // 鎵撳紑ADC宸垎妯″紡		
      2'd1:SPI_DATA = {WRITE,2'b00,5'd0,OUTPUT_DELAY ,1'b0 ,1'b0,1'b1,2'b00,3'd1     };  // 鍏抽棴杈撳嚭鐩镐綅寤舵椂锛屾墦寮€鏁版嵁寤舵椂锛屽欢鏃�1.12ns
      2'd2:SPI_DATA = {WRITE,2'b00,5'd0,Transfer     ,7'd0 ,1'b1                     };  // 瀵勫瓨鍣ㄦ暟鎹紶杈�
    default:SPI_DATA = 24'd0;
  endcase
end

// SPI鐨勪富鎺у埗鍣�
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
                if(DELAY_CNT >= delay_10ms)begin  // 鍒濆鍖栧欢鏃�10ms
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
            3'd2: begin  // 寤舵椂涓€涓懆鏈熺暀缁欐墦鎷嶆椂闂�
                SPI_CS    <= 1'b0 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd3 ;
            end
            3'd3: begin // 鐢熸垚SCLK
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
                if(DATA_CNT >= 2'd2)begin // 鍒ゆ柇鏄惁闇€瑕佸啓鍏ョ殑鏁版嵁鍏ㄩ儴鍐欏叆
                  DATA_CNT  <= 2'd0; 
                  STATE   <= 3'd7;
                end
                else begin
                  DATA_CNT  <= DATA_CNT + 1'b1; // 鍐欏叆涓嬩竴涓暟鎹�
                  STATE     <= 3'd1;
                end
            end
            3'd7: begin
                SPI_CS    <= 1'b1 ;
                SPI_SCLK  <= 1'b1 ;
                STATE     <= 3'd7; // 閰嶇疆瀹屾垚绋嬪簭杩涘叆姝诲惊鐜�
            end
            default:STATE <= 3'd0;
        endcase
    end
end


always@(posedge SYS_CLK) // 瀵筍YNC杩涜鎵撴媿澶勭悊
begin
  cs_first <= CS;
end

assign cs_nege = (~CS) & cs_first; // 鎹曡幏SYNC鐨勪笅闄嶆部
 
// 瀵规暟鎹繘琛岀Щ浣嶈緭鍑�
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

