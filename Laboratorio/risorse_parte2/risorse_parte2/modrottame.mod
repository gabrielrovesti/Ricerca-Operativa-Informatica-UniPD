set I;
set J;
set K;
param U{K,J}; #U[k,j]
param C{I}; #C[i];
param A{K,I}; #A[k,i]
param R{J}; #R[j]

var x{I,J} >= 0;

minimize f:
  sum{i in I} C[i]*sum{j in J} x[i,j];

s.t. v_c{j in J, k in K}: sum{i in I}
A[k,i] * x[i,j] <= U[k,j] * sum{i in I} x[i,j];

s.t. v_o{j in J}: sum{i in I} x[i,j] = R[j];
