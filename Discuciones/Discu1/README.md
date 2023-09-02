# EJERCICIO 6
En ese ejercicio lo que se quiere es que haya una relacion triple de alianza entre la clausula aliado, eso quiere decir que en base a la base de conocimiento que se ha generado, el que diga true de una triple alianza es 
```
aliado(usa, japon, ucrania).
```
# Simbolo \\+
Este simbolo "que solo es una pleca", es lo que se usa para la negacion

# Ejemplo de euclides
se usa euclides(N,0,N).
Este es el caso base para cuando M valga 0, y se pasa como tercer argumento N para decir que lo que vamos a regresar es igual a N, osea que vamos a regresar N.

# atom_concat
es un predicado en Prolog que se utiliza para concatenar dos átomos (cadenas de texto) y obtener un nuevo átomo que es el resultado de la concatenación
```
?- atom_concat('Hola, ', 'mundo!', Saludo).

resultado:
Saludo = 'Hola, mundo!'

```