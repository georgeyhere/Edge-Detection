`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 11:51:16 AM
// Design Name: 
// Module Name: greyscale_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module greyscale_top(
input clk,
input start,
input [7:0] red,
input [7:0] green,
input [7:0] blue,
output write_enable,
output [5:0]  write_address,
output [7:0] greyscale_pixel
    );

wire A0_ready, A1_ready, A2_ready, B0_ready, B1_ready, B2_ready, M_AXIS_RESULT_0_tready;
wire A0_valid, A1_valid, A2_valid, B0_valid, B1_valid, B2_valid, M_AXIS_RESULT_0_tvalid;
wire [31:0] A0_red, A1_green, A2_blue, B0_multiply, B1_multiply, B2_multiply, M_AXIS_RESULT_0_tdata;

greyscale_input MODULE_INPUT(
.clk(clk),
.red(red),
.green(green),
.blue(blue),
.start(start),
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

greyscale_algorithm MODULE_COMPUTE(
.M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
.M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
.M_AXIS_RESULT_0_tvalid(M_AXIS_RESULT_0_tvalid),
.S_AXIS_A_0_tdata(A0_red),
.S_AXIS_A_0_tready(A0_ready),
.S_AXIS_A_0_tvalid(A0_valid),
.S_AXIS_A_1_tdata(A1_green),
.S_AXIS_A_1_tready(A1_ready),
.S_AXIS_A_1_tvalid(A1_valid),
.S_AXIS_A_2_tdata(A2_blue),
.S_AXIS_A_2_tready(A2_ready),
.S_AXIS_A_2_tvalid(A2_valid),
.S_AXIS_B_0_tdata(B0_multiply),
.S_AXIS_B_0_tready(B0_ready),
.S_AXIS_B_0_tvalid(B0_valid),
.S_AXIS_B_1_tdata(B1_multiply),
.S_AXIS_B_1_tready(B1_ready),
.S_AXIS_B_1_tvalid(B1_valid),
.S_AXIS_B_2_tdata(B2_multiply),
.S_AXIS_B_2_tready(B2_ready),
.S_AXIS_B_2_tvalid(B2_valid),
.aclk_0(clk)
);    

greyscale_output MODULE_OUTPUT(
.clk(clk),
.M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
.M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
.M_AXIS_RESULT_0_tvalid(M_AXIS_RESULT_0_tvalid),
.greyscale_pixel(greyscale_pixel),
.write_address(write_address),
.write_enable(write_enable)
);
    
    
endmodule
