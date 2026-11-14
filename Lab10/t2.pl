% Dataset
user(admin, 1234).
user(student, arti401).
user(sara, pass2026).
user(ahmed, qwerty).

% Main Login Rule (1 initial attempt + 2 extra attempts = 3 total)
login :-
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl, !.

login_attempts(Attempts) :-
    Attempts > 0,
    write('Enter username: '), read(Username),
    write('Enter password: '), read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl, !
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        login_attempts(Remaining)
    ).
