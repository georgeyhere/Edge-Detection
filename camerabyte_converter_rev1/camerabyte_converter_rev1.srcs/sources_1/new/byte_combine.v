`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//logic runs at 96 Mhz, camera output at 24Mhz
//Camera outputs one new byte every four clock cycles 
//This module does not read from the camera, it gets its data from the FIFO the camera feeds into

//1) camera spits out a new byte
//2)


//////////////////////////////////////////////////////////////////////////////////


module byte_combine(
input clk,
input reset_n, //asynchronous reset (active low)

input fifo_empty, //FIFO buffer 
input [7:0] read_data, //camera pixel data (2 bytes = 1 pixel, RGB555)
input camera_data_valid, //camera data valid signal
input byte_convert_ready, //output (RGB888 converter) ready signal

output reg read_enable,
output reg byte_combine_valid, //note this module has no output ready signal
output reg [15:0] pixel_RGB_555
    );
    
reg [2:0] fsm_state;
localparam s0_idle = 0;
localparam s1_read = 1;
localparam s2_assign1 = 2;
localparam s3_assign2 = 3;


initial begin
    fsm_state <= s0_idle;
    pixel_RGB_555 <= 0;
end

always@(posedge clk, negedge reset_n) begin
    
    if(reset_n == 1'b0) begin
        fsm_state <= s0_idle; //resets
        pixel_RGB_555 <= 0;
        read_enable <= 0;
    end
    
    case(fsm_state) 
    
    s0_idle: begin //transition when camera releases a new byte
        pixel_RGB_555 <= 0; 
        read_enable <= 0;
        fsm_state <= ((camera_data_valid == 1)&(fifo_empty == 0))? s1_read : s0_idle; //triggered if camera data is valid and fifo is not empty
    end
    
    s1_read: begin
         if(fifo_empty == 1) begin //don't read if the FIFO is empty
            read_enable <= 0;
            fsm_state <= s1_read;   
         end
         else begin
            read_enable <= 1;
            fsm_state <= s2_assign1;
         end
    end
    
    endcase

end

    
    
    
endmodule
