--INNER JOIN BASICO
select p.nombres,c.categoria 
from persona p,categoriapersona c
where 
p.rela_categoria = c.idcategoria;



--INNER JOIN 
select p.nombres,c.categoria 
from persona p inner join categoriapersona c
on p.rela_categoria= c.idcategoria;