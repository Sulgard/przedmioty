% lista_wiekszao2(L1,L2)-spełniony, gdy element listy L2 są odpowiednio elemenatmi listy L1 powiekszonymi o 2.

wiekszyo2(X,Y): - Y is X+2.

lista_wiekszao2(L1,L2):-maplist(wiekszyo2,L1,L2).

% lista_wiekszao2([1,2],[3,4]). TRUE
% lista_wiekszao2([0,5],X). [2,7]
