sexo(jacinta, f).
sexo(josefina, f).
sexo(ligia, f).
sexo(marina, f).
sexo(silvia, f).
sexo(regina, f).

sexo(mario, m).
sexo(jaime, m).
sexo(carlos, m).
sexo(manuel, m).
sexo(julio, m).

% Relaci�n madre/2:
madre(josefina, mario).
madre(josefina, ligia).
madre(silvia, marina).
madre(silvia, jaime).
madre(silvia, carlos).
madre(ligia, regina).
madre(ligia, jacinta).

% Relaci�n padre/2:
padre(manuel, mario).
padre(manuel, ligia).
padre(mario, marina).
padre(mario, jaime).
padre(mario, carlos).
padre(julio, regina).
padre(julio, jacinta).

% Abuelos:

% Abuelo:
abuelo(X, Y):-
    padre(X, Z),
    padre(Z, Y).

abuelo(X, Y):-
    padre(X, Z),
    madre(Z, Y).

% Abuela:
abuela(X, Y):-
    madre(X, Z),
    padre(Z, Y).

abuela(X, Y):-
    madre(X, Z),
    madre(Z, Y).

%abuelos(X, Y):-
    %abuelo(X, Y) ; abuela(X, Y).


abuelos(X, Y):-
    abuelo(X, Y).

abuelos(X, Y):-
    abuela(X, Y).

% hermanos:
hermano(X, Y):-
    sexo(X, m),
    padre(P, X),
    padre(P, Y),
    madre(M, X),
    madre(M, Y),
    \==(X, Y).

hermana(X, Y):-
    sexo(X, f),
    padre(P, X),
    padre(P, Y),
    madre(M, X),
    madre(M, Y),
    \==(X, Y).

% ELABORAR LAS REGLAS: tios/2, primos/2.
% Expicar c�mo Prolog ejecuta una regla.
% Backtracking y otros predicados. Dar ejemplos.

% Relaci�n tio/2:
tio(X, Y):-
    padre(P, Y),
    hermano(X, P).

% Relaci�n primo/2:
primo(X, Y):-
    (   padre(U, X) ; madre(U, X)),
    (   padre(V, Y) ; madre(V, Y)),
    hermano(U, V).


algo(este).
algo(aquel).

prueba(X):-
    !, algo(X).

