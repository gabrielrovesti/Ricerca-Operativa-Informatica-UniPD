set N; #nodi
set A within N cross N; #archi definiti su prodotto cartesiano

param c{A}; #i costi sono definiti sugli archi,
#ma sono definiti come coppie di nodi
param b{N}; #parametro di bilanciamento
#param w{A};
#param W;

param u{A}; #unità del problema

check: sum{i in N} b[i] = 0;
var x{A} integer >=0;
minimize f: sum{(i,j) in A} c[i,j] * x[i,j];
s.t. balance{v in N}: sum{(i,v) in A} x[i,v] - sum{(v,j) in A} x[v,j] = b[v];
#s.t. budget: sum{(i,j) in A} w[i,j]*x[i,j] <= W;

s.t. capacity{(i,j) in A}: x[i,j]<=u[i,j];