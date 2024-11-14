//AD数据转换
module AD_convert(
    input               clk,  //20Mhz
    input               rst,
    input       [15:0]  din, 
    output  reg [7:0]   dout
    
);

reg state;  // 状态信号，用于切换高8位和低8位

always @(posedge clk or negedge rst)begin
    if(!rst) begin
        dout <= 8'b0;
        state <= 1'b0;
    end
    else begin
        if(state == 1'b0) begin
            dout <= din[15:8];
            state <= 1'b1;
        end
        else begin
            dout <= din[7:0];
            state <= 1'b0;
        end
    end
end


endmodule