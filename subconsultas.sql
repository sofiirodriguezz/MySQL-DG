select * 
from canciones
where id in(
select id_cancion
from canciones_de_playlists
group by id_cancion
having count(id_playlist)>=5);

select *
,
(
select sum(total)
from facturas
) as total_facturado
from facturas;

select *,
(
select count(*)
from facturas
where facturas.id_cliente= clientes.id
) as total_facturas
from clientes













