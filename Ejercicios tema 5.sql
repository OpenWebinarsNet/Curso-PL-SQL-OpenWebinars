/**Ejercicio 1: Una excepción que diga que el valor no puede ser positivo.*/

DECLARE
    numero NUMBER := 3;
BEGIN
    if numero > 0 then
        RAISE numero_positivo;
    end if;
EXCEPTION
    WHEN numero_positivo then
        dbms_output.putline('El valor no puede ser positivo');
END;



/**Ejercicio 2: Una excepción que indique que el valor introducido en una variable de tipo varchar no es válido.*/

DECLARE
    nombreCurso VARCHAR(15);
BEGIN
    select nombre into nombreCurso from tablaCursos;
    if nombre = 'Pl/Sql' then
        RAISE curso_invalido;
    else
        dbms_output.putline('El curso es correcto');
    end if;
EXCEPTION
    WHEN curso_invalido then
        dbms_output.putline('El curso obtenido no es valido');
END;



/**Ejercicio 3: Una excepción personalizada indicando que el número introducido no puede ser divisible entre 0*/

DECLARE
    numero NUMBER(3):= 100;
    resultado NUMBER(3) := numero/0;
BEGIN
    resultado:= numero/0;
EXCEPTION
    WHEN raise_application_error then
        dbms_output.putline(número,'No puede ser dividido entre 0');
END;