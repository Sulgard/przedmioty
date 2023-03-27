% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
%Definiowane predykaty:
% 	na/2
%=================================

% na (X,Y)
% opis: spełniony, gdy klocek X leży
% bezpośrednio na klocku Y
%----------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
%----------------------------------na/2


%----------------------------------pod/2
	pod(X,Y):-na(Y,X).
%-----------------------------------pod/2

%miedzy(X,Y,Z)
% opis: X leży pomiędzy klockami Y i Z.
%-----------------------------------miedzy/2
	miedzy(X,Y,Z):-na(Y,X),pod(Z,X).
	miedzy(X,Y,Z):-na(Z,X),pod(Y,X).
%-----------------------------------miedzy/2


/*
Sesja prologowa

1. Czy klocek d leży na klocku c?
? - na(d,c).
true.

2. Czy klocek c leży na klocku a?
? - na(a,c).
true.

3. Czy klocek c lezy na klocku b?
? - na(b,c).
true.

*/
