module b(
    input A,B,C,
    output x
);
assign x=(A|B)&(B|~C);
endmodule