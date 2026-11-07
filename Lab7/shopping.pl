% =========================================================================
% ARTI 303 - Programming for AI
% Lab 7 (Part 1): Lab Activity - Shopping Program
% Deliverable: shopping.pl
% =========================================================================

start :-
    menu([coffee, milk, chocolate, apple, juice]).

shopping :-
    start.

% Display the menu and read user choice
menu(List) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    process(Choice, List).

% Option d: Display all items using recursion, then show the menu again
process(d, List) :-
    !,
    display_items(List),
    menu(List).

% Option a: Add a new item to the list, then show the menu again
process(a, List) :-
    !,
    write('enter the item you want to add it'), nl,
    read(Item),
    add_item(Item, List, NewList),
    write('The item has been added'), nl,
    menu(NewList).

% Option e: Exit the program
process(e, _) :-
    !.

% Handle invalid menu choices gracefully
process(_, List) :-
    write('Invalid choice, please try again.'), nl,
    menu(List).

% Recursive predicate to display all items in the list, stopping at []
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

% Helper predicate to add an item to the list
add_item(X, L, [X|L]).
