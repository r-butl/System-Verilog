`timescale 1ns / 1ps

module mux(input logic [2:0]S,
            input logic [7:0]D,
            output logic y);
            
    assign y = (~S[2] & ~S[1] & ~S[0] & D[0])|
                (~S[2] & ~S[1] & S[0] & D[1])|
                (~S[2] & S[1] & ~S[0] & D[2])|
                (~S[2] & S[1] & S[0] & D[3])|
                (S[2] & ~S[1] & ~S[0] & D[4])|
                (S[2] & ~S[1] & S[0] & D[5])|
                (S[2] & S[1] & ~S[0] & D[6])|
                (S[2] & S[1] & S[0] & D[7]);

endmodule