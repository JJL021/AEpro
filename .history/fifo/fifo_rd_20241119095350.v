`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 18:41:55
// Design Name: 
// Module Name: fifo_rd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fifo_rd(
    input rd_clk , //时钟信号
    input rst_n , //复位信号
    input rd_rst_busy , //读复位忙信号
    input full , //FIFO 满信号
    input almost_empty, //FIFO 将空信号
    output reg fifo_rd_en, //FIFO 读使能
    input empty,
    input fifo_rd_req,
    input block_flag
    
    );

//reg define
reg full_d0;
reg full_d1;
(*mark_debug = "true"*)reg fifo_rd_req_d0;

 reg block_flag_d0;
 reg block_flag_d1;
//同步 初始化
always @(posedge rd_clk or negedge rst_n) begin  
    if(!rst_n) begin
        full_d0 <= 1'b0;
        full_d1 <= 1'b0; 
        fifo_rd_req_d0 <= 1'b0;
        block_flag_d0  <= 1'b0;
        block_flag_d1  <= 1'b0;
    end
    else begin
        full_d0 <= full;
        full_d1 <= full_d0;
        fifo_rd_req_d0 <= fifo_rd_req;
        block_flag_d0 <= block_flag;
        block_flag_d1 <= block_flag_d0;
    end
end
//对fifo_rd_en 进行赋值,FIFO 写满之后开始读，读空之后停止读
always @(posedge rd_clk or negedge rst_n) begin
    if(!rst_n)
        fifo_rd_en <= 1'b0;
    else if(!rd_rst_busy) begin
            if(!empty && !almost_empty && block_flag_d1)
                fifo_rd_en <= fifo_rd_req_d0;
            else if(almost_empty || empty || or block_flag_d1) 
                fifo_rd_en <= 1'b0;
    end
    else
        fifo_rd_en <= 1'b0;  //rd_en为脉冲
end
// wire [7:0] fifo_rd_data_out;
// assign fifo_rd_data_out = (fifo_rd_en ? fifo_rd_data:8'b0);
endmodule
