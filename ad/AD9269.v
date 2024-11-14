module AD9269(
    input  wire         AD_CLK ,
    input  wire         SYS_RST ,
    input  wire         OTR     ,  // 通道A超出范围信号
    input  wire         DCO     ,  // A通道数字时钟输出
    //input  wire [15:0]  DB15_0  ,  // 通道A的数据
    output wire         OEB     ,   //输出使能 低有效
    output wire         PDWM    ,  //高电平时ADC进入掉电模式
    output wire         SCLK    ,
    output wire         CSB     , //spi_cs
    output wire         SDIO    ,
    output wire [15:0]  DATA_A  ,
    output wire [15:0]  DATA_B  ,
    //自定义
    input  wire         start_collect_flag
);


reg [15:0] AD_DATA_A;
reg [15:0] AD_DATA_B;
wire locked;

//自定义
reg [15:0]  DB15_0;
always @(posedge AD_CLK or negedge SYS_RST) begin 
  if(!SYS_RST)
    DB15_0 <= 16'b0;
  else if(start_collect_flag)
    DB15_0 <= DB15_0 + 16'h1204;
end


// 时序参考数据手册第8页
always@(posedge DCO)
begin
  AD_DATA_A <= DB15_0;
end

always@(negedge DCO)
begin
  AD_DATA_B <= DB15_0;
end


AD9269_SPI U_AD9269_SPI(
  .SYS_CLK(AD_CLK ), 
  .SYS_RST(SYS_RST),
  .SCLK   (SCLK   ),
  .CS     (CSB    ),
  .MOSI   (SDIO   )
);

//模式选择
assign OEB  = !start_collect_flag;  //0：输出使能 1：输出处于高阻抗状态
assign PDWM = !start_collect_flag;  //0：正常工作 1：掉电或待机状态

assign DATA_A = AD_DATA_A;
assign DATA_B = AD_DATA_B;

endmodule
