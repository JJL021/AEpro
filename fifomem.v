module fifomem  //my��������һ�����ڼĴ����� FIFO �ڴ棬 �൱��˫�˿�ram
#(
    parameter  DATASIZE = 32, // Memory data word width               
    parameter  ADDRSIZE = 6  // ָ���ַλ��6 ��ַ���Ϊ5 fifo���Ϊ2^5
) // Number of mem address bits
(
    output [DATASIZE-1:0] rdata, 
    input  [DATASIZE-1:0] wdata, 
    input  [ADDRSIZE-1:0] waddr, raddr, 
    input                 wclken, wfull, wclk,
    input                 rempty,rclk,rclken
);

 // RTL Verilog memory model
localparam DEPTH = 1<<ADDRSIZE;     //�����൱�ڳ˷���2^6 �ƶ�6λ��0����λ
reg [DATASIZE-1:0] mem [0:DEPTH-1]; //my: �����ڴ�ռ䡣û��ʼ��
assign rdata = mem[raddr];          //����read��ַ�ҵ�fifo�ж�Ӧ������

always @(posedge wclk)  
    if (wclken && !wfull)
        mem[waddr] <= wdata;
 endmodule
always @(posedge rclk)
    if(rclken && !rempty)
        