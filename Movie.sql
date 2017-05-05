select *
from movies;

select id, title
from movies
limit 10;

select movieid
from movies
where title = 'Made in America (1993)';

select *
from movies
order by title asc
limit 10;

select *
from movies
where title like '%Godfather%';



select substring(title, 17, 4) as year
from movies
where title like '%Godfather, The%';

select *
from movies
where genres like '%Comedy%';

select *
from movies
where genres like '%Comedy%' and title like '%(2000)%';

select *
from movies
where (title like '%(2001)%' or title like '%(2002)%') and lower(title) like '%super%';

select m.title, r.rating
from movies m
inner join ratings r on m.movieid = r.movieid
where title like '%Godfather, The%';


select m.title, r.rating
from movies m
inner join ratings r on m.movieid = r.movieid
where title like '%Godfather, The%'
order by r.timestamp desc;

select m.title, l.imdbid, m.genres
from movies m
inner join links l on m.movieid = l.movieid
where m.title like '%(2005)' and m.genres like '%Comedy%';

select m.*
from movies m
LEFT JOIN ratings r on m.movieid = r.movieid
where r.rating is null;


select m.*
from movies m
inner join movie_genre mg on m.movieid = mg.movieid
inner join genre g on mg.genre_id = g.id
where g.genres = 'Fantasy';






























