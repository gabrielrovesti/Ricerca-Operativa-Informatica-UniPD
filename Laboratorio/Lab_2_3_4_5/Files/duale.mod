set PRODOTTI;
set RISORSE;
param prezzo{PRODOTTI};
param consumo_risorse{RISORSE, PRODOTTI};
param disp{RISORSE};
var u{RISORSE} >= 0;
minimize costo: sum{i in RISORSE} disp[i]*u[i];
s.t. convenienza{j in PRODOTTI}:
	sum{i in RISORSE} consumo_risorse[i,j]*u[i] >= prezzo[j];