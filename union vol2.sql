select 
m.title as titulo,
g.name as genero,
"pelicula" as tipo_entretenimiento
from movies as m
join genres as g
on m.genre_id = g.id
union all

select 
s.title as titulo,
g.name as genero,
"serie" as tipo_entretenimiento
from series as s
join genres as g
on s.genre_id= g.id


