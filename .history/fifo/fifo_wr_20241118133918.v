`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 17:24:03
// Design Name: 
// Module Name: fifo_wr
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


module fifo_wr(

    input wr_clk , // 时钟信号
    input rst_n , // 复位信号
    input wr_rst_busy , // 写复位忙信号
    input almost_full , // FIFO 将满信号
    output reg fifo_wr_en , // FIFO 写使能
    input full,
    input start_collect_flag,
    input empty,
    input [10:0] wr_data_count,
    output reg block_flag
    );
    
//reg define
reg empty_d0;
reg empty_d1;
reg start_collect_flag_d0;
reg [10:0] wr_data_count_reg;
reg [10:0] count_reg;

    
//*****************************************************
//** main code
//*****************************************************

//因为empty 信号是属于FIFO 读时钟域的
//所以对empty 打两拍同步到写时钟域下
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n) begin
        empty_d0 <= 1'b0;
        empty_d1 <= 1'b0;
    end
    else begin
        empty_d0 <= empty;
        empty_d1 <= empty_d0;
        start_collect_flag_d0 <= start_collect_flag;
    end
end
//对fifo_wr_en 赋值，当FIFO 不是将满且收到采集命令时写，写满或收到停止采集命令时停止写
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n)
        fifo_wr_en <= 1'b0;
    else if(!wr_rst_busy) begin
        if(!full && (!almost_full) && start_collect_flag_d0)
            fifo_wr_en <= 1'b1;
    else if(almost_full || (!start_collect_flag_d0))
         fifo_wr_en <= 1'b0;
    end
    else
        fifo_wr_en <= 1'b0;
    end

    // //对fifo_wr_data 赋值,0~254
    // always @(posedge wr_clk or negedge rst_n) begin
    //     if(!rst_n)
    //         fifo_wr_data <= 16'b0;
    //     else if(fifo_wr_en && fifo_wr_data < 16'hffff)
    //          fifo_wr_data <= fifo_wr_data + 16'h1205;
    //     else
    //         fifo_wr_data <= 16'b0;
    // end
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n)
        wr_data_count_reg <= 11'b0;
    else
        wr_data_count_reg <= wr_data_count;
end   

always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n)
        block_flag <= 1'b0;
        count_reg <= 11'b0;
    else begin
        if(wr_data_count_reg == 128)
            block_flag <= 1'b1;

    end
        

end

endmodule
