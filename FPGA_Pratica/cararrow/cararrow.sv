module cararrow(
    input logic l, r, h,
    input logic clk, rst,
    output logic [2:0] y,
    output logic [2:0] y2
);

    // Instanciação do divisor de clock
    logic clk_out;
    clock_divider divider (.clk_in(clk), .rst(rst), .clk_out(clk_out));

    typedef enum logic [1:0] {
        L_STATE = 2'b10,
        R_STATE = 2'b01,
        H_STATE = 2'b11,
        Z_STATE = 2'b00
    } state_type;

    typedef enum logic [2:0] {
        zeros = 3'b000,
        init = 3'b001,
        mid = 3'b010,
        finals = 3'b100,
        fulls = 3'b111
    } state_type_led;

    state_type state, next_state;
    state_type_led led1, led2;

    initial begin
        y2 = 3'b000;
        y = 3'b000;
        state = Z_STATE;
        next_state = Z_STATE;
        led1 = zeros;
        led2 = zeros;
    end

    // Atualização do estado síncrona ao clock dividido
    always @(posedge clk_out, negedge rst) begin
        if (!rst) begin
            state <= Z_STATE;
            led1 <= zeros;
            led2 <= zeros;
            y <= 3'b000;
            y2 <= 3'b000;
        end else begin
            state <= next_state;
        end
    end

    // Lógica de saída dos LEDs
    always @(state) begin
        case (state)
                L_STATE: begin
                    if (led1 == zeros || led1 == finals) begin
                        led1 <= init;
                        y <= 3'b001;
                    end else if (led1 == init) begin
                        led1 <= mid;
                        y <= 3'b010;
                    end else if (led1 == mid) begin
                        led1 <= finals;
                        y <= 3'b100;
                    end else begin
                        led1 <= zeros;
                        y <= 3'b000;
                    end   
                end
                R_STATE: begin
                    if (led2 == zeros || led2 == finals) begin
                        led2 <= init;
                        y2 <= 3'b001;
                    end else if (led2 == init) begin
                        led2 <= mid;
                        y2 <= 3'b010;
                    end else if (led2 == mid) begin
                        led2 <= finals;
                        y2 <= 3'b100;
                    end else begin
                        led2 <= zeros;
                        y2 <= 3'b000;
                    end
                end
                H_STATE: begin
                    if (led1 == zeros && led2 == zeros) begin
                        led1 <= fulls;
                        led2 <= fulls;
                        y <= 3'b111;
                        y2 <= 3'b111;
                    end else begin
                        y <= 3'b000;
                        y2 <= 3'b000;
                    end
                end
                default: begin
                    led1 <= zeros;
                    led2 <= zeros;
                    y <= 3'b000;
                    y2 <= 3'b000;
                end
            endcase
    end

    // Lógica de transição de estado baseada nas entradas
    always @(l,r,h) begin
        if (l) begin
            next_state = L_STATE;
        end else if (r) begin
            next_state = R_STATE;
        end else if (h) begin
            next_state = H_STATE;
        end else begin
            next_state = state; // Volta para Z_STATE se nenhuma entrada estiver ativa
        end
        
    end

endmodule
