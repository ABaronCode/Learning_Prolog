is_prime(2).
is_prime(3).
is_prime(X) :- integer(X), X>3, X mod 2 =\= 0, \+ has_factor(X,3).

has_factor(Y,Z) :- Y mod Z =:=0.
has_factor(Y,Z) :- Z*Z < Y, Z2 is Z + 2, has_factor(Y,Z2).

gb(4,[2,2]) :- !.

gb(A,B) :- A mod 2 =:= 0, A > 4, gb(A,B,3).
gb(A,[D,C],D) :- C is A - D, is_prime(C),!.
gb(A,B,D) :- D < A, n_prime(D,D1), gb(A,B,D1).

n_prime(D,D1) :- D1 is D + 2, is_prime(D1),!.
n_prime(D,D1) :- D2 is D + 2, n_prime(D2, D1).