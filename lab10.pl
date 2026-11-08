square(Area, Perimeter , Side) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Area, Perimeter, Length, Width) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

triangle(Area, Perimeter, Base, Height, A, B) :-
    Area is (Base * Height) / 2,
    Perimeter is Base + A + B .


user(reema6, 5987).
user(ghala7, 2222).
user(leena88,4545).
user(abdullah, 4433).

login :-
    attempts(3).

attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.').

attempts(A) :-
    A > 0,
    write('Enter username: '),
    read(Uname),
    write('Enter password: '),
    read(Pass),
    (
        user(Uname, Pass)
        ->
        write('Login Successful!')
        ;
        write('Login Unsuccessful!'),
        nl,
        B is A - 1,
        attempts(B)
    ).
