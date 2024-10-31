module clock_divider (
    input logic clk_in,   // Clock de entrada
    output logic clk_out  // Clock de saída dividido
);

    logic [26:0] counter;  // Contador de 24 bits

    initial begin // Inicializa o contador
        counter = 0;
        clk_out = 0;
    end

    always @(posedge clk_in) begin
            if (counter < 50000000 - 1) begin
                counter = counter + 1;
            end else begin
                counter = 0;
                clk_out = ~clk_out;  // Inverte o clock de saída
            end
        end
    

endmodule
