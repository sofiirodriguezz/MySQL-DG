# selects
#1

select *
from movies;

#2
select first_name, last_name, rating
from actors;

#3
select title
from series;

#4
select first_name, last_name
from actors
where rating > 7.5 ;

#5
select title, rating, awards
from movies
where rating >7.5 and awards>2;

#6
select title, rating
from movies
order by rating asc;

#7
select *
from movies
where title like "%Toy Story%";

#8
select *
from actors
where first_name like "Sam%";

#9
select * 
from movies
where release_date between "2004-01-01" and "2008-12-31";

#10
select title as titulo
from series;

#11
select *
from movies
where rating > 3
and awards>1
order by rating desc;

#12
select *
from movies
where rating > 3
and awards>1
order by rating desc
limit 3
offset 10;

#13
select * 
from episodes
order by rating asc
limit 3;

#14
select id, first_name as nombre ,last_name as apellido, rating
from actors




