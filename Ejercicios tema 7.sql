/*Ejercicio 1: Realiza un procedimiento, el cual actualizará el nombre del curso cuyo código sea 1034. (Los parámetros se pasarán en notación posicional).*/

CREATE PROCEDURE actualizarCurso(nombreNuevo VARCHAR, codigo NUMBER) IS
BEGIN
    update tablaCursos
    set nombre = nombreNuevo,
    FX_ACTUALIZACION = SYSDATE
    where cod = codigo;
END actualizarCurso;



/*Ejercicio 2: Realiza una función que multiplique dos números, pasándole los parámetros usando la notación nominal.*/

CREATE FUNCTION multiplicacion (numero1=> 50, numero2=> 5) return NUMBER IS
BEGIN
resultado NUMBER := 0;

resultado := numero1*numero2;

return(resultado);
END multiplicacion;
