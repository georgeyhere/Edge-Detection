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
wire [31:0] M_AXIS_RESULT_0_tdata;
reg M_AXIS_RESULT_0_tready = 1;
wire M_AXIS_RESULT_0_tvalid;

greyscale_top UUT(
.clk(clk),
.byte_convert_done(byte_convert_done),
.red(red),
.green(green),
.blue(blue),
.M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
.M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
.M_AXIS_RESULT_0_tvalid(M_AXIS_RESULT_0_tvalid)
);

always begin
#1 clk = ~clk;
#5 byte_convert_done = ~byte_convert_done;
end
    
endmodule
