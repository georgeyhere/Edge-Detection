`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 03:03:40 PM
// Design Name: 
// Module Name: camera_interface_input
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


module camera_interface_input(
input clk, //96 MHz clock
input reset_n, //asynchronous active low reset 
input pclk, //camera pixel clock 
input [7:0] dout_camera, //camera data out
input href, //camera output
input FIFO_WRITE_0_full, //FIFO statuses
input wr_rst_busy_0,
input wr_ack_0,

output reg FIFO_WRITE_0_wr_en, //FIFO write 
output reg [7:0] FIFO_WRITE_0_wr_data,
output reg memory_initialize_done
    );

reg [1:0] fsm_state;
localparam s0_initial = 0;
localparam s1_default = 1;

initial begin
    FIFO_WRITE_0_wr_en <= 0; //resets
    FIFO_WRITE_0_wr_data <= 0;
    fsm_state <= s0_initial;
end    

always@(posedge clk, negedge reset_n) begin
    if(reset_n == 1'b0) begin //asynchronous active low reset
        FIFO_WRITE_0_wr_en <= 0;
        FIFO_WRITE_0_wr_data <= 0;
        fsm_state <= s0_initial;
    end
    else begin
    
    case(fsm_state) 
    
    s0_initial: begin //FIFO needs one word in it to not be empty 
        FIFO_WRITE_0_wr_en <= 1;
        FIFO_WRITE_0_wr_data <= 8'b1;
        memory_initialize_done <= (wr_ack_0 == 1 ) ? 1:0; //this signal will tell the rest of the module not to process
        fsm_state <= (wr_ack_0 == 1) ? s1_default : s0_initial;
    end
    
    
    s1_default: begin
        memory_initialize_done <= 1; //indicates this module is done with initialize sequence
        case(href) //data transmission starts at href = 1
        
        0: begin
            FIFO_WRITE_0_wr_en <= 0; //don't write if camera isn't outputting data
            FIFO_WRITE_0_wr_data <= 0; 
        end
        1: begin
            FIFO_WRITE_0_wr_en <= (wr_rst_busy_0 == 1) ? 0 : 1; //write enable only on when FIFO not busy
            FIFO_WRITE_0_wr_data <= dout_camera; //assign output data
        end
    
        endcase
    end
    
    endcase
    end
end
    
    
endmodule
