--- Write a query in SQL to find the name and year of the movies
select  mov_title,mov_year
from movie;

---  Write a query in SQL to find the year when the movie American Beauty released.
select mov_year
from movie
where mov_title = 'American Beauty';

select mov_title
from movie
where mov_year = 1999;

select mov_title
from movie
where mov_year < 1998;

select rev_name
from reviewer
union
select mov_title
from movie;

select reviewer.rev_name
from reviewer,rating
where rating.rev_id = reviewer.rev_id
and rating.rev_stars>=7
and reviewer.rev_name IS NOT NULL;

select mov_title
from movie
where mov_id NOT IN (
select mov_id
from rating);

select rev_name
from reviewer
inner join rating USING(rev_id)
where rev_stars IS NULL;

select dir_fname, dir_iname, mov_title
from director
natural join movie_director
natural join movie
natural join movie_cast
where role is NOT NULL
and mov_title = 'Eyes Wide Shut';