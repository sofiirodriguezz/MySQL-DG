create view actores as

select a.id as actor,
a.first_name as nombre,
a.last_name as apellido,
a.rating,
a.favorite_movie_id as pelicula_fav_id
from actors as a
join actor_movie as am
on a.id= am.actor_id;

create view pelis_actores as 

select m.id, m.title, m.rating
from movies as m
join actor_movie as am
on m.id= am.movie_id
group by m.id,m.title,m.rating,m.awards,m.length
having count(am.actor_id)> 1;

create view actores_movie as
select distinct a.first_name, a.last_name, m.title
from actors as a
left join actor_movie as am
on a.id= am.actor_id
join movies as m
on m.id = am.movie_id






