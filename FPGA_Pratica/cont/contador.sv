module contador(
    input logic clk, rst,
    output logic [7:0] segdec,seg,mindec,min,hordec,hor,
    output clk_out_test
);

    // Instanciação do divisor de clock
    logic clk_out;
    clock_divider divider (.clk_in(clk), .clk_out(clk_out));
    assign clk_out_test = clk_out;

    logic [3:0] segundos_dec, segundos_uni, minutos_dec, minutos_uni, horas_dec, horas_uni;

    always @(posedge clk_out, rst) begin
        
        if (0) begin
            segundos_dec <= 4'b0000;
            segundos_uni <= 4'b0000;
            minutos_dec <= 4'b0000;
            minutos_uni <= 4'b0000;
            horas_dec <= 4'b0000;
            horas_uni <= 4'b0000;
        end else begin
            if (segundos_uni == 4'b1001) begin
                segundos_uni <= 4'b0000;
                if (segundos_dec == 4'b0101) begin
                    segundos_dec <= 4'b0000;
                    if (minutos_uni == 4'b1001) begin
                        minutos_uni <= 4'b0000;
                        if (minutos_dec == 4'b0101) begin
                            minutos_dec <= 4'b0000;
                            if (horas_uni == 4'b1001) begin
                                horas_uni <= 4'b0000;
                                if (horas_dec == 4'b0001) begin
                                    horas_dec <= 4'b0000;
                                end else begin
                                    horas_dec <= horas_dec + 4'b0001;
                                end
                            end else begin
                                horas_uni <= horas_uni + 4'b0001;
                            end
                        end else begin
                            minutos_dec <= minutos_dec + 4'b0001;
                        end
                    end else begin
                        minutos_uni <= minutos_uni + 4'b0001;
                    end
                end else begin
                    segundos_dec <= segundos_dec + 4'b0001;
                end
            end else begin
                segundos_uni <= segundos_uni + 4'b0001;
            end
        end
    end



    display7 display_inst (.a(segundos_dec[3]), .b(segundos_dec[2]), .c(segundos_dec[1]), .d(segundos_dec[0]), 
                           .x(segdec[0]), .y(segdec[1]), .z(segdec[2]), .w(segdec[3]), 
                           .v(segdec[4]), .u(segdec[5]), .t(segdec[6]));
    
    display7 display_inst2 (.a(segundos_uni[3]), .b(segundos_uni[2]), .c(segundos_uni[1]), .d(segundos_uni[0]),
                            .x(seg[0]), .y(seg[1]), .z(seg[2]), .w(seg[3]),
                            .v(seg[4]), .u(seg[5]), .t(seg[6]));

    display7 display_inst3 (.a(minutos_dec[3]), .b(minutos_dec[2]), .c(minutos_dec[1]), .d(minutos_dec[0]),
                            .x(mindec[0]), .y(mindec[1]), .z(mindec[2]), .w(mindec[3]),
                            .v(mindec[4]), .u(mindec[5]), .t(mindec[6]));

    display7 display_inst4 (.a(minutos_uni[3]), .b(minutos_uni[2]), .c(minutos_uni[1]), .d(minutos_uni[0]),
                            .x(min[0]), .y(min[1]), .z(min[2]), .w(min[3]),
                            .v(min[4]), .u(min[5]), .t(min[6]));

    display7 display_inst5 (.a(horas_dec[3]), .b(horas_dec[2]), .c(horas_dec[1]), .d(horas_dec[0]), 
                            .x(hordec[0]), .y(hordec[1]), .z(hordec[2]), .w(hordec[3]),
                            .v(hordec[4]), .u(hordec[5]), .t(hordec[6]));

    display7 display_inst6 (.a(horas_uni[3]), .b(horas_uni[2]), .c(horas_uni[1]), .d(horas_uni[0]),
                            .x(hor[0]), .y(hor[1]), .z(hor[2]), .w(hor[3]),
                            .v(hor[4]), .u(hor[5]), .t(hor[6]));

    
endmodule