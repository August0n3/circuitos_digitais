module subtrador(
    input logic [3:0] a,
    input logic [3:0] b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic C1,C2,C3;
    subtradorcompleto fs0(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.cout(C1));
    subtradorcompleto fs1(.a(a[1]),.b(b[1]),.cin(C1),.s(s[1]),.cout(C2));
    subtradorcompleto fs2(.a(a[2]),.b(b[2]),.cin(C2),.s(s[2]),.cout(C3));
    subtradorcompleto fs3(.a(a[3]),.b(b[3]),.cin(C3),.s(s[3]),.cout(cout));

endmodule