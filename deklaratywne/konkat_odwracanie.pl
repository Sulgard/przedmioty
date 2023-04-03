% rekurencja ze względu na liste L1:

% warunek kończący rekurencję: połączenia listy
% pustej z listą L daje listę L
konkat([], L, L).

% rekurencja:
% głowa listy L3 jest głową listy L1
% ogon listy L3 jest połączeniem ogona listy L1
% z listą L2

konkat([H1|T1], L2, [H1|T3]:-konkat(T1,L2,T3).



% odwrotna_lista
% (L1, L2) - spełniony, gdy L2 jest listą odwrotną do L1. [1, 2, 3] [3, 2, 1]

odwrotna_lista([],[]).
odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

% odwrotna_lista([1,2,3],[3,2,1]). - TRUE 
% odwrotna_lista([5,4,1],X). - [1,4,5]
% odwrotna_lista([1,2,3],[5,3,1]). - FALSE

