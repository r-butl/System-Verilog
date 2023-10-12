`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:48:38 PM
// Design Name: 
// Module Name: adder_4_bit
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

module adder_4_bit( input logic [3:0] A, B,
input logic Cin,
output logic [3:0] S,
output logic Co);

logic [2:0]C;

full_adder fa0( A[0], B[0], Cin, S[0], C[0]);

full_adder fa1( A[1], B[1], C[0], S[1], C[1]);

full_adder fa2( A[2], B[2], C[1], S[2], C[2]);

full_adder fa3( A[3], B[3], C[2], S[3], Co);

endmodule;
