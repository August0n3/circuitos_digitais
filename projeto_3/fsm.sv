module fsm(
    input logic clk,
    input logic gcnt,
    output logic x,y,z
);

    typedef enum logic { 
        estado0,
        estado1,
        estado2,
        estado3,
        estado4,
        estado5,
        estado6,
        estado7
    } state_t;

    state_t estado_atual, estado_proximo;

    always @(posedge clk) begin
        if (gcnt == 1'b1) begin
            estado_atual = estado0;
        end else begin
            estado_atual = estado_proximo;
        end
    end

    always (estado_atual) begin
        always_comb begin
            case (estado_atual)
                estado0: begin
                    estado_proximo = estado1;
                    x = 1'b0; y = 1'b0; z = 1'b0;
                end
                estado1: begin
                    estado_proximo = estado3;
                    x = 1'b0; y = 1'b0; z = 1'b1;
                end
                estado3: begin
                    estado_proximo = estado2;
                    x = 1'b0; y = 1'b1; z = 1'b1;
                end
                estado2: begin
                    estado_proximo = estado6;
                    x = 1'b0; y = 1'b1; z = 1'b0;
                end
                estado6: begin
                    estado_proximo = estado7;
                    x = 1'b1; y = 1'b1; z = 1'b0;
                end
                estado7: begin
                    estado_proximo = estado5;
                    x = 1'b1; y = 1'b1; z = 1'b1;
                end
                estado5: begin
                    estado_proximo = estado4;
                    x = 1'b1; y = 1'b0; z = 1'b1;
                end
                estado4: begin
                    estado_proximo = estado0;
                    x = 1'b1; y = 1'b0; z = 1'b0;
                end
                default: begin
                    estado_proximo = estado0;
                    x = 1'b0; y = 1'b0; z = 1'b0;
                end
            endcase
        end
    end
        
        

endmodule