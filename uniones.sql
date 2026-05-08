select 
sum(octubre) as octubre,
sum(noviembre) as noviembre,
sum(diciembre) as diciembre
from(
#octubre
select 
month(fecha_factura),
sum(total) as octubre,
0 as noviembre,
0 as diciembre
from facturas
where year(fecha_factura) = 2010
and month(fecha_factura) =10
group by month(fecha_factura)

#noviembre
union all
select 
month(fecha_factura),
0 as octubre,
sum(total)  as noviembre,
0 as diciembre
from facturas
where year(fecha_factura) = 2010
and month(fecha_factura) =11
group by month(fecha_factura)

#diciembre
union all
select 
month(fecha_factura),
0 as octubre,
0  as noviembre,
sum(total) as diciembre
from facturas
where year(fecha_factura) = 2010
and month(fecha_factura) =12
group by month(fecha_factura)) as total_facturado