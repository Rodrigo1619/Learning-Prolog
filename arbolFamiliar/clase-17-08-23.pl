% Relacion madre/2
madre(josefina, mario).
madre(josefina, ligia) .
madre(ligia, regina) .
madre(ligia,  jacinta) .
madre(silvia, jaime) .
madre(silvia, carlos) .
madre(silvia, marina) .

% Relacion padre/2
padre(manuel, ligia) .
padre(manuel, mario) .
padre(julio, regina) .
padre(julio, jacinta) .
padre(mario, jaime) .
padre(mario, carlos) .
padre(mario , marina) .


% Inferencias de hijos, hermanos, etc

% Abuelo:

abuelo(X, Y) :-
    padre(X, Z) ,
    ( padre(Z, Y) ; madre(Z, Y)).

%abuela:
abuela(X, Y) :-
    madre(X, Z) ,
    ( padre(Z, Y) ; madre(Z, Y)).
%abuelos
abuelos(X,Y) :-
    abuelo(X,Y) ; abuela(X,Y) .

%forma correcta? de hacerlo
%
%abuelos(X,Y) :-
%   abuelo(X,Y) .

%
%abuelos(X,Y) :-
%   abuela(X,Y) .

% Hermanos

hermano(X, Y) :-
    padre(P, X) , padre(P, Y) ,
    madre(M, X) , madre(M, Y).

% Tio
%
tio(X, Y) :-
    hermano(X, Z) ,
    padre(Z, Y) .

tio(X, Y) :-
    hermano(X, Z) ,
    madre(Z, Y) .
%Primo

primo(X, Y) :-
    padre(X, Z) ,
    madre(Y, W) ,
    hermano(Z, W) .
primo(X, Y) :-
    madre(X, Z) ,
    padre(Y, W) ,
    hermano(Z, W) .

primo(X, Y) :-
    padre(X, Z) ,
    madre(Y, W) ,
    hermano(Z, W) .

primo(X, Y) :-
    madre(X, Z) ,
    madre(Y, W) ,
    hermano(Z, W) .
%Solucion de la clase
%primo(X, Y) :-
%   (madre(X, Z) ; padre(X, Z)),
%   (madre(Y, W) ; padre(Y, W)),
%   hermano(Z, W) .






h(X, Y) :-
    padre(P, X) , padre(P, Y) .
