% lista_razy5(L1,L2).
% spełniony, gdy elementy listy L2 są odpowiednimi
% elementami listy L1 pomnożonymi przez 5, np. L1=[3,4], wynik [15,20]
% -----------------------------------------------

% warunek kończący rekurencję: pomnożenie listy pustej
% jest lista pustą.

lista_razy5([],[]).

% rekurencja:

lista_razy5([H1|T1],[H2|T2]):-
		H2 is H1*5,
		lista_razy5(T1,T2).
