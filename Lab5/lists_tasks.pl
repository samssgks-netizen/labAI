% =========================================================================
% ARTI 303 - Programming for AI
% Lab 7 (Part 2): Lab Tasks 1 & 2
% Deliverable: lists_tasks.pl
% =========================================================================

% Base case: empty list
deleteElement(_, [], []).

% Case 1: Head matches X -> skip it and continue deleting from Tail
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Case 2: Head does not match X -> keep Head and continue deleting from Tail
deleteElement(X, [H|Tail], [H|Result]) :-
    X \= H,
    deleteElement(X, Tail, Result).

% Test queries for Task 1:
% ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% Expected: List = [2, 4, 3, 4, 3, 4, 2].
%
% ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% Expected: List = [1, 2, 1, 4, 4, 1, 1, 1, 4, 2, 1, 1, 1].



% Solution 1: Recursive traversal down to the empty list []
add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|Tail], [H|Result]) :-
    add_at_the_end(X, Tail, Result).

% Solution 2 (Alternative using concatenation / append):
% add_at_the_end_conc(X, List, Result) :-
%     append(List, [X], Result).

% Test queries for Task 2:
% ?- add_at_the_end(5, [1,2,3,4], List).
% Expected: List = [1, 2, 3, 4, 5].
%
% ?- add_at_the_end(d, [a,b,c], List).
% Expected: List = [a, b, c, d].
