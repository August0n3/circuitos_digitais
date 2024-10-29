module display7 (
    input logic [0:4] a,
    output logic [0:6] x
    );

    always @(a) begin
        case (a)
            4'b0000: x = 7'b0000001;
            4'b0001: x = 7'b0110000;
            4'b0010: x = 7'b0010011;
            4'b0011: x = 7'b0000110;
            4'b0100: x = 7'b1001100;
            4'b0101: x = 7'b0100100;
            4'b0110: x = 7'b0100000;
            4'b0111: x = 7'b0001111;
            4'b1000: x = 7'b0000000;
            4'b1001: x = 7'b0001100;
            4'b1010: x = 7'b0001000;
            4'b1011: x = 7'b1100000;
            4'b1100: x = 7'b0110001;
            4'b1101: x = 7'b1000010;
            4'b1110: x = 7'b0110000;
            4'b1111: x = 7'b0111000;
        endcase
    end

endmodule