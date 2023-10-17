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


module d_flipflop(
    input logic     clk, d, rst,
    output logic    q, q_not
    );
    
    
    logic q_pass;
    
    always_ff @(posedge  clk or posedge rst) 
        begin
            if (rst == 1'b1)    q<=1'b0;
            else                q<=d;   
        end
        
    assign q_pass = ~q;
    assign q_not = q_pass;

        
endmodule
