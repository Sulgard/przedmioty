% Predykaty

% dodatni(X)
% spełniony, gdy X liczbą dodatnią

dodatni(X):-X>0.
  

% lista_dodatnia(L)
% spełniony, gdy wszystkie lementy listy
% są dodatnie

lista_dodatnia(L):-maplist(dodatni,L).

% lista_dodatnia([2,3,4]) - TRUE
