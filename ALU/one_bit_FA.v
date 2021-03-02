module one_bit_FA(sum, cout, a, b, cin);
    input a, b, cin;
    output sum, cout;
    wire w1, w2, w3, w4;
    //總和
    xor(w1,a,b);
    xor(sum,cin,w1);
    //進位
    or(w2,a,b);
    and(w3,cin,w2);
    and(w4,a,b);
    or(cout,w3,w4);
endmodule
