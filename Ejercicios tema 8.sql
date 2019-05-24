/*Ejercicio 1: Crea el paquete “PaqueteCoche”, el cuál tendrá un registro con los siguientes campos: nº de bastidor, modelo, matrícula y año de fabricación. 
Así mismo, tendrán dos procedimientos: actualizarModelo (que pasándole como parámetro el nombre, actualiza el nombre) y borrarCoche (que pasándole un nº de bastidor, 
borra el coche)*/

CREATE PACKAGE PaqueteCoche IS
TYPE coche is record(
    numBastidos NUMBER(8);
    modelo VARCHAR(20);
    matricula VARCHAR(20);
    annoFabricacion NUMBER(4);
)
    PROCEDURE actualizarModelo(nombreCoche VARCHAR);
    PROCEDURE borrarCoche(numBastidor NUMBER);

END;