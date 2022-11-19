set I; #insieme offerta
set J; #insieme domanda

param O{I}; #offerta
param D{J}; #domanda
param C{I, J}; #costo trasporto

var x{I, J} >=0 integer;

minimize costo_totale:
	sum{i in I, j in J} C[i,j] * x [i, j];

s.t. origine{i in I}: sum{j in J} x[i, j]<=O[i];

s.t. destinazione{j in J}: sum{i in I} x[i,j] >= D[j];

