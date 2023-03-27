% listamniejsza_o2(L1,L2).
% spełniony, gdy elementy listy L2 są odpowiednimi
% elementami listy L1 pomniejszonymi o 2, np. L1=[3,4], L2=[1,2] wynik [1,2]
% -----------------------------------------------

% warunek kończący rekurencję: podwojenie listy pustej
% jest lista pustą.

listamniejsza_o2([],[]).

% rekurencja:

listamniejsza_o2([H1|T1],[H2|T2]):-
		H2 is H1-2,
		listamniejsza_o2(T1,T2).
