/*Ejercicio 1: Crea el trigger “tr_Curso_01” después de realizar la inserción del nombre y la descripción del curso en la tabla curso*/

Create trigger tr_Curso_01
    after insert on curso
    for each row
Declare
    --No es necesario crear variables
Begin
    Insert into curso
    (nombre, descripcion)
    values
    (:NEW, nombreNuevo, descripcionNueva, SYSDATE);
End;



/*Ejercicio 2: Crea el trigger “tr_Curso_02” antes de realizar la modificación del numHoras del curso PL/SQL de la tabla curso*/

Create trigger tr_Curso_02
    before update of numHoras
    on curso
    for each row
    when(:new.nomCurso='curso PL/SQL')
    Begin
        Update curso
        set numeroHoras= numHoras
        where nomCurso= 'curso PL/SQL';
End;

