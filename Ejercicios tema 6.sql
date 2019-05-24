/*Ejercicio 1: Declara un cursor implícito que devuelva el nº de alumnos del curso cuyo nombre sea “PL/SQL”.*/

DECLARE
    cursor1 NUMBER;
BEGIN
    select numAlumnos into cursor1 from tablaCursos where nombreCurso = 'PL/SQL';
END;



/*Ejercicio 2: Declara un cursor explícito en el que se obtengan los campos de: nombre, marca, modelo y año de fabricación de la tabla coches*/

DECLARE
    cursor2 
    is 
    Select nombre, marca. modelo, annoFabricacion into cursor2 from tablaCoches;
    nombre VARCHAR(30);
    marca VARCHAR(30);
    modelo VARCHAR(30);
    annoFabricacion NUMBER;
    BEGIN
        open cursor2;
        fetch cursor2 into nombre, marca, modelo, annoFabricacion;
        close cursor2;
END;