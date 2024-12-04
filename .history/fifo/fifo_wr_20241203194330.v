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
// 添加了STOP_FLAG，发送2MB左右后停止发送
//75行添加了|| STOP_FLAG，使写完256B后立即停止写fifo，这样再发aa不会先读出上次的残留再读出0001了
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
    (*mark_debug = "true"*)output reg block_flag,    //256B字节写完标志位（开始发送标志位）
    output reg STOP_FLAG_d1,
    input fifo_rd_en,  //调试用
    input valid,
    input [9:0] rd_data_count,
    output delay_stop_flag,
    output reg cnt2_is16_flag
    );

//wire define


//reg define
reg empty_d0;
reg empty_d1;
reg start_collect_flag_d0;
(*mark_debug = "true"*)reg STOP_FLAG;
reg start_collect_flag_d1;
(*mark_debug = "true"*)reg [7:0] count_reg1;  //1024*16
(*mark_debug = "true"*)reg [7:0] count_reg2;
(*mark_debug = "true"*)reg [7:0] count_reg3;
reg [9:0] rd_data_count_d1;
reg [9:0] rd_data_count_d2;
//调试用
reg fifo_rd_en_d1;
reg fifo_rd_en_d2;
reg valid_d1;
reg valid_d2;

reg [10:0] wr_data_count_reg_last;
reg trend;    
reg [7:0] count_reg1_last;  // 保存上一个时钟周期的 count_reg1 值
reg [7:0] count_reg2_last;  // 保存上一个时钟周期的 count_reg2 值

// localparam define
localparam count_reg1_max = 9'd256;
localparam count_reg2_max = 9'd256;
localparam count_reg3_max = 9'd8;


//*****************************************************
//** main code
//*****************************************************
//对empty 打两拍同步到写时钟域下
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n) begin
        empty_d0 <= 1'b0;
        empty_d1 <= 1'b0;
        start_collect_flag_d0 <= 1'b0;
        start_collect_flag_d1 <= 1'b0;
        //调试用
        fifo_rd_en_d1 <=1'b0;
        fifo_rd_en_d2 <=1'b0;
        valid_d1 <= 1'b0;
        valid_d2 <= 1'b0;
        rd_data_count_d1 <=11'b0;
        rd_data_count_d2 <= 11'b0;
        STOP_FLAG_d1 <= 1'b0;
    end
    else begin
        empty_d0 <= empty;
        empty_d1 <= empty_d0;
        start_collect_flag_d0 <= start_collect_flag;
        start_collect_flag_d1 <= start_collect_flag_d0;
        fifo_rd_en_d1 <= fifo_rd_en;
        fifo_rd_en_d2 <= fifo_rd_en_d1;
        valid_d1 <= valid;
        valid_d2 <= valid_d1;
        rd_data_count_d1 <= rd_data_count;
        rd_data_count_d2 <= rd_data_count_d1;
        STOP_FLAG_d1 <= STOP_FLAG;
    end
end
//打开写使能
//对fifo_wr_en 赋值，当FIFO 不是将满且收到采集命令时写，写满或收到停止采集命令时停止写
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n || delay_stop_flag)
        fifo_wr_en <= 1'b0;
    else if(!wr_rst_busy) begin
        if(!full && (!almost_full) && start_collect_flag_d1)
            fifo_wr_en <= 1'b1;
        else if(almost_full || (!start_collect_flag_d1) ) //|| STOP_FLAG
            fifo_wr_en <= 1'b0;
    end
    else
        fifo_wr_en <= 1'b0;
end

//wire转reg
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n || delay_stop_flag) begin
        wr_data_count_reg_last <= 11'b0;
        trend <= 1'b0;
    end
    else begin
        // 比较当前 wr_data_count 和上一时刻值
        if (wr_data_count > wr_data_count_reg_last)
            trend <= 1'b1; // 数据量增加
        else //if (wr_data_count < wr_data_count_reg_last)
            trend <= 1'b0; // 数据量减少
        wr_data_count_reg_last <= wr_data_count;
    end
end   

reg block_flag_pre;
//block_flag与count_reg1计数器
always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n || delay_stop_flag) begin
        block_flag <= 1'b0;
        block_flag_pre <= 1'b0;
        count_reg1 <= 14'b0;
        count_reg1_last <= 14'b0;  
    end
    else begin
        count_reg1_last <= count_reg1;  // 更新上一周期值
        if (wr_data_count_reg_last == 11'd128 && trend) begin  //wr_cnt增加的时候达到128而不考虑减
            block_flag <= 1'b1;
            if (count_reg1 == count_reg1_max - 14'h1) begin
                count_reg1 <= 14'b0;
            end
            else begin
                count_reg1 <= count_reg1 + 14'b1;
            end
        end
        else begin
            block_flag <= 1'b0;
        end
        if (wr_data_count_reg_last == 11'd128)
    end
end

//count_reg2计数器
always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n || delay_stop_flag) begin
        count_reg2 <= 9'b0;
        count_reg2_last <= 8'b0; 
    end
    // 检测 count_reg1 从非最大值变为最大值的过渡
    else begin 
        count_reg2_last <= count_reg2; //更新count_reg2_last
        if (block_flag && (count_reg1 == count_reg1_max - 8'b1)) begin
            count_reg2 <= count_reg2 + 1'b1;
        end
        else if (count_reg2 == (count_reg2_max - 8'd1) && (count_reg1 == count_reg1_max - 8'h1) && block_flag ) begin
            count_reg2 <= 9'b0;
        end
        else begin
            count_reg2 <= count_reg2;
        end
    end
end

//count_reg3计数器
always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n || delay_stop_flag) begin
        count_reg3 <= 9'b0;
    end
    // 检测 count_reg1和 count_reg2从非最大值变为最大值的过渡
    else if ((count_reg1 == count_reg1_max - 8'b1) && (count_reg2 == count_reg2_max - 8'b1) && block_flag) begin
        count_reg3 <= count_reg3 + 1'b1;
    end
    else if (count_reg3 == (count_reg3_max - 8'd1) && (count_reg2 == count_reg2_max - 8'b1) && (count_reg1 == count_reg1_max - 8'b1) && block_flag) begin
        count_reg3 <= 8'b0;
    end
    else begin
        count_reg3 <= count_reg3;
    end
end

//STOP_FLAG设置
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n) begin
        STOP_FLAG <= 1'b0;
    end
    else if(count_reg3 == (count_reg3_max - 8'd1) && (count_reg2 == count_reg2_max - 8'b1) && (count_reg1 == count_reg1_max - 8'b1) && block_flag) begin   
        STOP_FLAG <= 1'b1;
    end
    else
        STOP_FLAG <= 1'b0;
end

signal_delay u_signal_delay(        //该模块的复位要用STOP_FLAG延迟几个周期后的信号复位（确保读完）
    .clk             (wr_clk),         
    .rst_n           (rst_n),
    .in_signal       (STOP_FLAG_d1),
    .delayed_signal  (delay_stop_flag)
);
//测试
always @(posedge wr_clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt2_is16_flag <= 1'b0;
    end
    else if(count_reg2==9'd25)
        cnt2_is16_flag <= 1'b1;
    else
        cnt2_is16_flag <= 1'b0;
end
endmodule
