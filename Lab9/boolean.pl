% =========================================================================
% ARTI 303 - Programming for AI
% Lab 9: Prolog Operators - Task 1: A Boolean Expression
% Deliverable: boolean.pl
% Expression: (A ∧ B) ∨ (¬A ∧ ¬B)
% =========================================================================


% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Negation truth table
neg(true, false).
neg(false, true).

% --- Rule: (A ∧ B) ∨ (¬A ∧ ¬B) ---
% Four gates: two ands, two negs, one or
logicGate(A, B, Output) :-
    and(A, B, And1),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, And2),
    or(And1, And2, Output).

% Test queries (press ; after each answer to verify no extra answers):
% ?- logicGate(true, true, O).    -> O = true.
% ?- logicGate(true, false, O).   -> O = false.
% ?- logicGate(false, true, O).   -> O = false.
% ?- logicGate(false, false, O).  -> O = true.
