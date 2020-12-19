`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2020 04:29:29 PM
// Design Name: 
// Module Name: greyscale_tb
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


module greyscale_tb();

reg clk = 0;
reg reset_n = 1;

//0-256
reg [7:0] red = 75; 
reg [7:0] green = 50; 
reg [7:0] blue = 100; 

reg byte_convert_valid = 1;

reg M_AXIS_RESULT_0_tready = 1;
wire [31:0] M_AXIS_RESULT_0_tdata;
wire M_AXIS_RESULT_0_tvalid;

greyscale_top UUT (
.clk(clk),
.reset_n(reset_n),
.red(red),
.green(green),
.blue(blue),
.byte_convert_valid(byte_convert_valid),
.M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
.M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
.M_AXIS_RESULT_0_tvalid(M_AXIS_RESULT_0_tvalid)
);

always begin

#1 clk = ~clk;

end
initial begin
#40 byte_convert_valid = 0;
#40 byte_convert_valid = 1;
end

    
endmodule
