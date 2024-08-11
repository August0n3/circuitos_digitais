module a(
    input A,B,C,
    output x
);
assign x=~A&B|C;
endmodule