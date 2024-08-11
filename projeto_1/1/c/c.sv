module c(
    input A,B,C,D,
    output x
);
assign x=~(A&B&(C|D));
endmodule