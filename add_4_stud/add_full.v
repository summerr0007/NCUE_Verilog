
module add_full (a, b, cin, cout, sum);
  input	  a, b, cin;
  output	 cout, sum;
  wire	   w0, w1, w2;

  add_half	inst0(a,	b,	w2, w0);
  add_half	inst1(cin,	w0, w1, sum);
  assign	cout = w1|w2;
endmodule
