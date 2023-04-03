razy2(X,Y):- Y is X*2.

lista_razy2(L1,L2):-maplist(razy2,L1,L2).


% lista_razy2([1,2],[2,4]). TRUE
