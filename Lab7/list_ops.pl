% =========================================================================
% ARTI 303 - Programming for AI
% Lab 7 (Parts 1 & 2): Four Basic Operations on Lists
% File: list_ops.pl
% =========================================================================

member1(X, [X|_Tail]).
member1(X, [_Head|Tail]) :-
    member1(X, Tail).

conc([], L, L).
conc([X|L1], L2, [X|L3]) :-
    conc(L1, L2, L3).

% 3. Addition Operation (at front): add(X, L, Result)
add(X, L, [X|L]).

% 4. Deletion Operation (single occurrence): del(X, List, Result)
del(X, [X|Tail], Tail).
del(X, [Y|Tail], [Y|Tail1]) :-
    del(X, Tail, Tail1).
