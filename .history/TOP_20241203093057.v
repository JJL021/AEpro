//log
//第四次：增加了TOP模块
//第五次：TOP无问题（DB15_0为内部引脚）
//第六次更改：添加了持续发送命令
//11_14 ：添加了async_fifo
//11_19:为啥数据量不匹配
//11_26下午16点45分：已保存，下面解决数据不够的问题，通过修改rst_n的定义
//11_30 udp_rx模块在sustain=0是清零了rec_data
//更改了文件结构，添加了uart模块
//改发送次数

module TOP(
input              sys_clk   ,      //系统时钟
input              sys_rst_n ,      //系统复位信号，低电平有效 
//PL以太网RGMII接口   
input              eth_rxc   ,      //RGMII接收数据时钟
input              eth_rx_ctl,      //RGMII输入数据有效信号
input       [3:0]  eth_rxd   ,      //RGMII输入数据
output             eth_txc   ,      //RGMII发送数据时钟    
output             eth_tx_ctl,      //RGMII输出数据有效信号
output      [3:0]  eth_txd   ,      //RGMII输出数据          
output             eth_rst_n ,      //以太网芯片复位信号，低电平有效   

//AD接口
input  wire         OTR     ,       // 通道A超出范围信号
input  wire         DCO     ,       // A通道数字时钟输出
//input  wire [15:0]  DB15_0  ,       // 通道A的数据
output wire         OEB     ,       //输出使能 低有效
output wire         PDWM    ,
output wire         SCLK    ,
output wire         CSB     ,       //spi_cs
output wire         SDIO    ,
output wire         AD_CLK  ,

//uart接口

input               uart_rxd,
output              uart_txd
);


//wire
wire [15:0]  DATA_A;
wire [15:0]  DATA_B;
wire [7:0]   my_send;
wire        clk_200m;

wire locked;
wire rst_n;
wire gmii_rx_clk;
(*mark_debug = "true"*)wire start_collect_flag;
wire udp_tx_req;
wire fifo_rd_valid;
wire fifo_wc_ack;
wire block_flag;
(*mark_debug = "true"*)wire STOP_FLAG;
wire STOP_FLAG_pulse_extender;
wire delay_stop_flag;
wire cnt2_is16_flag;
assign rst_n = sys_rst_n & locked & (~STOP_FLAG_pulse_extender);  // 综合复位信号 必须是与 因为有~

//例化
//MMCM/PLL
clk_wiz_0 u_clk_wiz_0
   (
    .clk_out2(AD_CLK),
    .clk_out1(clk_200m),     // output clk_out1
    .reset(~sys_rst_n), 	 // input reset
    .locked(locked),         // output locked
    .clk_in1(sys_clk)
    );  


eth_udp_loop u_eth_udp_loop(

    .clk_200m       (clk_200m ), 
    .sys_rst_n      (rst_n), 
    
    .eth_rxc        (eth_rxc   ), 
    .eth_rx_ctl     (eth_rx_ctl), 
    .eth_rxd        (eth_rxd   ), 
    .eth_txc        (eth_txc   ), 
    .eth_tx_ctl     (eth_tx_ctl), 
    .eth_txd        (eth_txd   ), 
    .eth_rst_n      (eth_rst_n ),
    .my_send        (my_send   ),
    .gmii_rx_clk    (gmii_rx_clk),  //async——FIFO用
    .sustain_flag   (start_collect_flag),
    .udp_tx_req     (udp_tx_req),
    // .fifo_rd_valid  (fifo_rd_valid),
    .block_flag     (block_flag),
    .STOP_FLAG      (STOP_FLAG),
    .cnt2_is16_flag (cnt2_is16_flag)
);

AD9269 u_ad9269(

   . AD_CLK             (AD_CLK),
   . SYS_RST            (rst_n),
   . OTR                (OTR),
   //. DCO              (DCO),
   //. DB15_0           (DB15_0),
   . OEB                (OEB),
   . PDWM               (PDWM),
   . SCLK               (SCLK),
   . CSB                (CSB),
   . SDIO               (SDIO),
   . DATA_A             (DATA_A),
   . DATA_B             (DATA_B),
   .start_collect_flag  (start_collect_flag)
);

async_fifo_ip u_async_fifo_ip(      

    .rst_n               (rst_n), 
    .wr_clk              (AD_CLK),
    .rd_clk              (gmii_rx_clk),
    .fifo_rd_req         (udp_tx_req),  //tx_req
    .fifo_wr_data        (DATA_A),
    .fifo_rd_data        (my_send),
    .start_collect_flag  (start_collect_flag),
    .wr_ack              (fifo_wc_ack),
    .valid               (fifo_rd_valid),
    .block_flag          (block_flag),
    .delay_stop_flag     (delay_stop_flag),
    .STOP_FLAG_d1           (STOP_FLAG),
    .cnt2_is16_flag       (cnt2_is16_flag)  //test

);

pulse_extender u_pulse_extender(
    .clk        (AD_CLK),
    .rst_n      (sys_rst_n),
    .pulse_in   (delay_stop_flag),//防止把fifo_wr里的delay_stop_flag给复位了
    .pulse_out  (STOP_FLAG_pulse_extender)

);

uart_loopback u_uart_loopback(

    .sys_clk          (AD_CLK)      ,   
    .sys_rst_n        (sys_rst_n)   ,   
    .uart_rxd         (uart_rxd)    ,   
    .uart_txd         (uart_txd)    ,   
    .my_uart_send     ()            ,
    .my_uart_tx_en    (block_flag)


);
endmodule