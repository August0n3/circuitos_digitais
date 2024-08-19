module a (
    input logic a,
    input logic b,
    input logic c,
    output logic x

);
    logic w1;
    logic w2;
    logic w3;
    logic w4;

    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = w1 | w2;
    assign w4 = ~w3;

    assign x = w4 & c & b;
endmodule