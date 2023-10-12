`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 03:42:31 PM
// Design Name: 
// Module Name: adder4_tb
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


module adder4(
    input logic [3:0] A, B,
    input logic Ci,
    output logic [3:0] S,
    output logic Co
    );
    
    logic [2:0]C;
    
    assign S[0] = A[0] ^ B[0] ^ Ci;
    assign C[0] = ( A[0] * Ci) + (B[0] * Ci) + ( A[0] * B[0]);
    
    assign S[1] = A[1] ^ B[1] ^ C[0];
    assign C[1] = ( A[1] * C[0]) + (B[1] * C[0]) + ( A[1] * B[1]);
    
    assign S[2] = A[2] ^ B[2] ^ C[1];
    assign C[2] = ( A[2] * C[1]) + (B[2] * C[1]) + ( A[2] * B[2]);
    
    assign S[3] = A[3] ^ B[3] ^ C[2];
    assign Co = ( A[3] * C[2]) + (B[3] * C[2]) + ( A[3] * B[3]);
    
endmodule
