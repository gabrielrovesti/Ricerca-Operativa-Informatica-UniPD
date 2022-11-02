set I; #stabilimenti - S
set J; #banche - B

param A{I}; #capacità produttive
param B{J}; #richieste
param W{I}; #costi produttivi
param C{I, J}; #costi
var x{I, J} integer >= 0;

minimize costo: sum{i in I, j in J}
(W[i] + C[i,j])*x[i,j];
s.t. produzione{i in I}: sum{j in J} x[i,j] <= A[i];
s.t. domanda{j in J}: sum{i in I} x[i,j] = B[j];