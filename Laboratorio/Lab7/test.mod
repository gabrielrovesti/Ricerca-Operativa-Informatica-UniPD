set I; #materie prime
set J; #prodotti
param C{I}; #costo unitario materia prima
param B{J}; #richiesta minima prodotto
param A{I, J}; #quantità di prodotto estraibile da un'unità di materia prima

var x{I} >=0 integer;

minimize f: sum{i in I} c[i] * x[i];
s.t. v1{j in J}: sum{i in I} a[i,j]*x[i] >= b[j];


