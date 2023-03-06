/* 
czy klocek a leży na jakimś klocku? 
na(a,_).

_ - zmienna anonimowa.
X - szukamy

jaki klocek leży na a i na b

? - na(X,a),na(X,b).

jaki klocek lezy pod klockiem d
pod(X,d).

pod jakim klockiem leży klocek a?
pod(a,X).

czy klocek b leży pod jakimś klockiem
pod(b,_).

miedzy jakimi klockami leży klocek c?

miedzy(c,Y,Z).

jaki klocek bedzie lezal miedzy d i a? 
miedzy(X,d,a). albo miedzy(X,a,d).

Program składa się z 6 klauzul
składa się z 3 relacji (na,pod,między)
składa się z 3 faktów (na(c,a) itd...
składa się z 3 reguł.
*/

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



