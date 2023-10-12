`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 11:05:13 PM
// Design Name: 
// Module Name: multi3
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


module multi3(
    input logic [2:0] A, B,
    output logic [5:0] M
    );
    
    // P0
    assign M[0] = A[0] & B[0];
    
    // P1
    logic ha0_cout;
    
    half_adder ha0(     (B[0] & A[1]),  (B[1] & A[0]), 
                        ha0_cout,       M[1]);
    
    // P2
    logic ha1_cout, ha1_sum, fa0_cout;
    
    half_adder ha1(     (B[1] & A[1]),  (B[0] & A[2]),
                        ha1_cout,       ha1_sum);
                        
    fulladder fa0(      (B[2] & A[0]),  ha1_sum,        ha0_cout,
                        fa0_cout,       M[2]);
    
    // P3
    logic fa1_cout, fa1_sum, ha2_cout;
            
    fulladder fa1(      (B[1] & A[2]),  (B[2] & A[1]),  ha1_cout,
                        fa1_cout,       fa1_sum);
                        
    half_adder ha2(     fa1_sum,        fa0_cout,
                        ha2_cout,       M[3]);
                        
    // P4 & P5
    fulladder fa2(      (B[2] & A[2]),  ha2_cout,   fa1_cout,
                        M[5],           M[4]);
    
endmodule
