//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Dec 17 20:37:07 2020
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target greyscale_algorithm.bd
//Design      : greyscale_algorithm
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "greyscale_algorithm,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=greyscale_algorithm,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "greyscale_algorithm.hwdef" *) 
module greyscale_algorithm
   (blue_0,
    byte_convert_done_0,
    clk_0,
    green_0,
    m_axis_result_tdata_0,
    m_axis_result_tready_0,
    red_0);
  input [7:0]blue_0;
  input byte_convert_done_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN greyscale_algorithm_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input [7:0]green_0;
  output [31:0]m_axis_result_tdata_0;
  input m_axis_result_tready_0;
  input [7:0]red_0;

  wire [7:0]blue_0_1;
  wire byte_convert_done_0_1;
  wire clk_0_1;
  wire [31:0]floating_point_0_M_AXIS_RESULT_TDATA;
  wire floating_point_0_M_AXIS_RESULT_TREADY;
  wire floating_point_0_M_AXIS_RESULT_TVALID;
  wire floating_point_0_s_axis_a_tready;
  wire floating_point_0_s_axis_b_tready;
  wire [31:0]floating_point_1_M_AXIS_RESULT_TDATA;
  wire floating_point_1_M_AXIS_RESULT_TREADY;
  wire floating_point_1_M_AXIS_RESULT_TVALID;
  wire floating_point_1_s_axis_a_tready;
  wire floating_point_1_s_axis_b_tready;
  wire [31:0]floating_point_2_m_axis_result_tdata;
  wire floating_point_2_m_axis_result_tvalid;
  wire floating_point_2_s_axis_a_tready;
  wire floating_point_2_s_axis_b_tready;
  wire [7:0]green_0_1;
  wire [31:0]greyscale_input_0_A0_red;
  wire greyscale_input_0_A0_valid;
  wire [31:0]greyscale_input_0_A1_green;
  wire greyscale_input_0_A1_valid;
  wire [31:0]greyscale_input_0_A2_blue;
  wire greyscale_input_0_A2_valid;
  wire [31:0]greyscale_input_0_B0_multiply;
  wire greyscale_input_0_B0_valid;
  wire [31:0]greyscale_input_0_B1_multiply;
  wire greyscale_input_0_B1_valid;
  wire [31:0]greyscale_input_0_B2_multiply;
  wire greyscale_input_0_B2_valid;
  wire m_axis_result_tready_0_1;
  wire [7:0]red_0_1;

  assign blue_0_1 = blue_0[7:0];
  assign byte_convert_done_0_1 = byte_convert_done_0;
  assign clk_0_1 = clk_0;
  assign green_0_1 = green_0[7:0];
  assign m_axis_result_tdata_0[31:0] = floating_point_2_m_axis_result_tdata;
  assign m_axis_result_tready_0_1 = m_axis_result_tready_0;
  assign red_0_1 = red_0[7:0];
  greyscale_algorithm_floating_point_0_0 floating_point_0
       (.aclk(clk_0_1),
        .m_axis_result_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_0_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(greyscale_input_0_A0_red),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready),
        .s_axis_a_tvalid(greyscale_input_0_A0_valid),
        .s_axis_b_tdata(greyscale_input_0_B0_multiply),
        .s_axis_b_tready(floating_point_0_s_axis_b_tready),
        .s_axis_b_tvalid(greyscale_input_0_B0_valid));
  greyscale_algorithm_floating_point_1_0 floating_point_1
       (.aclk(clk_0_1),
        .m_axis_result_tdata(floating_point_1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(greyscale_input_0_A1_green),
        .s_axis_a_tready(floating_point_1_s_axis_a_tready),
        .s_axis_a_tvalid(greyscale_input_0_A1_valid),
        .s_axis_b_tdata(greyscale_input_0_B1_multiply),
        .s_axis_b_tready(floating_point_1_s_axis_b_tready),
        .s_axis_b_tvalid(greyscale_input_0_B1_valid),
        .s_axis_c_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .s_axis_c_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .s_axis_c_tvalid(floating_point_0_M_AXIS_RESULT_TVALID));
  greyscale_algorithm_floating_point_2_0 floating_point_2
       (.aclk(clk_0_1),
        .m_axis_result_tdata(floating_point_2_m_axis_result_tdata),
        .m_axis_result_tready(m_axis_result_tready_0_1),
        .m_axis_result_tvalid(floating_point_2_m_axis_result_tvalid),
        .s_axis_a_tdata(greyscale_input_0_A2_blue),
        .s_axis_a_tready(floating_point_2_s_axis_a_tready),
        .s_axis_a_tvalid(greyscale_input_0_A2_valid),
        .s_axis_b_tdata(greyscale_input_0_B2_multiply),
        .s_axis_b_tready(floating_point_2_s_axis_b_tready),
        .s_axis_b_tvalid(greyscale_input_0_B2_valid),
        .s_axis_c_tdata(floating_point_1_M_AXIS_RESULT_TDATA),
        .s_axis_c_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .s_axis_c_tvalid(floating_point_1_M_AXIS_RESULT_TVALID),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tvalid(1'b0));
  greyscale_algorithm_greyscale_input_0_0 greyscale_input_0
       (.A0_ready(floating_point_0_s_axis_a_tready),
        .A0_red(greyscale_input_0_A0_red),
        .A0_valid(greyscale_input_0_A0_valid),
        .A1_green(greyscale_input_0_A1_green),
        .A1_ready(floating_point_1_s_axis_a_tready),
        .A1_valid(greyscale_input_0_A1_valid),
        .A2_blue(greyscale_input_0_A2_blue),
        .A2_ready(floating_point_2_s_axis_a_tready),
        .A2_valid(greyscale_input_0_A2_valid),
        .B0_multiply(greyscale_input_0_B0_multiply),
        .B0_ready(floating_point_0_s_axis_b_tready),
        .B0_valid(greyscale_input_0_B0_valid),
        .B1_multiply(greyscale_input_0_B1_multiply),
        .B1_ready(floating_point_1_s_axis_b_tready),
        .B1_valid(greyscale_input_0_B1_valid),
        .B2_multiply(greyscale_input_0_B2_multiply),
        .B2_ready(floating_point_2_s_axis_b_tready),
        .B2_valid(greyscale_input_0_B2_valid),
        .blue(blue_0_1),
        .byte_convert_done(byte_convert_done_0_1),
        .clk(clk_0_1),
        .green(green_0_1),
        .m_axis_result_tvalid_0(floating_point_2_m_axis_result_tvalid),
        .red(red_0_1));
endmodule
