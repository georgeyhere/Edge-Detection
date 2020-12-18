`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 08:46:49 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();

reg clk = 0;
reg byte_convert_done = 1;
reg [7:0] red = 8'b00011100;
reg [7:0] blue = 8'b00000111;
reg [7:0] green = 8'b00011100;
reg m_axis_result_tready_0 = 1;
wire [31:0] m_axis_result_tdata_0;
wire m_axis_result_tvalid;

greyscale_top UUT(
.clk(clk),
.byte_convert_done(byte_convert_done),
.red(red),
.green(green),
.blue(blue),
.m_axis_result_tready_0(m_axis_result_tready_0),
.m_axis_result_tdata_0(m_axis_result_tdata_0),
.m_axis_result_tvalid(m_axis_result_tvalid)
);

always begin
#1 clk = ~clk;
end
    
endmodule
