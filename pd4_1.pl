p(a,d).
p(X,Y):-q(X,Z),r(Z,Y).
q(a,b).
q(c,a).
r(a,d).
r(b,c).

p(a,c),p(a,X),p(X,d),p(X,Y)
