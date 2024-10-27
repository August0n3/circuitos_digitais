module ULA(
    input logic [7:0] a,
    input logic [7:0] b,
    input logic [2:0] op,
    output logic [7:0] s
);

    logic [7:0] result;
    logic [7:0] result_or, result_and, result_xor,result_sum, result_sub, result_inc, result_neg;
    
    
    // Instâncias dos módulos fora do always block
    opOR op_or_inst (.a(a), .b(b), .s(result_or));
    opAND op_and_inst (.a(a), .b(b), .s(result_and));
    opXOR op_xor_inst (.a(a), .b(b), .s(result_xor));
    somador somador_inst (.a(a), .b(b), .s(result_sum), .cin(1'b0));
    subtrador subtrador_inst (.a(a), .b(b), .s(result_sub), .cin(1'b0));
    somador somador_inst2 (.a(a), .b(4'b0000), .s(result_inc), .cin(1'b1));
    somador somador_inst3 (.a(~a), .b(4'b0000), .s(result_neg), .cin(1'b1));

    always @* begin
        case (op)
            3'b000: result = result_or;
            3'b001: result = result_and;
            3'b010: result = result_xor;
            3'b011: result = ~a;
            3'b100: result = result_sum;
            3'b101: result = result_sub;
            3'b110: result = result_inc;
            3'b111: result = result_neg;
        endcase
    end

    // Instância única do display7 para exibir o resultado
    display7 display_inst (.a(result[3]), .b(result[2]), .c(result[1]), .d(result[0]), 
                           .x(s[0]), .y(s[1]), .z(s[2]), .w(s[3]), 
                           .v(s[4]), .u(s[5]), .t(s[6]));

endmodule
