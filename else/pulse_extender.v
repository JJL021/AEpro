module pulse_extender (
    input wire clk,           // 时钟信号
    input wire rst_n,         // 复位信号，低有效
    input wire pulse_in,      // 输入单周期脉冲
    output reg pulse_out      // 输出多周期脉冲
);
    parameter PULSE_CYCLES = 4; // 输出脉冲的持续周期数

    reg [2:0] counter; // 计数器宽度，根据需要调整

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 3'b0;
            pulse_out <= 1'b0;
        end else begin
            if (pulse_in) begin
                // 输入脉冲上升沿时，开始计数并拉高输出信号
                counter <= PULSE_CYCLES - 1;
                pulse_out <= 1'b1;
            end else if (counter > 0) begin
                // 计数器倒数，保持输出信号为高
                counter <= counter - 1;
                pulse_out <= 1'b1;
            end else begin
                // 计数器归零，输出信号拉低
                pulse_out <= 1'b0;
            end
        end
    end
endmodule
