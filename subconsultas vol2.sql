select *
from movies
where rating >= (
select avg(rating)
from movies
);

select *
from movies
where rating >= (
select avg(rating)
from movies
where rating <> 0
);

select * 
from actors as a
where a.id not in (
select actor_id
from actor_movie
) and a.id not in (
select actor_id 
from actor_episode
);

select * 
from actors as a
where not exists (
select *
from actor_movie
where actor_movie.actor_id = a.id
) and not exists (
select *
from actor_episode
where actor_episode.actor_id = a.id
);













