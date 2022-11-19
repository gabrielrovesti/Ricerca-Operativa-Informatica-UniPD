set I; #risorse
set J; #domande

param C{I}; #costo risorse
param D{J}; #domande
param A{I,J}; #capacità risorsa “i” per soddisfare la domanda “j”

var x{I} >= 0 integer;

minimize costo: sum{i in I} C[i]*x[i];

s.t. soddisfazione{j in J}: sum{i in I} A[i,j] * x[i] >= D[j];