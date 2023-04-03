%wieksza_lista(L1,L2) - spełniony, gdy wszystkie element listy L2 są większe od odpowiednich elementów listy L1.

wieszke(X,Y):- Y>X.

wieksza_lista(L1,L2):-maplist(wieksze,L1,L2).


% wieksza_lista([1,2],[3,4]). - TRUE 
