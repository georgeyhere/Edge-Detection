`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 08:10:13 PM
// Design Name: 
// Module Name: greyscale_input
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


module greyscale_input( 
//input is converted RGB888. provides both data and mulitplier values to greyscale_algorithm
input clk,

input [7:0] red, //input is 8-bit RGB
input [7:0] green,
input [7:0] blue,

input byte_convert_done,
input m_axis_result_tvalid_0,

input wire A0_ready, //AXI stream slave ready inputs
input wire B0_ready,
input wire A1_ready,
input wire B1_ready,
input wire A2_ready,
input wire B2_ready,

output reg A0_valid, //AXI stream t_valid 
output reg B0_valid,
output reg A1_valid,
output reg B1_valid,
output reg A2_valid,
output reg B2_valid,

output reg [31:0] A0_red, //AXI stream t_data 
output reg [31:0] B0_multiply,
output reg [31:0] A1_green,
output reg [31:0] B1_multiply,
output reg [31:0] A2_blue,
output reg [31:0] B2_multiply
    );
    
reg [1:0] fsm_state;

localparam s0_idle = 0;
localparam s1_assign = 1;

initial begin
    B0_multiply <= 32'b00111110100110011001100110011010; //red multiplier = 0.3, IEE 754 representation
    B1_multiply <= 32'b00111111000110011001100110011010; //green multiplier = 0.6, IEE 754 representation
    B2_multiply <= 32'b00111101110011001100110011001101; //blue multiplier = 0.1, IEE 754 representation
    fsm_state <= 0;
    
    A0_valid <= 0; //AXI protocol: deassert t_valid
    A1_valid <= 0;
    A2_valid <= 0;  
    B0_valid <= 0;
    B1_valid <= 0;
    B2_valid <= 0;
end    
    

always@(posedge clk) begin
    
    case(fsm_state) 
        
        s0_idle: begin 
            A0_valid <= 0; //AXI protocol: deassert t_valid
            A1_valid <= 0;
            A2_valid <= 0;
            B0_valid <= 0;
            B1_valid <= 0;
            B2_valid <= 0;
            
            A0_red <= 0; //reset outputs
            A1_green <= 0;
            A2_blue <= 0;
            
            fsm_state <= (byte_convert_done);//if byte_convert has a new byte, assign outputs
        end
        
        s1_assign: begin
            A0_red [7:0] = red; //assign outputs
            A1_green [7:0] = green;
            A2_blue [7:0] = blue;
            
            A0_valid <= (A0_ready) ? 1:0; //AXI protocol: assert t_valid
            A1_valid <= (A1_ready) ? 1:0;
            A2_valid <= (A2_ready) ? 1:0;
    
            B0_valid <= (B0_ready) ? 1:0;
            B1_valid <= (B1_ready) ? 1:0;
            B2_valid <= (B2_ready) ? 1:0;
            
            fsm_state <= (m_axis_result_tvalid_0) ? s0_idle : s1_assign; //return to idle when slave produces a valid output
        end
        
    endcase  
end 

     
endmodule
