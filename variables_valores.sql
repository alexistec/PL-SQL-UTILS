//EJEMPLO CREACION DE VARIABLES Y ASIGNACION DE VALORES  

set serveroutput on;
--Estructura basica Crear variables y asignar valores en PL/SQL

DECLARE
    --Definicion de funciones y variables
    nombreEmpleado nvarchar2(100);
    fecha date;
    activo boolean;
    salario number;
BEGIN 

    nombreEmpleado := 'Alexis Quionez'; --asigno el valor a la variable nombreEmpleado
    fecha := sysdate;
    activo := true;
    salario := 1500;
    activo := true;
    --imprimimos y concatemos las variables
    dbms_output.put_line('Empleado '|| nombreEmpleado);
    dbms_output.put_line('Fecha '|| fecha);
    dbms_output.put_line('Activo ' || case when activo then 'ACTIVO' else 'FALSO' end); --CASO en el que requerimos imprimir un BOOLEANO


END ;
/

