//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Dec 17 20:37:07 2020
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target greyscale_algorithm_wrapper.bd
//Design      : greyscale_algorithm_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module greyscale_algorithm_wrapper
   (blue_0,
    byte_convert_done_0,
    clk_0,
    green_0,
    m_axis_result_tdata_0,
    m_axis_result_tready_0,
    red_0);
  input [7:0]blue_0;
  input byte_convert_done_0;
  input clk_0;
  input [7:0]green_0;
  output [31:0]m_axis_result_tdata_0;
  input m_axis_result_tready_0;
  input [7:0]red_0;

  wire [7:0]blue_0;
  wire byte_convert_done_0;
  wire clk_0;
  wire [7:0]green_0;
  wire [31:0]m_axis_result_tdata_0;
  wire m_axis_result_tready_0;
  wire [7:0]red_0;

  greyscale_algorithm greyscale_algorithm_i
       (.blue_0(blue_0),
        .byte_convert_done_0(byte_convert_done_0),
        .clk_0(clk_0),
        .green_0(green_0),
        .m_axis_result_tdata_0(m_axis_result_tdata_0),
        .m_axis_result_tready_0(m_axis_result_tready_0),
        .red_0(red_0));
endmodule
