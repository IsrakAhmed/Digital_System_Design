module binaryTogray(b2,b1,b0,g2,g1,g0);
  
  input b2,b1,b0; 
  output g2,g1,g0;
   
  assign g2=b2; 
  assign g1=b2^b1; 
  assign g0=b1^b0;

endmodule

module stim_binTgray();
  
  wire g2,g1,g0;
  reg b2,b1,b0;
  
  binaryTogray bg(b2,b1,b0,g2,g1,g0);
  
  initial begin
    
    #10
    b2 = 1'b0;  b1 = 1'b1;  b0 = 1'b0;
    #10
    b2 = 1'b1;
    #10
    b2 = 1'b0; b1 = 1'b0; b0 = 1'b1;
    #10
    b2 = 1'b1;
    
  end
  
endmodule