module quatro(
    input logic T,
    input logic Hh,
    input logic F,
    input logic U,
    output logic X
);
assign X=(T&H)|(F&U);
endmodule