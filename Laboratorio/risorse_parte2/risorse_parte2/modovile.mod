set I;	# I
set J;	# J
set K;	# K
set R;	# R

param F{R};						# F_r
param C{I};							# C_i
param A{I,K} >= 0, <= 1;	# A_ik	
param B{K} >= 0, <= 1 default 0.0;		# B_k
param U{K} >= 0, <= 1 default 1.0;		# U_k
param Q{I};									# Q_i
param D{J};									# D_j
param P{R,I,J} binary;			# P_rij

var x{I,J} >= 0 integer;

minimize f :
  sum{i in I, j in J} C[i]*x[i,j]
  + sum{r in R, i in I, j in J}
    P[r,i,j] * F[r] * x[i,j];

s.t. v_perc_min{j in J, k in K : B[k] > 0} :
  sum{i in I} A[i,k]*x[i,j] >=
  B[k]*sum{i in I} x[i,j];
s.t. v_perc_max{j in J, k in K : B[k] < 1} :
  sum{i in I} A[i,k]*x[i,j] <=
  U[k]*sum{i in I} x[i,j];
s.t. v_disp{i in I} :
  sum{j in J} x[i,j] <= Q[i];
s.t. v_domanda{j in J} :
  sum{i in I} x[i,j] = D[j];
  