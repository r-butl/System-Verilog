`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 07:22:45 PM
// Design Name: 
// Module Name: d_flipflop
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


module sequence_detector(
        input logic d, clk, reset,
        output logic o
    );
    
   typedef enum logic [1:0] {S0, S1, S2, S3} statetype;
   statetype state = S0, nextstate;
       
   // State Register
   always_ff @ (posedge clk or posedge reset)    // Edge triggered
        if(reset)       state <= S0;
        else            state <= nextstate;
   
   // Next State Logic
   always_comb                  // Function of input d and the current state
    case(state)
        S0:         nextstate = (d == 1'b1) ? S1 : S0;
        S1:         nextstate = (d == 1'b1) ? S2 : S0;
        S2:         nextstate = (d == 1'b1) ? S3 : S0;
        S3:         nextstate = (d == 1'b1) ? S3 : S0;
     endcase
        
   // Output logic
     assign o = (state == S3) ? 1'b1 : 1'b0;
    
endmodule
