var xA integer;
var xB integer;

maximize profit: 3*xA+6*xB;
s.t. display: xA+2*xB <= 10;
s.t. nav: xA <= 9;
s.t. tastierini: 2*xA + 3*xB <= 21;
s.t. logica: 2*xA + 3*xB <= 18;
s.t. trasmissione: xA + 3*xB <= 22;
s.t. led: xA <= 10: