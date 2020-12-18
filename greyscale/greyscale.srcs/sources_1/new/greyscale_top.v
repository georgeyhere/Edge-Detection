`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 08:38:51 PM
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
input wire byte_convert_done,
input wire [7:0] red,
input wire [7:0] green,
input wire [7:0] blue,
output wire [31:0] m_axis_result_tdata_0,
output wire m_axis_result_tvalid,
input wire m_axis_result_tready_0
    );
    
greyscale_algorithm UUT(
.clk_0(clk),
.red_0(red),
.green_0(green),
.blue_0(blue),
.byte_convert_done_0(byte_convert_done),
.m_axis_result_tdata_0(m_axis_result_tdata_0),
.m_axis_result_tready_0(m_axis_result_tready_0),
.m_axis_result_tvalid(m_axis_result_tvalid)
);    


    
endmodule
