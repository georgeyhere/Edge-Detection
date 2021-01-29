`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Most timings verified 11/20
//SCCB_D behavior not verified
//End signal behavior not verified
//////////////////////////////////////////////////////////////////////////////////


module config_SCCB
#(
    parameter clock_frequency = 25000000 //25Mhz clock, 40ns period
)
(
input clk,
input reset_n,
input [7:0] SCCB_address,//address of device control register
input [7:0] SCCB_data,//device control register value (one byte)
input SCCB_start,

output reg SCCB_interface_ready,
output reg SCCB_C = 1,
output reg SCCB_D = 1
    );

localparam s0_timer = 0; //FSM state definitions
localparam s1_idle = 1;
localparam s2_start_signal = 2;
localparam s3_load_byte = 3;
localparam s4_send_1 = 4;
localparam s5_send_2 = 5;
localparam s6_send_3 = 6;
localparam s7_send_4 = 7;
localparam s8_end_1 = 8;
localparam s9_end_2 = 9;
localparam s10_end_3 = 10;
localparam s11_end_4 = 11;


localparam camera_address = 8'h42; //address of the camera, sent in phase 1, from datasheet
    
reg [7:0] queue; //the byte that currently is being sent
reg [1:0] byte_count; //counter that stores number of bytes sent in current transmission
reg [7:0] bit_counter; //counts number of bits sent in current transmission phase    
reg [3:0] FSM_state; //FSM state
reg [3:0] FSM_return_state; //stores FSM return state for timer function
reg [31:0] local_timer; //register for timer, stores # of clock counts


initial begin
//both SCCB_C and SCCB_D are initialized to logic 1, and should be held there at idle
    queue <= 0;
    byte_count <= 0;
    bit_counter <= 0;
    FSM_state <= s1_idle;
    FSM_return_state <= s3_load_byte; 
    SCCB_C <= 1; 
    SCCB_D <= 1;
    SCCB_interface_ready <= 1;
    local_timer <= 0;
end


always@(posedge clk, negedge reset_n)

    if(reset_n == 1'b0) begin 
        queue <= 0; //resets
        byte_count <= 0;
        bit_counter <= 0;
        FSM_state <= s1_idle;
        FSM_return_state <= s3_load_byte; 
        SCCB_C <= 1; 
        SCCB_D <= 1;
        SCCB_interface_ready <= 1;
        local_timer <= 0;
    end
    
    else begin
        case(FSM_state)
    
            s0_timer: begin
                FSM_state <= (local_timer == 0) ? FSM_return_state : s0_timer;    
                local_timer <= local_timer - 1;//countdown timer, counts down one per clock 
            end
       
            s1_idle: begin
                FSM_state <= (SCCB_start) ? s0_timer : s1_idle;
                SCCB_interface_ready <= (SCCB_start) ? 0 : SCCB_interface_ready;//toggle ready if start is asserted
                byte_count <= 0;//reset all counters
                bit_counter <= 0;
                SCCB_D <= 0;
                FSM_return_state <= s3_load_byte;
                local_timer <= 15;// t(HD:STA) = 600ns = 15 clock counts 
            end
    
            //s2_start_signal: begin
            //SCCB communication start in two-wire, non-tri-state configuration:
            //SCCB_D transition from high to low while SCCB_C is high
                //SCCB_D <= 0; 
                //FSM_state <= s0_timer;
                //FSM_return_state <= s3_load_byte;
                //local_timer <= 15;// t(HD:STA) = 600ns = 15 clock counts 
            //end
    
            s3_load_byte: begin
            //determine current transmission phase
            //load correct byte into the queue 
            case(byte_count)
                0: begin // no bytes sent yet, first transmission phase
                    queue <= 7'h42;//slave device address
                end
                1: begin// 1 byte has been sent, second transmission phase
                    queue <= SCCB_address;//subaddress
                end
                2: begin//2 bytes sent, third and final phase
                    queue <= SCCB_data;//register data
                end
            endcase
            FSM_state <= s4_send_1; 
            end
    
            s4_send_1: begin
            //in SCCB communication, transactions on SCCB_D can only occur when SCCB_C is brought low
                SCCB_C <= 0; //bring SCCB_C low 
                FSM_state <= s0_timer;
                local_timer <=  5; //t(AA) = 200ns = 5 clock periods 
                FSM_return_state <= s5_send_2;
            end
    
            s5_send_2: begin //now that SCCB_C is low , we can assign data bit to SCCB_D
                SCCB_D <= queue[7]; //transmit the first bit of the data
                bit_counter <= bit_counter + 1;//increment bit counter
                FSM_state <= s0_timer;
                local_timer <= 3; //t(SU:DAT) = 120ns = 3 clock periods
                FSM_return_state <= s6_send_3;
            end
    
            s6_send_3: begin
            //bring SCCB_C high to lock in the data bit
                SCCB_C <= 1;
                FSM_state <= s0_timer;
                local_timer <= 15; //thigh = 600 ns = 15 clock periods
                FSM_return_state <= s7_send_4;
            end
    
            s7_send_4: begin
            //last step of transmission, need to determine what to do next after this
            case(bit_counter)
    
                default: begin //not all bits have been sent
                FSM_state <= s4_send_1; 
                queue <= queue<<1;//advance the queue of bits to be sent
                end
        
                8: begin //all 8 bits (w/ don't care) have been sent, one byte
                FSM_state <= (byte_count == 2)? s8_end_1:s3_load_byte; //have both bytes been sent? if no, load the next one and get ready to send again, if yes, send the end signal
                byte_count <= (byte_count == 2)? byte_count:(byte_count+1); 
                end
            endcase
            end
         
            s8_end_1: begin
                SCCB_C <= 0; //bring SCCB low so we can bring SCCB_D low as well
                FSM_state <= s0_timer;
                FSM_return_state <= s9_end_2;
                local_timer <= 5; //t(AA) = 200ns = 5 clock periods 
            end
    
            s9_end_2: begin
                SCCB_D <= 0;
                FSM_state <= s0_timer;
                FSM_return_state <= s10_end_3;
                local_timer <= 3; //t(SU:DAT) = 120ns = 3 clock periods
            end
    
            s10_end_3: begin
                SCCB_C <= 1;
                FSM_state <= s0_timer;
                FSM_return_state <= s11_end_4;
                local_timer <= 15; //t(SU:STO) = 600ns = 15 clock periods
            end
    
            s11_end_4: begin
                SCCB_D <= 1;//bring SCCB_D back to its idle state of 1
                SCCB_interface_ready <= 1;//ready for next transmission
                FSM_state <= s1_idle;    
            end    
        
        endcase  
    end     
endmodule
