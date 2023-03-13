/*

fu(a,X,f(g(Y)))     fu(V,h(Z,V),f(V))

V = a, więc fu (a,X,f(g,Y))) fu(a,h(Z,a),f(a))

X = h(Z,a) więc fu(a, h(Z,a),f(g(Y)) fu(a,h(Z,a),f(a))

Nie da się ze sobą uzgodnić   !!! g(Y)  a  



fu(a,X,f(g(Y))) fu(Y,f(Z),f(Z))

Y = a 

fu(a,X,f(g(a))) fu(a,f(Z),f(Z))

X = f(Z)

fu(a,f(Z),f(g(a))) fu(a,f(Z),f(Z))

Z = g(a)

fu(a,f(g(a)),f(g(a)) fu(a,f(g(a)),f(g))

fu(a,f(g(a)),f(g(a)) = fu(a,f(g(a)),f(g))

fu(f(X),Y,a) fu(f(g(Y)),c,Z)

Jedno zadanie na kolokwium to będzie drzewo poszukiwania rozwiązania, czyli będzie jakiś program,
który coś robi i będzie trzeba stworzyc drzewo według tego programu
DRZEWO  POSZUKIWANIA ROZWIĄZANIA
*/
