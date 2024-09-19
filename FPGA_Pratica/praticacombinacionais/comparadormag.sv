module comparadormag(
    input logic [3:0] a,
    input logic [3:0] b,
    output logic eq,
    output logic gt,
    output logic lt
    );
    assign x3 = ~(a[3] ^ b[3]);
    assign x2 = ~(a[2] ^ b[2]);
    assign x1 = ~(a[1] ^ b[1]);
    assign x0 = ~(a[0] ^ b[0]); 
    
    assign eq = x3 & x2 & x1 & x0;
    assign gt = a[3] & ~b[3] | x3 & a[2]&~b[2] | x3 & x2 & a[1]&~b[1] | x3 & x2 & x1 & a[0] & ~b[0];
    assign lt = ~(gt ^ eq) & ~eq;



endmodule