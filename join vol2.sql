select a.first_name, a.last_name
from actors as a
join actor_movie as am
on a.id= am.actor_id
group by a.first_name, a.last_name
having count(am.movie_id) >= 2;

select m.title
from movies as m
join actor_movie as am
on m.id = am.movie_id
group by m.title
having count(am.actor_id)>=2;

select *
from actors as a
left join actor_movie as am
on a.id = am.actor_id
left join movies as m
on m.id= am.movie_id;

select * 
from movies as m
left join actor_movie as am
on m.id = am.movie_id
where am.id is null;

select *
from actors as a
left join actor_movie as am
on a.id= am.actor_id
where am.id is null;

select actors.first_name, actors.last_name
from actors 
join actor_movie
on actors.id= actor_movie.actor_id
group by actors.first_name, actors.last_name
having count(actor_movie.movie_id)>=2;










