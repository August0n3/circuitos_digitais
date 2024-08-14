module quatro(
    input logic T,
    input logic H,
    input logic F,
    input logic U,
    output logic X
);
assign X=(T&H)|(F&U);
endmodule