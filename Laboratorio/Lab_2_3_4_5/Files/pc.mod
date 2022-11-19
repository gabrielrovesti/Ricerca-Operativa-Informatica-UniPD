set I; #stabilimenti - S
set J; #banche - B

param A{I}; #capacità produttive
param B{J}; #richieste
param W{I}; #costi produttivi
param C{I, J}; #costi
var x{I, J} integer >= 0;
param stab_bil symbolic; #Per mettere 'Italia' all'interno delle variabili --> expected number
param bil1;
param bil2;

minimize costo: sum{i in I, j in J}
(W[i] + C[i,j])*x[i,j];
s.t. produzione{i in I}: sum{j in J} x[i,j] <= A[i];
s.t. domanda{j in J}: sum{i in I} x[i,j] = B[j];

s.t. bilan1: sum{j in J} x['it', j] >= 0.25 *
	sum{i in I, j in J} x[i, j];

s.t. bilan2{i in I: i != 'it'}: sum{j in J} x['it', j] >= 0.30 *
	sum{j in J} x[i, j];