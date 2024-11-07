//²úÉúÊı×Ö
module gen_number(
    input                clk_20m,
    input                sys_rst_n,
    output reg [7:0]     number


);
always @(posedge clk_20m or negedge sys_rst_n)begin
    if(!sys_rst_n)
        number <= 8'b0;
    else
        number <= number + 1'b1;

end
    

endmodule