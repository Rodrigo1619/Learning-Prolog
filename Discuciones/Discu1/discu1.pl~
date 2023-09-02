%ejercicio 6.
enemigo(rusia, ucrania).
enemigo(ucrania, rusia).
enemigo(rusia, usa).
enemigo(usa, rusia).
enemigo(rusia, japon).
enemigo(japon, rusia).
enemigo(usa, china).
enemigo(china, usa).
enemigo(usa, cuba).
enemigo(cuba, usa).
enemigo(usa, iran).
enemigo(iran, usa).

no_enemigo(X, Y):-
    not(enemigo(X, Y)),
    not(enemigo(Y, X)).

aliado(X, Y, Z):-
    no_enemigo(X, Y),
    no_enemigo(X, Z),
    no_enemigo(Y, Z),
    dif(X, Y),
    dif(X, Z),
    dif(Y, Z).



%2.
escribir_letra(N):-
    N =< 0,
    write("Debe ingresar un numero mayor a 0"),
    !, fail.

escribir_letra(N):-
    write("Digite la letra a repetir"),
    read(L),
    escribir(N, L).


escribir_letra(_, L):-
    \+ atom(L),
    writeln("Debe escribir una letra"),
    !, fail.


escribir(0, _) :- !.


escribir(N, L):-
    N > 0,
    writeln(L),
    N1 is N - 1,
    escribir(N1, L).


%Ej. 3 Grafos

conexion(a, b, 4).
conexion(a, c, 2).
conexion(b, c, 8).
conexion(b, e, 9).
conexion(b, d, 7).
conexion(c, d, 5).
conexion(c, e, 3).
conexion(d, f, 6).
conexion(e, f, 1).

%Paraa cuando la conexion es directa
camino(Inicio, Final, Peso):-
    conexion(Inicio, Final, Peso), !.

camino(Inicio, Final, Peso):-
    conexion(Inicio, Intermedio, P1),
    camino(Intermedio, Final, P2),
    Peso is P1 + P2.

%ej. Euclides
euclides(N, 0, N):- !.

euclides(N, M, X):-
    R is N mod M,
    euclides(M, R, X).

%Ej.5
calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete, 400).
calorias(pollo, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces, 500).
calorias(naranja, 50).

 valor_calorico(X, Y, Z, V):-
    calorias(X, A),
    calorias(Y, B),
    calorias(Z, C),
    V is A + B + C.

comida_equilibrada(X, Y, Z):-
    valor_calorico(X, Y, Z, V),
    V =< 800,
    writeln("La comida es saludable").

comida_equilibrada(X, Y, Z):-
    valor_calorico(X,Y, Z, V),
    V > 800,
    writeln("La comida no es saludable").

% Ejer 3, adivinar un numero random, para ejecutar el programa solamente
% basta con poner adivinar_numero.

adivinar_numero :-
    random(1, 101, NumeroSecreto),  % Genera un número aleatorio entre 1 y 100
    adivinar(NumeroSecreto, 0). %recibe el numero secreto y el contador de intentos

adivinar(NumeroSecreto, Intentos) :-
    write('Adivina el número secreto (entre 1 y 100): '),
    read(NumeroUsuario),
    validar_adivinanza(NumeroUsuario, NumeroSecreto, Intentos).

validar_adivinanza(NumeroUsuario, NumeroSecreto, Intentos) :-
    NumeroUsuario =:= NumeroSecreto,
    write('¡Felicitaciones! Adivinaste el número en '), write(Intentos), write(' intentos.'), nl.

validar_adivinanza(NumeroUsuario, NumeroSecreto, Intentos) :-
    NumeroUsuario < NumeroSecreto,
    write('El número secreto es mayor. Intenta nuevamente.'), nl,
    NuevosIntentos is Intentos + 1,
    adivinar(NumeroSecreto, NuevosIntentos).

validar_adivinanza(NumeroUsuario, NumeroSecreto, Intentos) :-
    NumeroUsuario > NumeroSecreto,
    write('El número secreto es menor. Intenta nuevamente.'), nl,
    NuevosIntentos is Intentos + 1,
    adivinar(NumeroSecreto, NuevosIntentos).

%conversiones de decimal a binario, octal y hexadecimal

%binario
decimal_a_binario(0, "0").
decimal_a_binario(1, "1").
decimal_a_binario(N, Binario) :-
    N > 1,
    Resto is N mod 2,
    Cociente is N // 2,
    decimal_a_binario(Cociente, RestoBinario),
    atom_concat(RestoBinario, Resto, Binario).

%octal
decimal_a_octal(0, "0").
decimal_a_octal(1, "1").
decimal_a_octal(2, "2").
decimal_a_octal(3, "3").
decimal_a_octal(4, "4").
decimal_a_octal(5, "5").
decimal_a_octal(6, "6").
decimal_a_octal(7, "7").
decimal_a_octal(N, Octal) :-
    N > 7,
    Resto is N mod 8,
    Cociente is N // 8,
    decimal_a_octal(Cociente, RestoOctal),
    atom_concat(RestoOctal, Resto, Octal).

%hexadecimal
decimal_a_hexadecimal(0, "0").
decimal_a_hexadecimal(1, "1").
decimal_a_hexadecimal(2, "2").
decimal_a_hexadecimal(3, "3").
decimal_a_hexadecimal(4, "4").
decimal_a_hexadecimal(5, "5").
decimal_a_hexadecimal(6, "6").
decimal_a_hexadecimal(7, "7").
decimal_a_hexadecimal(8, "8").
decimal_a_hexadecimal(9, "9").
decimal_a_hexadecimal(10, "A").
decimal_a_hexadecimal(11, "B").
decimal_a_hexadecimal(12, "C").
decimal_a_hexadecimal(13, "D").
decimal_a_hexadecimal(14, "E").
decimal_a_hexadecimal(15, "F").
decimal_a_hexadecimal(N, Hexadecimal) :-
    N > 15,
    Resto is N mod 16,
    Cociente is N // 16,
    decimal_a_hexadecimal(Cociente, RestoHexadecimal),
    atom_concat(RestoHexadecimal, Resto, Hexadecimal).
