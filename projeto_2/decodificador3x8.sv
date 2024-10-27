module decodificador3x8(
    input logic [2:0] a,
    output logic [7:0] y
    );
    logic [7:0] x;
    assign x[0] = ~a[0] & ~a[1] & ~a[2];
    assign x[1] = ~a[0] & ~a[1] & a[2];
    assign x[2] = ~a[0] & a[1] & ~a[2];
    assign x[3] = ~a[0] & a[1] & a[2];
    assign x[4] = a[0] & ~a[1] & ~a[2];
    assign x[5] = a[0] & ~a[1] & a[2];
    assign x[6] = a[0] & a[1] & ~a[2];
    assign x[7] = a[0] & a[1] & a[2];
    assign y = x;
endmodule
//falta colocar entrada de habilitação