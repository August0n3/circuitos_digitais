module circuito_combinacional1 (
    input logic m1,
    input logic m2,
    input logic m3,
    input logic m4,
    output logic c1,
    output logic c2,
    output logic c3,
    output logic c4
);
    assign c1 = m1;
    assign c2 = m2;
    assign c3 = (m3 & ~m1) | (m3&~m2);
    assign c4 = (m4 & ~m1 & ~m3) | (m4 & ~m2 & ~m1) | (m4 & ~m2 & ~m3);
    
endmodule