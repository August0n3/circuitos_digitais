module multiplexador4p18b(
    input logic [7:0] a,
    input logic [2:0] sel,
    output logic [7:0] y
    );

    always @(sel or a) begin
        case (sel)
            3'b000: y = a[0];
            3'b001: y = a[1];
            3'b010: y = a[2];
            3'b011: y = a[3];
            3'b100: y = a[4];
            3'b101: y = a[5];
            3'b110: y = a[6];
            3'b111: y = a[7];
            default: y = 8'b0;
        endcase
    end

endmodule