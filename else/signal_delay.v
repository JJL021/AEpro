module signal_delay (
    input wire  clk,         // 时钟信号
    input wire  rst_n,       // 复位信号，低有效
    input wire  in_signal,  // 输入信号
    output wire delayed_signal // 延迟后的输出信号
);
    parameter N = 4;  // 延迟多少个时钟周期（可以根据需要修改）

    reg [N-1:0] delay_reg;  // 用于存储延时信号的寄存器链

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            delay_reg <= 0;
        else
            delay_reg <= {delay_reg[N-2:0], in_signal}; // 将信号推入寄存器链
    end

    assign delayed_signal = delay_reg[N-1]; // 获取延迟后的信号
endmodule

