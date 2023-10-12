`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:54:24 PM
// Design Name: 
// Module Name: ALU4
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


module ALU4(
    input logic [3:0] A, B, 
    input logic [1:0] O,
    output logic [7:0] Y,
    output logic V
    );
    
    logic [7:0]result_add, result_sub, result_mult, result_div;
    
    adder4 add(A, B, 1'b0, result_add[3:0], result_add[4]);
    subtract4 sub(A, B, result_sub);
    multiply4 mult(A, B, result_mult);
    divide4 div(A, B, result_div);

    always_comb
        case (O)
            // Add
            2'b00:  begin
                        V = result_add[4];
                        Y = {4'b0, result_add[3:0]};
                    end
            // Subtract 
            2'b01:  begin
                        V = result_sub[4];
                        Y = {4'b0, result_sub[3:0]};
                    end
            // Multiply
            2'b10:  begin
                        V = 1'b0;
                        Y = result_mult;
                    end      
            // Divide
            2'b11:  begin
                        V = (B==4'b0) ? 1 : 0;
                        Y = result_div;
                    end
        endcase
    
endmodule
