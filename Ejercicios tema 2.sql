/*Ejercicio 1: Declarar un bloque en el que haya una variable de tipo varchar y la escriba por pantalla*/

SET SERVEROUTPUT ON;

DECLARE
    prueba VARCHAR(5) := 'hola';

BEGIN
    dbms_output.put_line (prueba);

END;



/*Ejercicio 2: Declarar un bloque en el que haya una variable de tipo number, la escriba por pantalla y en el caso de que se produjese cualquier excepción la muestre por pantalla.*/

SET SERVEROUTPUT ON;

DECLARE
    pruebaNumerica NUMBER := '3';
    
BEGIN
    dbms_output.put_line (pruebaNumerica);

EXCEPTION
    WHEN other THEN dbms_output.put_line('Error producido ajeno a nosotros');

END;