
% --- Square ---
square(Side, Area, Perimeter) :-
    Area is Side ** 2,
    Perimeter is 4 * Side.

calc_square :-
    write('Enter the length of the square side: '), read(Side),
    Area is Side ** 2,
    Perimeter is 4 * Side,
    write('Area of Square = '), write(Area), nl,
    write('Perimeter of Square = '), write(Perimeter), nl.

% --- Rectangle ---
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

calc_rectangle :-
    write('Enter the width of the rectangle: '), read(Width),
    write('Enter the height of the rectangle: '), read(Height),
    Area is Width * Height,
    Perimeter is 2 * (Width + Height),
    write('Area of Rectangle = '), write(Area), nl,
    write('Perimeter of Rectangle = '), write(Perimeter), nl.

% --- Triangle ---
triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.

calc_triangle :-
    write('Enter the base of the triangle: '), read(Base),
    write('Enter the vertical height of the triangle: '), read(Height),
    write('Enter side a: '), read(A),
    write('Enter side b: '), read(B),
    write('Enter side c: '), read(C),
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C,
    write('Area of Triangle = '), write(Area), nl,
    write('Perimeter of Triangle = '), write(Perimeter), nl.
