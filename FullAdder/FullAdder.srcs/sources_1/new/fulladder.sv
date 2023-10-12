`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2023 09:24:57 PM
// Design Name: 
// Module Name: fulladder
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

/*
Sum = Cin xor A xor B
Cout = ACin + BCin + AB
*/

module fulladder(
    input x, y, ci,
    output co, s
    );
    
    assign s = ci ^ x ^ y;
    assign co = ( x * ci ) + ( y * ci ) + ( x * y );
    
endmodule
