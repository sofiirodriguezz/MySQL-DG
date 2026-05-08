select id, titulo, id_artista 
from albumes;

select primer_nombre, telefono
from clientes;

select primer_nombre, telefono
from clientes
where pais = 'USA';

select *
from canciones
where milisegundos between 200000 and 300000;

select * 
from clientes
where pais = 'Spain' or pais = 'Argentina';

select*
from generos
order by nombre asc;

select primer_nombre,ciudad,pais
from clientes
order by pais desc, ciudad ;

select nombre as nombres_de_medios
from tipos_de_medio;

select *
from canciones 
order by milisegundos desc
limit 3;

select *
from canciones
order by nombre asc
limit 5 offset 5



