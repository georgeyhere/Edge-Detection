`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 12:29:11 PM
// Design Name: 
// Module Name: greyscale_top_tb
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


module greyscale_top_tb();
reg clk = 0;
reg start = 1;
reg [7:0] red = 00011100;
reg [7:0] green = 00000111;
reg [7:0] blue = 00011100;
wire write_enable;
wire [5:0] write_address;
wire [7:0] greyscale_pixel;

greyscale_top UUT(
.clk(clk),
.start(start),
.red(red),
.green(green),
.blue(blue),
.write_enable(write_enable),
.write_address(write_address),
.greyscale_pixel(greyscale_pixel)
);
    
endmodule
