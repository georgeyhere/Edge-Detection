`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 02:10:30 PM
// Design Name: 
// Module Name: input_tb
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


module input_tb();
reg clk = 0;
reg [7:0] red = 00011100;
reg [7:0] green = 00000111;
reg [7:0] blue = 00011100;
reg start = 1;

reg ready = 0;
wire A0_valid, B0_valid, A1_valid, B1_valid, A2_valid, B2_valid;

wire [31:0] A0_red, B0_multiply, A1_green, B1_multiply, A2_blue, B2_multiply;

greyscale_input UUT(
.clk(clk),
.red(red),
.green(green),
.blue(blue),
.start(start),
.A0_ready(ready),
.B0_ready(ready),
.A1_ready(ready),
.B1_ready(ready),
.A2_ready(ready),
.B2_ready(ready),
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

always begin
#1 clk = ~clk;
end

    
endmodule
