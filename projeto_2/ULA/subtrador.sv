module subtrador(
    input logic [7:0] a,
    input logic [7:0] b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic C1,C2,C3;
    subtradorcompleto fs0(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.cout(C1));
    subtradorcompleto fs1(.a(a[1]),.b(b[1]),.cin(C1),.s(s[1]),.cout(C2));
    subtradorcompleto fs2(.a(a[2]),.b(b[2]),.cin(C2),.s(s[2]),.cout(C3));
    subtradorcompleto fs3(.a(a[3]),.b(b[3]),.cin(C3),.s(s[3]),.cout(C4));
    subtradorcompleto fs4(.a(a[4]),.b(b[4]),.cin(C4),.s(s[4]),.cout(C5));
    subtradorcompleto fs5(.a(a[5]),.b(b[5]),.cin(C5),.s(s[5]),.cout(C6));
    subtradorcompleto fs6(.a(a[6]),.b(b[6]),.cin(C6),.s(s[6]),.cout(C7));
    subtradorcompleto fs7(.a(a[7]),.b(b[7]),.cin(C7),.s(s[7]),.cout(cout));

endmodule