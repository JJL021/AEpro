module AD9269(
    input  wire         AD_CLK ,
    input  wire         SYS_RST ,
    input  wire         OTR     ,  // 通道A超出范围信号
    //input  wire         DCO     ,  // A通道数字时钟输出
    //input  wire [15:0]  DB15_0  ,  // 通道A的数据
    output wire         OEB     ,   //输出使能 低有效
    output wire         PDWM    ,
    output wire         SCLK    ,
    output wire         CSB     , //spi_cs
    output wire         SDIO    ,
    output wire [15:0]  DATA_A  ,
    output wire [15:0]  DATA_B
);


reg [15:0] AD_DATA_A;
reg [15:0] AD_DATA_B;
wire locked;
wire         DCO;
assign DCO = AD_CLK;

//自定义
reg [15:0]  DB15_0;
always @(posedge AD_CLK or negedge SYS_RST) begin 
  if(!SYS_RST)
    DB15_0 <= 16'b0;
  else
    DB15_0 <= DB15_0+ 16'h1205;
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

assign OEB  = 1'b0;
assign PDWM = 1'b0;

assign DATA_A = AD_DATA_A;
assign DATA_B = AD_DATA_B;

endmodule
