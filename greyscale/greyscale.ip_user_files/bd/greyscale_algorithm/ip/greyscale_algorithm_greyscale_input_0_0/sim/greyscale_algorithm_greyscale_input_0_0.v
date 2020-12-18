// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:greyscale_input:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module greyscale_algorithm_greyscale_input_0_0 (
  clk,
  red,
  green,
  blue,
  byte_convert_done,
  m_axis_result_tvalid_0,
  A0_ready,
  B0_ready,
  A1_ready,
  B1_ready,
  A2_ready,
  B2_ready,
  A0_valid,
  B0_valid,
  A1_valid,
  B1_valid,
  A2_valid,
  B2_valid,
  A0_red,
  B0_multiply,
  A1_green,
  B1_multiply,
  A2_blue,
  B2_multiply
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN greyscale_algorithm_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [7 : 0] red;
input wire [7 : 0] green;
input wire [7 : 0] blue;
input wire byte_convert_done;
input wire m_axis_result_tvalid_0;
input wire A0_ready;
input wire B0_ready;
input wire A1_ready;
input wire B1_ready;
input wire A2_ready;
input wire B2_ready;
output wire A0_valid;
output wire B0_valid;
output wire A1_valid;
output wire B1_valid;
output wire A2_valid;
output wire B2_valid;
output wire [31 : 0] A0_red;
output wire [31 : 0] B0_multiply;
output wire [31 : 0] A1_green;
output wire [31 : 0] B1_multiply;
output wire [31 : 0] A2_blue;
output wire [31 : 0] B2_multiply;

  greyscale_input inst (
    .clk(clk),
    .red(red),
    .green(green),
    .blue(blue),
    .byte_convert_done(byte_convert_done),
    .m_axis_result_tvalid_0(m_axis_result_tvalid_0),
    .A0_ready(A0_ready),
    .B0_ready(B0_ready),
    .A1_ready(A1_ready),
    .B1_ready(B1_ready),
    .A2_ready(A2_ready),
    .B2_ready(B2_ready),
    .A0_valid(A0_valid),
    .B0_valid(B0_valid),
    .A1_valid(A1_valid),
    .B1_valid(B1_valid),
    .A2_valid(A2_valid),
    .B2_valid(B2_valid),
    .A0_red(A0_red),
    .B0_multiply(B0_multiply),
    .A1_green(A1_green),
    .B1_multiply(B1_multiply),
    .A2_blue(A2_blue),
    .B2_multiply(B2_multiply)
  );
endmodule
