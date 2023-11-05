`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 11:33:26 PM
// Design Name: 
// Module Name: sequential_circuit
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


module sequential_circuit(
    input logic x, r, clk,
    output logic y, 
    output logic [1:0] s_out
    );
    
  /*
    logic Q_A = 0, Q_B = 0, next_A, next_B;
    
    // Next State Logic
    assign next_A = ~Q_A | x;
    assign next_B = Q_A;

    // Update State A
    always_ff @(posedge clk, posedge r)
        begin
        if(r)
            Q_A<=1'b0;
        else
            Q_A<=next_A;
    end
    
    // Update State B
    always_ff @(posedge clk, posedge r)
        begin
        if(r)
            Q_B<=1'b0;
        else
            Q_B<=next_B;
    end
    */
    
    typedef enum logic [1:0] { S0, S1, S2, S3 } statetype;
    statetype currentState, nextState;
    
    // state register
    always_ff @ (posedge clk, posedge r)
        if (r) currentState<=S0;
        else currentState<=nextState;
        
    // next state
    always_comb
        case(currentState)
            S0:     nextState=S2;
            S1:     nextState=S2;  
            S2:     nextState = (x == 1) ? S3 : S1;
            S3:     nextState = (x == 1) ? S3 : S1;
        endcase
        
    // Output Logic
    assign y = (currentState == S1) | (currentState == S2);
    
    // DEBUG
    assign s_out = currentState;
    
endmodule
