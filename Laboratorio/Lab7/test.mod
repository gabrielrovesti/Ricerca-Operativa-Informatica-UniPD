set Facility;

param A{Facility};
param B{Facility};
param gasoline{Facility};
param naphtha{Facility};

var x1;
var x2;
var x3;

maximize total_profit: 2*x1 + 2*x2 + 2*x3 + x1 + x2 + x3;

subject to c1: x1 <= 10;
subject to c2: x2 <= 10;
subject to c3: x3 <= 10;
subject to c4: x1 + x2 + x3 <= 6;
subject to c5: 3*x1 + x2 + 5*x3 <= 10;
subject to c6: 5*x1 + x2 + 3*x3 <= 6;
subject to c7: 4*x1 + x2 + 3*x3 <= 3;
subject to c8: 3*x1 + x2 + 4*x3 <= 4;