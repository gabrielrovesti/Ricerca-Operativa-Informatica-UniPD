set I; #prodotti
set J; #risorse

param maxNumProd{I};
param P{I};
param Q{J};
param A{I,J};

var x {i in I} >= 0 <= maxNumProd[i] integer;

maximize profitto: sum{i in I} P[i]*x[i];
s.t. dispon{j in J}: sum{i in I} A[i, j]*x[i] <= Q[j];