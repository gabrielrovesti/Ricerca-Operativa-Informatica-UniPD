var x1 >=0;
var x2 >=0;
var x3 >=0;
var x4 >=0;
var x5 >=0;
minimize f: 1.97*x1 + 3*x2 + 5*x3 + 2.14*x4 + 2*x5;
s.t. v1: -x1 + 3*x2 + x3 + 2*x4 + x5 >= 4;
s.t. v2: 2*x1 + 1.5*x2 + 2*x3 + 3*x4 + x5 >= 7;
s.t. bb01: x4 >= 3;