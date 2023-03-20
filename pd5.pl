/*
2 + 2 =:= 2 * 2
S = X * Y
S is X * Y


% Rozpoznawanie wielomianów jednej zmiennej
% o współczynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1) x jest wielomianem zmiennej x
 c - liczba jest wielomianem dowolnej zmiennej

2) Jeżeli W, W1, W2 są wielomianami zm. x, to
	-W, W1+W2, W1-W2, W1*W2, W^N (N-liczba naturalna)
	są wielomianami zmiennej x
*/

%wielomian(W,X)
%spełniony, gdy W jest wielomianem zmiennej X
% o współczynnikach liczbowych
% definicja rekuerncyjna

% warunki zakończenia rekurencji
	wielomian(X,X).
	wielomian(C,_):-number(C).
% rekurencja
	wielomian(-W,X):-wielomian(W,X).
	wielomian(W1+W2,X):-wielomian(W1,X),
			wielomian(W2,X),
	wielomian(W1-W2,X):-wielomian(W1,X),
			wielomian(W2,X).
	wielomian(W1*W2,X):-wielomian(W1,X),
			wielomian(W2,X).
	wielomian(W^N,X):-integer(N),
			N>1,
			wielomian(W,X).

% kolejny program
% Wyznaczanie stopnia wielomianu
% o współczynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1) st(x)=1
   st(c)=0, gdzie c - liczba

2) Stopnie wielomianów złożonych określamy następująco:
	st(-W)=st(W),
	st(W1+W2)=st(W1-W2)=max(st(W1),st(W2)),
	st(W1*W2)=st(W1)+st(W2),
	st(W^N))=st(W)*N (N-liczba naturalna, N>1)
*/


% st_wielomian(W,X,N)
% spełniony, gdy N jest stopniem wielomianu W
% zmiennej X o współczynnikach liczbowych

% z tablicy 
st(X,X,1).
st(C, _, 0):-number(C).
st(-W,X,N):-st(W,X,N).
st(W1+W2,X,N):-st(W1,X,N1),st(W2,X,N2),N is max (N1,N2).
st(W1-W2,X,N):-st(W1,X,N1),st(W2,X,N2),N is max (N1,N2).
st(W1*W2,X,N):-st(W1,X,N1),st(W2,X,N2),N is N1+N2.
st(W1^N,X,N1):-integer(N),N>1,st(W,X,N2), N1 is N2*N.

% NA KOLOKWIUM UZGADNIANIE LIST

