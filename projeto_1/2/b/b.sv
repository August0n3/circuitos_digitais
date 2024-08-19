module b (
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic x

);
    logic w1;
    logic w2;
    logic w3;
    logic w4;
    logic w5;
    logic w6;
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~c;

    assign w4 = w1 & w2 & w3;
    assign w5 = a & w2 & w3 ;
    assign w6 = w1 & w2 & d;
    
    assign x = w4 | w5 | w6;
endmodule