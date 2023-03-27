jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).

niepali(ola).
niepali(ewa).
niepali(jan).

czyta(ola).
czyta(iza).
czyta(piotr).

sport(ola).
sport(jan).
sport(piotr).
sport(pawel).

lubi(ola,X):-jarosz(X),
	     sport(X).

lubi(ewa,X):-jarosz(X),
	     niepali(X).

lubi(iza,X):-czyta(X).
lubi(iza,X):-sport(X),
	     niepali(X).

lubi(janek,X):-sport(X).

lubi(piotr,X):-sport(X),
	       jarosz(X).
lubi(piotr,X):-czyta(X).

lubi(pawel,X):-jarosz(X),
	       sport(X),
	       czyta(X).
