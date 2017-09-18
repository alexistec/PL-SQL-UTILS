--Ejemplo basico de utilizacion de ARRAYS   
set serveroutput on;


DECLARE 
    --definimos los arreglos
    type alumnosArray is varray(5) of nvarchar2(100);
    type notasArray is varray(5) of number;
    
    alumnos alumnosArray;
    notas   notasArray;
BEGIN
    --asignacion de valores a los array
    alumnos := alumnosArray('Fernando','Florencia','Mister','Alexis','Marcelo');
    notas := notasArray(10,8,7,9,6);
    
    dbms_output.put_line('El alumno '|| alumnos(1)|| ' Tiene nota '||notas(1));
END;
/