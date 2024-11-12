// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jul  6 13:33:28 2023
// Host        : DESKTOP-OE2QKLR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sync_fifo_2048x8b_sim_netlist.v
// Design      : sync_fifo_2048x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sync_fifo_2048x8b,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2045" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2044" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 106880)
`pragma protect data_block
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
LmT/iAQ=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
