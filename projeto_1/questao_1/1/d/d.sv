module e(
    input A,B,C,
    output x,y
);
assign y=A&B|B&C|A&C;
endmodule