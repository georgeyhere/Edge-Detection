//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Dec 16 21:53:00 2020
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target greyscale_algorithm.bd
//Design      : greyscale_algorithm
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "greyscale_algorithm,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=greyscale_algorithm,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "greyscale_algorithm.hwdef" *) 
module greyscale_algorithm
   (M_AXIS_RESULT_0_tdata,
    M_AXIS_RESULT_0_tready,
    M_AXIS_RESULT_0_tvalid,
    S_AXIS_A_0_tdata,
    S_AXIS_A_0_tready,
    S_AXIS_A_0_tvalid,
    S_AXIS_A_1_tdata,
    S_AXIS_A_1_tready,
    S_AXIS_A_1_tvalid,
    S_AXIS_A_2_tdata,
    S_AXIS_A_2_tready,
    S_AXIS_A_2_tvalid,
    S_AXIS_B_0_tdata,
    S_AXIS_B_0_tready,
    S_AXIS_B_0_tvalid,
    S_AXIS_B_1_tdata,
    S_AXIS_B_1_tready,
    S_AXIS_B_1_tvalid,
    S_AXIS_B_2_tdata,
    S_AXIS_B_2_tready,
    S_AXIS_B_2_tvalid,
    aclk_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT_0, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 24}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]M_AXIS_RESULT_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT_0 TREADY" *) input M_AXIS_RESULT_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT_0 TVALID" *) output M_AXIS_RESULT_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A_0, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_A_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TREADY" *) output S_AXIS_A_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TVALID" *) input S_AXIS_A_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A_1, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_A_1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_1 TREADY" *) output S_AXIS_A_1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_1 TVALID" *) input S_AXIS_A_1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_2 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A_2, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_A_2_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_2 TREADY" *) output S_AXIS_A_2_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_2 TVALID" *) input S_AXIS_A_2_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B_0, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_B_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TREADY" *) output S_AXIS_B_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TVALID" *) input S_AXIS_B_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B_1, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_B_1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_1 TREADY" *) output S_AXIS_B_1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_1 TVALID" *) input S_AXIS_B_1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_2 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B_2, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_B_2_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_2 TREADY" *) output S_AXIS_B_2_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_2 TVALID" *) input S_AXIS_B_2_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF S_AXIS_A_0:M_AXIS_RESULT_0:S_AXIS_B_0:M_AXIS_RESULT_1:S_AXIS_A_1:S_AXIS_B_1:S_AXIS_A_2:M_AXIS_RESULT_2:S_AXIS_B_2, CLK_DOMAIN greyscale_algorithm_aclk_0, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_0;

  wire [31:0]S_AXIS_A_0_1_TDATA;
  wire S_AXIS_A_0_1_TREADY;
  wire S_AXIS_A_0_1_TVALID;
  wire [31:0]S_AXIS_A_1_1_TDATA;
  wire S_AXIS_A_1_1_TREADY;
  wire S_AXIS_A_1_1_TVALID;
  wire [31:0]S_AXIS_A_2_1_TDATA;
  wire S_AXIS_A_2_1_TREADY;
  wire S_AXIS_A_2_1_TVALID;
  wire [31:0]S_AXIS_B_0_1_TDATA;
  wire S_AXIS_B_0_1_TREADY;
  wire S_AXIS_B_0_1_TVALID;
  wire [31:0]S_AXIS_B_1_1_TDATA;
  wire S_AXIS_B_1_1_TREADY;
  wire S_AXIS_B_1_1_TVALID;
  wire [31:0]S_AXIS_B_2_1_TDATA;
  wire S_AXIS_B_2_1_TREADY;
  wire S_AXIS_B_2_1_TVALID;
  wire aclk_0_1;
  wire [31:0]floating_point_0_M_AXIS_RESULT_TDATA;
  wire floating_point_0_M_AXIS_RESULT_TREADY;
  wire floating_point_0_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_1_M_AXIS_RESULT_TDATA;
  wire floating_point_1_M_AXIS_RESULT_TREADY;
  wire floating_point_1_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_2_M_AXIS_RESULT_TDATA;
  wire floating_point_2_M_AXIS_RESULT_TREADY;
  wire floating_point_2_M_AXIS_RESULT_TVALID;

  assign M_AXIS_RESULT_0_tdata[31:0] = floating_point_2_M_AXIS_RESULT_TDATA;
  assign M_AXIS_RESULT_0_tvalid = floating_point_2_M_AXIS_RESULT_TVALID;
  assign S_AXIS_A_0_1_TDATA = S_AXIS_A_0_tdata[31:0];
  assign S_AXIS_A_0_1_TVALID = S_AXIS_A_0_tvalid;
  assign S_AXIS_A_0_tready = S_AXIS_A_0_1_TREADY;
  assign S_AXIS_A_1_1_TDATA = S_AXIS_A_1_tdata[31:0];
  assign S_AXIS_A_1_1_TVALID = S_AXIS_A_1_tvalid;
  assign S_AXIS_A_1_tready = S_AXIS_A_1_1_TREADY;
  assign S_AXIS_A_2_1_TDATA = S_AXIS_A_2_tdata[31:0];
  assign S_AXIS_A_2_1_TVALID = S_AXIS_A_2_tvalid;
  assign S_AXIS_A_2_tready = S_AXIS_A_2_1_TREADY;
  assign S_AXIS_B_0_1_TDATA = S_AXIS_B_0_tdata[31:0];
  assign S_AXIS_B_0_1_TVALID = S_AXIS_B_0_tvalid;
  assign S_AXIS_B_0_tready = S_AXIS_B_0_1_TREADY;
  assign S_AXIS_B_1_1_TDATA = S_AXIS_B_1_tdata[31:0];
  assign S_AXIS_B_1_1_TVALID = S_AXIS_B_1_tvalid;
  assign S_AXIS_B_1_tready = S_AXIS_B_1_1_TREADY;
  assign S_AXIS_B_2_1_TDATA = S_AXIS_B_2_tdata[31:0];
  assign S_AXIS_B_2_1_TVALID = S_AXIS_B_2_tvalid;
  assign S_AXIS_B_2_tready = S_AXIS_B_2_1_TREADY;
  assign aclk_0_1 = aclk_0;
  assign floating_point_2_M_AXIS_RESULT_TREADY = M_AXIS_RESULT_0_tready;
  greyscale_algorithm_floating_point_0_0 floating_point_0
       (.aclk(aclk_0_1),
        .m_axis_result_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_0_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(S_AXIS_A_0_1_TDATA),
        .s_axis_a_tready(S_AXIS_A_0_1_TREADY),
        .s_axis_a_tvalid(S_AXIS_A_0_1_TVALID),
        .s_axis_b_tdata(S_AXIS_B_0_1_TDATA),
        .s_axis_b_tready(S_AXIS_B_0_1_TREADY),
        .s_axis_b_tvalid(S_AXIS_B_0_1_TVALID));
  greyscale_algorithm_floating_point_1_0 floating_point_1
       (.aclk(aclk_0_1),
        .m_axis_result_tdata(floating_point_1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(S_AXIS_A_1_1_TDATA),
        .s_axis_a_tready(S_AXIS_A_1_1_TREADY),
        .s_axis_a_tvalid(S_AXIS_A_1_1_TVALID),
        .s_axis_b_tdata(S_AXIS_B_1_1_TDATA),
        .s_axis_b_tready(S_AXIS_B_1_1_TREADY),
        .s_axis_b_tvalid(S_AXIS_B_1_1_TVALID),
        .s_axis_c_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .s_axis_c_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .s_axis_c_tvalid(floating_point_0_M_AXIS_RESULT_TVALID));
  greyscale_algorithm_floating_point_2_0 floating_point_2
       (.aclk(aclk_0_1),
        .m_axis_result_tdata(floating_point_2_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_2_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_2_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(S_AXIS_A_2_1_TDATA),
        .s_axis_a_tready(S_AXIS_A_2_1_TREADY),
        .s_axis_a_tvalid(S_AXIS_A_2_1_TVALID),
        .s_axis_b_tdata(S_AXIS_B_2_1_TDATA),
        .s_axis_b_tready(S_AXIS_B_2_1_TREADY),
        .s_axis_b_tvalid(S_AXIS_B_2_1_TVALID),
        .s_axis_c_tdata(floating_point_1_M_AXIS_RESULT_TDATA),
        .s_axis_c_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .s_axis_c_tvalid(floating_point_1_M_AXIS_RESULT_TVALID));
endmodule
