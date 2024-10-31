module registrador_de_carga_paralela (
    input logic clk,
    input logic rst,
    input logic clr,
    input logic [3:0] d,
    input logic ld,
    output logic [3:0] q
);
    
    logic [3:0] q_next;
    
    always @(posedge clk, rst) begin
        if (rst) begin
            q <= 4'b0;
        end else begin
            if (clr) begin
                q <= 4'b0;
            end else begin
            if (ld) begin
                q_next = d;
            end else if(~ld) begin
                q_next = q;
            end 
            q <= q_next;
        end
    end
endmodule