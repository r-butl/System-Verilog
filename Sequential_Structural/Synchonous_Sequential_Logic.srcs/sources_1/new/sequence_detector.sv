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
        input logic in, clk, reset,
        output logic o
    );
    

	logic 	Q0, 	Q0_not,	D0,
            Q1,	    Q1_not,	D1;

	d_flipflop	dff0 	(D0, clk, reset, Q0,	Q0_not);
	d_flipflop	dff1	(D1, clk, reset, Q1,	Q1_not);

	assign D0 = (in * Q0_not * Q1_not) | (in * Q1);
	assign D1 = (in * Q0 * Q1_not) | (in * Q1);

	assign o = Q1 * Q0;

    
endmodule
