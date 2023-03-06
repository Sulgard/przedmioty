/* 1. lubi(ola,X)-jarosz(X),sport(X).
lubi(ewa,X)-jarosz(X),niepali(X).
lubi(iza,X)-czyta(X).
lubi(iza,x)-sport(X),niepali(X).
lubi(janek,X)-sport(X).
lubi(piotr,X)-jarosz(x),sport(x).
lubi(pirotr,X);-czyta(x).
lubi(pawel,X);-jarosz(X),sport(X),czyta(X).
nawzajem sie lubia
lubi(X,Y),lubi(Y,X).
lubi(X,Y),lubi(Y,X)

x\=Y;

lubi(X,Y),lubi(Y,X),X\=Y.
wtedy nie wyskakują powtórzenie typu X - jan Y - jan 



*/
% PROGRAM: drugi
% Znjadź osoby które siebie najbardziej lubią 
%Definiowane predykaty:
% 	lubi/2
%=================================

% lubi (X,Y)
% opis: spełniony, gdy osoba X lubi
% osobe Y
%----------------------------------lubi/2
	lubi(jan,tatry).
	lubi(jan,beskidy).
	lubi(jerzy,beskidy).
	lubi(jerzy,bieszczady).
	lubi(adam,sudety).
	lubi(justyna,bieszczady).
	bratnia_dusza(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
%----------------------------------lubi/2

%----------------------------------jarosz/2
	jarosz(X).
%----------------------------------jarosz/2

%----------------------------------sport/2
	sport(X).
%----------------------------------sport/2

%----------------------------------niepali/2
	niepali(X).
%----------------------------------niepali/2

%----------------------------------czyta/2
	czyta(X).
%----------------------------------czyta/2
/*

*/
