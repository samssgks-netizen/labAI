male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, herb).
parent(mona, homer).

parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).

parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).

parent(selma, ling).

father(X, Y) :- parent(X, Y), male(X).

mother(X, Y) :- parent(X, Y), female(X).

son(X, Y) :- parent(Y, X), male(X).

daughter(X, Y) :- parent(Y, X), female(X).

brother(X, Y) :- parent(P, X), parent(P, Y), male(X), X \= Y.

sister(X, Y) :- parent(P, X), parent(P, Y), female(X), X \= Y.

grandfather(X, Z) :- parent(X, Y), parent(Y, Z), male(X).

aunt(X, Y) :- parent(P, Y), sister(X, P).

uncle(X, Y) :- parent(P, Y), brother(X, P).

cousin(X, Y) :- parent(P1, X), parent(P2, Y), (brother(P1, P2) ; sister(P1, P2) ; (parent(GP, P1), parent(GP, P2), P1 \= P2)).

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).