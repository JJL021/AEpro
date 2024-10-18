module fifomem  //my：定义了一个基于寄存器的 FIFO 内存， 相当于双端口ram
#(
    parameter  DATASIZE = 32, // Memory data word width               
    parameter  ADDRSIZE = 6  // 指针地址位宽6 地址宽度为5 fifo深度为2^5
) // Number of mem address bits
(
    output [DATASIZE-1:0] rdata, 
    input  [DATASIZE-1:0] wdata, 
    input  [ADDRSIZE-1:0] waddr, raddr, 
    input                 wclken, wfull, wclk,
    input                 rempty,rclk,rclken
);

 // RTL Verilog memory model
localparam DEPTH = 1<<ADDRSIZE;     //左移相当于乘法，2^6 移动6位，0来补位
reg [DATASIZE-1:0] mem [0:DEPTH-1]; //my: 开辟内存空间。没初始化
assign rdata = mem[raddr];          //利用read地址找到fifo中对应的数据

always @(posedge wclk)  
    if (wclken && !wfull)
        mem[waddr] <= wdata;
 endmodule
always @(posedge rclk)
    if(rclken && !rempty)
        