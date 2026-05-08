select distinct 
nombre,
case
when trim(compositor) = "" then "Desconocido" 
else compositor end as compositor,
concat("La cancion ", nombre, "fue compuesta por ", compositor) as Respuesta
from canciones;

select 
coalesce(estado_o_provincia_de_facturacion,
pais_de_facturacion,codigo_postal_de_facturacion) as Origen
from facturas ;


select 
floor(
datediff(fecha_de_contratacion, fecha_nacimiento)/365) as Diferencia
from empleados;

select month(fecha_factura) as mes
from facturas 
where id_cliente =2
order by fecha_factura