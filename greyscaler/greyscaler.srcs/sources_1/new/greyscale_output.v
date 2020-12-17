`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 11:24:28 AM
// Design Name: 
// Module Name: greyscale_output
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


module greyscale_output(
input clk,
input [31:0] M_AXIS_RESULT_0_tdata,
input M_AXIS_RESULT_0_tvalid,
output reg M_AXIS_RESULT_0_tready,
output reg [7:0] greyscale_pixel,
output reg [5:0] write_address,
output reg write_enable
    );

reg [1:0] fsm_state;
reg [3:0] pixel_count;

localparam s0_idle = 0;
localparam s1_write = 1;

initial begin
    fsm_state = 0;
    pixel_count = 0;
    M_AXIS_RESULT_0_tready = 1;
   
end

always@(posedge clk) begin
    
    case(fsm_state)
    
    s0_idle: begin
        fsm_state <= (M_AXIS_RESULT_0_tvalid)? s1_write : s0_idle;
    end
    
    s1_write: begin
        
        if(M_AXIS_RESULT_0_tdata[31] == 0) begin
            greyscale_pixel <= (2**M_AXIS_RESULT_0_tdata[30:23])*M_AXIS_RESULT_0_tdata[22:0];//value of IEEE-754 = sign * 2^(exponent) * mantissa
        end
        else begin
            greyscale_pixel <= -1*(2**M_AXIS_RESULT_0_tdata[30:23])*M_AXIS_RESULT_0_tdata[22:0];//value of IEEE-754 = sign * 2^(exponent) * mantissa
        end
        write_enable <= 1; //memory will be 8 bits wide, 8 bytes deep
        
        write_address <= (pixel_count * 8);//store in memory address 0, then 8, 16, etc up to 56
        pixel_count <= (pixel_count == 8) ? 0 : (pixel_count + 1);//start overwriting memory after 8 pixels have been stored
    end
    endcase

end    
endmodule
