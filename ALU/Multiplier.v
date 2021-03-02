`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );
    input clk ;
    input reset ;
    input [31:0] dataA ; // 被乘數
    input [31:0] dataB ; // 乘數
    input [5:0] Signal ;
    output [63:0] dataOut ;
    
    reg [63:0] PROD;
    
    parameter MULTU = 6'b011001;
    
    always@( Signal )
    begin
        if ( Signal == MULTU )
        begin
            PROD = { 32'b0, dataB };
        end
    end
    
    always@( posedge clk or reset )
    begin
        if ( reset )
        begin
            PROD <= 64'b0;
        end
        else
        begin
            if( Signal == MULTU )
            begin        
                if( PROD[0] == 1 )
                begin
                    PROD[63:32] = dataA + PROD[63:32];
                end
                
                PROD = PROD >> 1;
            end
        end
    end
    assign dataOut = PROD;
endmodule