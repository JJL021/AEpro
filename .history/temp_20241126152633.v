reg [10:0] wr_data_count_prev; // 假设 wr_data_count 为 11 位
wire [10:0] wr_data_count; // FIFO IP 核输出

reg trend; // 表示趋势：1 表示增加，0 表示减少

always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
        wr_data_count_prev <= 11'b0; // 初始化为 0
        trend <= 1'b0;               // 默认趋势
    end
    else begin
        // 比较当前 wr_data_count 和上一时刻值
        if (wr_data_count > wr_data_count_prev)
            trend <= 1'b1; // 数据量增加
        else if (wr_data_count < wr_data_count_prev)
            trend <= 1'b0; // 数据量减少

        // 更新上一时刻的值
        wr_data_count_prev <= wr_data_count;
    end
end
