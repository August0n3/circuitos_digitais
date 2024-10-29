module q1(
    input logic [7:0] dado,
    output logic p
);

always_comb begin
    p = ^dado;
    p = ~p;
end
endmodule