module async_fifo_ip(
    input           rst_n, // ×ÛºÏ¸´Î»ÐÅºÅ
    input           wr_clk,
    input           rd_clk,

    input           fifo_rd_req,
    input [15:0]    fifo_wr_data,
    input           start_collect_flag,
    output [7:0]    fifo_rd_data

);

//wire define
wire fifo_wr_en;
wire fifo_rd_en;

wire almost_full;
wire almost_empty;
wire full;
wire empty;
wire [9:0]wr_data_count;
wire [9:0]rd_data_count;
wire wr_rst_busy;
wire rd_rst_busy;

async_fifo u_async_fifo (
  .rst(rst),                      // input wire rst
  .wr_clk(wr_clk),                // input wire wr_clk
  .rd_clk(rd_clk),                // input wire rd_clk
  .din(fifo_wr_data),                      // input wire [15 : 0] din
  .wr_en(fifo_wr_en),                  // input wire wr_en
  .rd_en(fifo_rd_en),                  // input wire rd_en
  .dout(dout),                    // output wire [7 : 0] dout
  .full(full),                    // output wire full
  .almost_full(almost_full),      // output wire almost_full
  .empty(empty),                  // output wire empty
  .almost_empty(almost_empty),    // output wire almost_empty
  .rd_data_count(rd_data_count),  // output wire [10 : 0] rd_data_count
  .wr_data_count(wr_data_count),  // output wire [9 : 0] wr_data_count
  .wr_rst_busy(wr_rst_busy),      // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy)      // output wire rd_rst_busy
);

endmodule