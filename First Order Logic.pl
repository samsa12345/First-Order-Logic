parent(david, john).
parent(amy, john).
parent(jack, ray).
parent(karen, ray).
parent(john, peter).
parent(susan, peter).
parent(john, mary).
parent(susan, mary).

parent(david, liza).
parent(amy, liza).

male(david).
male(jack).
male(john).
male(ray).
male(peter).

female(amy).
female(karen).
female(susan).
female(liza).
female(mary).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
uncle(X, Y) :- sibling(X, Z), parent(Z, Y), male(X).
aunt(X, Y) :- sibling(X, Z), parent(Z, Y), female(X).
