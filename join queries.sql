select series.title, genres.name
from series
join genres
on series.genre_id = genres.id;

select episodes.title, actors.first_name, actors.last_name
from episodes
join actor_episode
on episodes.id = actor_episode.episode_id
join actors
on actor_episode.actor_id = actors.id;

select distinct a.first_name, a.last_name
from actors as a
join actor_movie as am
on a.id= am.actor_id
join movies as m 
on m.id = am.movie_id
where m.title like "%Guerra de las galaxias%";

select genres.name, count(movies.id)
from movies
right join genres
on genres.id = movies.genre_id
group by genres.name
