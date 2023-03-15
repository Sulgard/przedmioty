na(d,c).
na(c,a).
na(c,b).
na(a,c).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).

// drugi program 

rodzic(ania,jacek).
rodzic(ania,basia).
rodzic(jan,jacek).
rodzic(jan,basia).
rodzic(stefan,jan).
rodzic(maria,ania).
rodzic(borys,ania).
przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z),przodek(Z,Y).





