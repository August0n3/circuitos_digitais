module multiplexador4p1(
    input logic [3:0] a,
    input logic [3:0] b,
    input logic [3:0] sel,
    output logic [3:0] y
    );
    logic [3:0] x;
    assign x[0] = a[0] & ~sel[0] | b[0] & sel[0];
    assign x[1] = a[1] & ~sel[1] | b[1] & sel[1];
    assign x[2] = a[2] & ~sel[2] | b[2] & sel[2];
    assign x[3] = a[3] & ~sel[3] | b[3] & sel[3];
    assign y = x;

endmodule