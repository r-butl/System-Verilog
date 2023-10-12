`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:54:24 PM
// Design Name: 
// Module Name: divide4
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


module divide4(
    input logic [3:0] A, B,
    output logic [7:0] Z
    );
    
    assign Z = (B == 4'b0) ? 8'b0 : {A % B, A / B};

    
endmodule
