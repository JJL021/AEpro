//AD to 以太网模块
module TOP(

    input              sys_clk   , //系统时钟
    input              sys_rst_n , //系统复位信号，低电平有效 
    //PL以太网RGMII接口   
    input              eth_rxc   , //RGMII接收数据时钟
    input              eth_rx_ctl, //RGMII输入数据有效信号
    input       [3:0]  eth_rxd   , //RGMII输入数据
    output             eth_txc   , //RGMII发送数据时钟    
    output             eth_tx_ctl, //RGMII输出数据有效信号
    output      [3:0]  eth_txd   , //RGMII输出数据          
    output             eth_rst_n,   //以太网芯片复位信号，低电平有效   
    
    //AD模块接口
    input               OTR,        // 通道A超出范围信号
    input               DCO,        // A通道数字时钟输出
    input        [15:0] DB15_0,      // 通道A的数据

    output              OEB,         //输出使能 低有效
    output              PDWM, 
    output              SCLK,
    output              CSB,
    output              SDIO


);

//wire define
wire       [15:0] DATA_A;
wire       [15:0] DATA_B;
wire       [7:0]  my_eth_send;
wire              clk_200m;
wire              clk_20m;     //AD驱动时钟
    
//MMCM/PLL
clk_wiz_0 u_clk_wiz_0
   (
    .clk_out2(clk_200m),     // output clk_out2
    .clk_out1(clk_20m),      // output clk_out1  20Mhz
    .reset(~sys_rst_n), 	 // input reset
    .locked(locked), 
    .clk_in1(sys_clk)
    );  

eth_udp_loop u_eth_udp_loop(


        .sys_rst_n    (sys_rst_n),
        
        .eth_rxc      (eth_rxc),
        .eth_rx_ctl   (eth_rx_ctl),
        .eth_rxd      (eth_rxd),
        .eth_txc      (eth_txc),
        .eth_tx_ctl   (eth_tx_ctl),
        .eth_txd      (eth_txd),
        .eth_rst_n    (eth_rst_n),
        .my_eth_send  (my_eth_send),
        .clk_200m     (clk_200m)

);

AD9269 u_AD9269(

         .AD_CLK     (clk_20m),
         .SYS_RST    (sys_rst_n),
         .OTR        (OTR),
         .DCO        (DCO),
         .DB15_0     (DB15_0),
         .OEB        (OEB),
         .PDWM       (PDWM),
         .SCLK       (SCLK),
         .CSB        (CSB),
         .SDIO       (SDIO),
         .DATA_A     (DATA_A),
         .DATA_B     (DATA_B)
);
AD_convert u_AD_convert(

     .clk    (clk_20m),
     .rst    (sys_rst_n),
     .din    (DATA_A),
     .dout   (my_eth_send)
);
endmodule