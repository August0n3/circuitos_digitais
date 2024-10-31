module display7 (
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic x,
    output logic y,
    output logic z,
    output logic w,
    output logic v,
    output logic u,
    output logic t
    );

    assign x = ~(~b&~d | ~a&c | ~a&b&d | b&c | a&~b&~c | a&~d);
    assign y = ~(~a&~b | ~a&~c&~d | ~b&~d | ~a&c&d | a&~c&d);
    assign z = ~(~a&~c | ~a&d | ~c&d | ~a&b | a&~b);
    assign w = ~(~a&~b&~d | ~b&c&d | b&~c&d | b&c&~d | a&~c);
    assign v = ~(~b&~d | c&~d | a&c | a&b);
    assign u = ~(~c&~d | ~a&b&~c | b&~d | a&~b | a&c); 
    assign t = ~(~b&c | c&~d | ~a&b&~c | a&~b | a&d);

endmodule