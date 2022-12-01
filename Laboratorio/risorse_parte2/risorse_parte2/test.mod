set I; #fornitori
set J; #materie prime
set K; #prodotti
param P{K}; #prezzo di vendita
param C{I,J}; #costo unitario materia prima
param F{I}; #costo fisso
param Q{J,K}; #quantità materia consumata
param M{I}; #limite massimo acquisti fornitore
param B; #budget
var x{K} integer >=0;
var y{I,J} integer >=0;
var z{I} binary;

maximize ricavo: sum{k in K} P[k]*x[k];
s.t. limite{i in I, j in J}: C[i,j]*y[i,j] + F[i]*z[i] <= B;
s.t. quantita{j in J}: sum{i in I} y[i,j] >= sum{k in K} Q[j,k] * x[k];
s.t. acquisti{i in I}: sum{j in J} y[i,j] <= M[i] * z[i];