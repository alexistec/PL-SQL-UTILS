set serveroutput on;

DECLARE 

    nombre nvarchar2(50) := ' Alexis';
    fecha_hoy date;

BEGIN
    fecha_hoy := sysdate;

    --Funciones por default para trabajar con variables String
    dbms_output.put_line('Total caracteres de una variable '||length(nombre)); --cuenta cantidad de caracteres de la variable nombre
    dbms_output.put_line('Trim limpia espacios '||Trim(nombre)); --cuenta cantidad de caracteres de la variable nombre
    dbms_output.put_line('Minusculas '||lower(nombre)); --imprime alexis
    dbms_output.put_line('Mayusculas '||upper(nombre));--imprime ALEXIS
    dbms_output.put_line('Reemplazar caracteres'||replace(nombre,'A','O'));--imprime Olexis
    
    --Funciones para trabajar con fechas
    dbms_output.put_line('Fecha actual '|| fecha_hoy);
    dbms_output.put_line('Agregar mes '|| add_months(fecha_hoy,1)); --SUMA EL MES
    dbms_output.put_line('Suma el dia '|| (fecha_hoy+1)); --SUMA EL dia
    
    --separar el dia y mes de una fecha
    dbms_output.put_line('Dia '|| to_char(fecha_hoy,'dd')); --extrae el nro de dia
    dbms_output.put_line('Mes '|| to_char(fecha_hoy,'MM')); --extrae el nro de mes
    dbms_output.put_line('Mes '|| to_char(fecha_hoy,'YY')); --extrae el nro de año
END;
/