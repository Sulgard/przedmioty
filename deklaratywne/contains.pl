% element(E,L) - spełniony, gdy
% E jest elementem listy L

element(E,[E|_]).
element(E,[_|T):-element(E,T).

% element(3,[3,2,1]). - TRUE
% element(4,[3,2,1]). - FALSE
% 
