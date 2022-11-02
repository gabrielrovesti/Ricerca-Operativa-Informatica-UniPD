set I; #risorse
set J; #domande

param C{I}; #costo risorse
param D{J}; #domande
param A{I,J};
param MinRisorsa{I} default 0; #parametro indicizzato nell'insieme I
#messo a default a 0 (perché una, la risorsa minima, ha valore 3
#mentre tutte le altre a 0)

var x{i in I} integer >= MinRisorsa[i];

minimize costo: sum{i in I} C[i]*x[i];

s.t. soddisfazione{j in J}: sum{i in I} A[i,j] * x[i] >= D[j];