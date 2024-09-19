module opAND(
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [3:0] s
);  
    assign s[0] = a[0] & b[0];
    assign s[1] = a[1] & b[1];
    assign s[2] = a[2] & b[2];
    assign s[3] = a[3] & b[3];

endmodule