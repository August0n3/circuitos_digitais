module e(
    input A,B,C,
    output x,y
);
assign y=A&B|B&C|A&C;
assign x=A^B^C;
endmodule