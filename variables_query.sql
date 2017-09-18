--Valores de un query  dentro de variables
--SELECT user from dual;

set serveroutput on;

DECLARE
    usuario nvarchar2(100);
    cantidad number;
    
BEGIN

    /*select user into usuario from dual; --asigno la query a la variable usuario
    select count(*) into cantidad from dual; --asigno la cantidad de registros a la variable cantidad
    
    dbms_output.put_line('USUARIO ES '|| usuario);
    dbms_output.put_line('CANTIDAD '||cantidad);*/
    
    --Otro metodo mas efectivo en una sola consulta asignar el valor a las DOS variables
    select user,count(*) into usuario,cantidad from dual;
    
    dbms_output.put_line('USUARIO es '||usuario);
    dbms_output.put_line('CANTIDAD es '||cantidad);
    

END;
/