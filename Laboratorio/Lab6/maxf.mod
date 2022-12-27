set N; #nodi
set A within N cross N; #archi definiti su prodotto cartesiano

param c{A}; #i costi sono definiti sugli archi,
#ma sono definiti come coppie di nodi
param b{N}; #parametro di bilanciamento
param W; #budget
param u{A}; #unità del problema

check: sum{i in N} b[i] = 0;
var x{A} integer >=0;
var y;

maximize flow: y; #variabile fittizia
s.t. balance{v in N}: sum{(i,v) in A} x[i,v] - sum{(v,j)in A} x[v,j] = b[v] * y;
#nel vincolo di bilanciamento, si dipende
#dalla var. fittizia che modella
#la quantità da trasferire da A ad F
s.t. capacity {(i,j) in A}: x[i,j] <= u[i,j];
s.t. budget: sum{(i,j) in A} c[i,j]*x[i,j] <= W;
