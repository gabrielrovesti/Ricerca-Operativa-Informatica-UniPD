set ROTTAMI;
set LEGHE;
set METALLI;
param cont{METALLI,ROTTAMI}; #U[k,j]
param prezzo{ROTTAMI}; #C[i];
param cont_max{METALLI,LEGHE}; #A[k,i]
param ordine{LEGHE}; #R[j]

var x{ROTTAMI,LEGHE} >= 0;

minimize f:
  sum{i in ROTTAMI} prezzo[i]*sum{j in LEGHE} x[i,j];

s.t. v_c{k in METALLI, j in LEGHE}: sum{i in ROTTAMI}
cont[k,i]*x[i,j] <= cont_max[k,j]*sum{i in ROTTAMI}x[i,j];

s.t. v_o{j in LEGHE}: sum{i in ROTTAMI} x[i,j] = ordine[j];
