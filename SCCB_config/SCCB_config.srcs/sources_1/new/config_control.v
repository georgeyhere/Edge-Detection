`timescale 1ns/1ps

module config_control(

input clk,
input wire start,
input wire SCCB_interface_ready,
input wire [15:0]rom_data,


output reg [7:0]rom_counter,
output reg done,
output reg [7:0]SCCB_address,
output reg [7:0]SCCB_data, 
output reg SCCB_start
);

localparam clock_frequency = 25000000; //experiment to see if this would make it easier to get timings right
localparam ms = (clock_frequency/100); //should be easier, don't have to convert clock counts to ms by hand


localparam s0_timer = 0; //FSM state parameters
localparam s1_idle = 1;
localparam s2_start_1 = 2;
localparam s3_start_2 = 3;
localparam s4_start_3 = 4;
localparam s5_finish = 5;

reg [2:0] FSM_state = s1_idle;

reg [2:0] FSM_return_state;
reg [31:0] local_timer = 0;

initial begin
    rom_counter <= 0; //reset counters
    SCCB_start <= 0; //don't start transmitting
    done = 1; //done state = idle state
end


always@(posedge clk) begin

    case(FSM_state)
    
        s0_timer: begin //timer 
            FSM_state <= (local_timer == 0)? FSM_return_state:s0_timer;
            local_timer <= (local_timer == 0)? local_timer:(local_timer-1);
        end
    
        s1_idle: begin
            FSM_state <= (start == 1)? s2_start_1:s1_idle;    
            done <= (start == 1)? 0:done; 
            rom_counter <= 0; //ensure rom counter is reset
        end
        
        s2_start_1: begin //first step of transmission
            SCCB_address <= rom_data[15:8]; //set register address data
            SCCB_data <= rom_data[7:0]; //set register data
            SCCB_start <= 1; //tell SCCB interface to start on next clock
            FSM_state <= s0_timer; 
            local_timer <= 1; //set timer to make sure SCCB_start is held for the next clock
            FSM_return_state <= s3_start_2; 
        end
        
      
        s3_start_2: begin
            SCCB_start <= 0; //bring SCCB_start back low, we don't want this high when it shouldn't be
            FSM_state <= s4_start_3;
        end
        
        s4_start_3: begin
            FSM_state <= (SCCB_interface_ready == 1)? s0_timer:s4_start_3; //will stay here until SCCB interface is done transmitting both bytes
            rom_counter <= (SCCB_interface_ready == 1)? (rom_counter+1):rom_counter; //if done, tell ROM to update on next clock
            local_timer <= 1; //set timer to one clock period to allow ROM time to update
            FSM_return_state <= s5_finish;
            
        end
        
        s5_finish: begin
            if(rom_data == 16'hFF_FF)begin //check for stop signal
                FSM_state <= s1_idle;
                done <= 1;
            end
            else //normal operation
                FSM_state <= s2_start_1; //get ready to send to SCCB interface 
        end  
    endcase
              
end

endmodule


