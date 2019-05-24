/* Ejercicio 1: Realiza un if en el que, si la variable “número” es menor que 5 escriba por pantalla suspendido; que en el caso de que este comprendida 
entre 6 y 8 escriba aprobada y, en caso contrario, escriba sobresaliente.*/

if numero < 5 then
    dbms_output.putline('suspendido');
else
    if numero > 6 and numero < 8 then
        dbms_output.putline('aprobado');
    else
        dbms_output.putline('sobresaliente');
    end if;
end if;



/*Ejericicio 2: Realiza un bucle en el que se cree una variable y vaya insertando en ella las veces que pasa por el bucle 
(Al poder realizarse como bucle infinito, se pondrá la condición de salida a 100).*/

DECLARE
    contador NUMBER := 0;
BEGIN
    LOOP
        contador := contador + 1;
    EXIT WHEN contador = 100;
    END LOOP;
END;


