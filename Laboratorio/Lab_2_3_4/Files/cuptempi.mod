set I; #quartieri
param C{I,I}; #costi
param T; #soglia
var x{I} binary;
minimize costo: sum {i in I} x[i];
subject to soddisfa{i in I}: 
	sum{j in I : C[i, j] <= T} x[j] >= 1;