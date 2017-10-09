--funcion global
create or replace function detectar_mayor(x in number ,y in number)
return number

IS

BEGIN
    IF (x>y) THEN
        return x;
    ELSE
        return y;
    END IF;
END;




--UTILIZACION DE LA FUNCION
set serveroutput on;

DECLARE
    a number :=10;
    b number :=25;
    z number;

BEGIN
    z := detectar_mayor(a,b); --llamamos a la funcion creada
    dbms_output.put_line('El mayor es '|| z);

END;
/