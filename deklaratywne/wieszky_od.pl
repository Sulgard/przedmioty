% wiekszy_od(X,Y)
% spełniony, gdy Y jest większe od X

wiekszy_od(X,Y):- Y>X.

% wieksz_od_lista(+X,+L).
% spelniony, gdy wszystkie elementy listy L
% są większe od X

wiekszy_od_lista(X,L):-maplist(wiekszy_od(X),L).


% wiekszy_od_lista(2,[3,4,5]). - TRUE
