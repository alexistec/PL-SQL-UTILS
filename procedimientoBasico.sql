CREATE OR REPLACE PROCEDURE actualizar_fecha_empleados
AS

BEGIN
    update empleados set actualizado = sysdate;
END;
/


--Utilizacion
excute actualizar_fecha_empleados;