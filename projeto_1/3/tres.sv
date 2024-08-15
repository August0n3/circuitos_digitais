module tres(
    input logic A, B, C, D,
    output logic Y
);
assign Y=(~A)&(~B)|A&C&(~D)|A&(~B)&(~D);
endmodule