% =========================================================================
% ARTI 303 - Programming for AI
% Lab 9: Prolog Operators - Tasks 2 & 3
% Deliverable: lab8_tasks.pl
% =========================================================================

% Allow defining sumlist/2 without clashing with SWI-Prolog's built-in lists library
:- redefine_system_predicate(sumlist(_, _)).

% -------------------------------------------------------------------------
% Task 2: sumlist(List, Sum)
% Computes the total of a list of numbers using recursion and 'is'.
% -------------------------------------------------------------------------

% Base case: the sum of an empty list is 0
sumlist([], 0).

% Recursive case: sum the tail first, then add the head H
sumlist([H|T], Sum) :-
    sumlist(T, TailSum),
    Sum is H + TailSum.

% Test queries for Task 2:
% ?- sumlist([1,2,5,7], Sum).   -> Sum = 15.
% ?- sumlist([], Sum).          -> Sum = 0.


% -------------------------------------------------------------------------
% Task 3: Total and Average of Three Numbers
% Reads three numbers from the user and prints their Total and Average.
% Remember to type a full stop (.) after each number.
% -------------------------------------------------------------------------

total_and_average :-
    write('Enter first number: '), nl,
    read(N1),
    write('Enter second number: '), nl,
    read(N2),
    write('Enter third number: '), nl,
    read(N3),
    Total is N1 + N2 + N3,
    Average is Total / 3,
    write('Total: '), write(Total), nl,
    write('Average: '), write(Average), nl.

% Alias so either ?- start. or ?- total_and_average. works
start :-
    total_and_average.
