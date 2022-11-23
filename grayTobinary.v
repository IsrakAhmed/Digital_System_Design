module grayTobinary(d,e,f,a,b,c);
  
  input a,b,c; 
  output d,e,f;
   
  assign d = a; 
  assign e = a ^ b; 
  assign f = a ^ b ^ c;

endmodule

module stim_grayTbin();
  
  wire d,e,f;
  reg a,b,c;
  
  grayTobinary bg(d,e,f,a,b,c);
  
  initial begin
    
    #10
    a = 1'b0;  b = 1'b1;  c = 1'b0;
    #10
    c = 1'b1;
    #10
    a = 1'b1; b = 1'b0; c = 1'b0;
    #10
    a = 1'b1;  b = 1'b0;  c = 1'b1;
    
  end
  
endmodule