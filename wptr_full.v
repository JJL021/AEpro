//写满判断
module wptr_full
#(
    parameter ADDRSIZE = 6
) 
(
    output reg wfull,   
    output        [ADDRSIZE-1:0] waddr,
    output reg [ADDRSIZE  :0] wptr, 
    input           [ADDRSIZE  :0] wq2_rptr,
    input           winc, wclk, wrst_n
);
  reg  [ADDRSIZE:0] wbin;  //指针
  wire [ADDRSIZE:0] wgraynext, wbinnext;
  // GRAYSTYLE2 pointer
  always @(posedge wclk or negedge wrst_n)   
      if (!wrst_n)
          {wbin, wptr} <= 0;   
      else         
          {wbin, wptr} <= {wbinnext, wgraynext};
  // Memory write-address pointer (okay to use binary to address memory) 
  assign waddr        = wbin[ADDRSIZE-1:0]; 
  assign wbinnext   = wbin + (winc & ~wfull);//��������д����ʱ��ַ��1
  assign wgraynext = (wbinnext>>1) ^ wbinnext; //������תΪ������
  //-----------------------------------------------------------------
  assign wfull_val = (wgraynext=={~wq2_rptr[ADDRSIZE:ADDRSIZE-1],wq2_rptr[ADDRSIZE-2:0]}); 
//当最高位和次高位不同而其余位相同时，写指针超前于读指针一圈，即写满
  always @(posedge wclk or negedge wrst_n)
      if (!wrst_n)
          wfull  <= 1'b0;   
      else     
          wfull  <= wfull_val;
 
  endmodule
