module async_fifo_ip(
    input           rst_n, // 综合复位信号
    input           wr_clk,
    input           rd_clk,

    input           fifo_rd_req,
    input [15:0]    fifo_wr_data,
    input           start_collect_flag,
    output [7:0]    fifo_rd_data,
    output          valid,
    output          wr_ack,
    output          block_flag,
    output          delay_stop_flag,
    output          STOP_FLAG_d1

);

//wire define
wire fifo_wr_en;
wire fifo_rd_en;

wire almost_full;
wire almost_empty;
wire full;
(*mark_debug = "true"*)wire empty;
wire [10:0]wr_data_count;
wire [9:0]rd_data_count;
wire wr_rst_busy;
wire rd_rst_busy;
wire new_rst_n;
assign new_rst_n = rst_n && !STOP_FLAG_d1;
// wire [15:0]    fifo_wr_data_inv;

// assign fifo_wr_data_inv = {fifo_wr_data[7:0],fifo_wr_data[15:8]};  //交换高低字节，得到正确读出顺序

async_fifo u_async_fifo (
  .rst(~rst_n),                      // input wire rst
  .wr_clk(wr_clk),                // input wire wr_clk
  .rd_clk(rd_clk),                // input wire rd_clk
  .din(fifo_wr_data),                      // input wire [15 : 0] din
  .wr_en(fifo_wr_en),                  // input wire wr_en
  .rd_en(fifo_rd_en),                  // input wire rd_en
  .dout(fifo_rd_data),                    // output wire [7 : 0] dout
  .full(full),                    // output wire full
  .almost_full(almost_full),      // output wire almost_full
  .empty(empty),                  // output wire empty
  .almost_empty(almost_empty),    // output wire almost_empty
  .rd_data_count(rd_data_count),  // output wire [10 : 0] rd_data_count
  .wr_data_count(wr_data_count),  // output wire [9 : 0] wr_data_count
  .wr_rst_busy(wr_rst_busy),      // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy),      // output wire rd_rst_busy
  .valid(valid), 
  .wr_ack(wr_ack)
);

//例化写FIFO 模块
fifo_wr u_fifo_wr (
    .wr_clk (wr_clk ),              // 写时钟
    .rst_n (rst_n ),                // 复位信号
    .wr_rst_busy (wr_rst_busy ),    // 写复位忙信号
    .fifo_wr_en (fifo_wr_en ),      // fifo 写请求
    .almost_full (almost_full ),    // fifo 将满信号
    .full(full),
    .start_collect_flag(start_collect_flag),
    .empty(empty),
    .wr_data_count(wr_data_count),
    .block_flag(block_flag),
    .STOP_FLAG_d1(STOP_FLAG_d1),
    //调试fifo用的接口
    .valid(valid),
    .fifo_rd_en(fifo_rd_en),
    .delay_stop_flag(delay_stop_flag),
    .rd_data_count(rd_data_count),
    .cnt2_is16_flag(cnt2_is16_flag)
);
//例化读FIFO 模块
fifo_rd u_fifo_rd (
    .rd_clk (rd_clk ),               // 读时钟
    .rst_n (rst_n ),                 // 复位信号
    .rd_rst_busy (rd_rst_busy ),     // 读复位忙信号
    .fifo_rd_en (fifo_rd_en ),       // fifo 读请求
    .almost_empty (almost_empty),    // fifo 将空信号
    .full (full),                    // fifo 满信号
    .empty(empty),
    .fifo_rd_req(fifo_rd_req),
    .block_flag(block_flag),
    //调试用
    .rd_data_count(rd_data_count)
);



endmodule