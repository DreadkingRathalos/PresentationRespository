module JK_FF (
    input  wire clk,
    input  wire clear, 
    output reg  Q,
    output wire Q_not
);
    assign Q_not = ~Q;

    always @(posedge clk) begin
        if (clear)      Q <= 1'b0;   
        else            Q <= ~Q;    
    end
endmodule

module freq_div_8 (
    input  wire clk,      
    input  wire clear,    
    output wire Q0,       
    output wire Q1,       
    output wire Q2        
);
    JK_FF ff0 (.clk(clk),   .clear(clear), .Q(Q0), .Q_not());
    JK_FF ff1 (.clk(Q0),    .clear(clear), .Q(Q1), .Q_not());
    JK_FF ff2 (.clk(Q1),    .clear(clear), .Q(Q2), .Q_not());
endmodule
