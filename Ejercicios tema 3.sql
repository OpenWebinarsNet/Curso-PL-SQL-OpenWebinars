/** Ejercicio 1: Declara las siguientes 3 variables:

Cantidad de tipo number.
Ciudad de tipo varchar con una longitud de 10
Alta de tipo boolean inicializada a False.*/

cantidad NUMBER;
ciudad VARCHAR(10);
alta BOOLEAN := false;



/*Ejercicio 2: Realiza una select con la suma de todos los códigos de cursos de la tabla Cursos e introducirlos en una variable.*/

select count(*) into varTotalCursos from tablaCursos;



/*Ejercicio 3: Declara las siguientes 2 constantes:

Número de alumnos del curso (siempre van a ser 15).
Máximo de cursor a estudiar (siempre van a ser 30).*/

numAlumnosCursos constant number := 15;
maxAlumnosEstudiar constant number := 30;