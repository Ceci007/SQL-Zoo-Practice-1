--Tutorial 7 - More Join
--https://sqlzoo.net/wiki/More_JOIN_operations

--7.1
SELECT id, title
 FROM movie
 WHERE yr=1962

--7.2
SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

--7.3
SELECT id, title, yr
FROM movie
WHERE title like '%STAR TREK%'
ORDER BY yr

--7.4
SELECT id
FROM actor
WHERE name = 'Glenn Close';

--7.5
SELECT id
FROM movie
WHERE title = 'Casablanca'

--7.6
SELECT name
FROM actor JOIN casting
ON ID = casting.actorid
WHERE movieid = 11768;

--7.7
SELECT name
FROM actor JOIN casting
ON ID = casting.actorid
WHERE movieid = 10522;

--7.8
SELECT title
FROM movie
     JOIN casting ON id = casting.movieid
     JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford'

--7.9
SELECT title
FROM movie
     JOIN casting ON id = casting.movieid
     JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford' AND casting.ord != 1

--7.10
SELECT title, actor.name
FROM movie JOIN casting ON id = casting.movieid
JOIN actor ON actorid = actor.id
WHERE casting.ord = 1 AND movie.yr = 1962

--7.11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

--7.12
SELECT title, name
FROM movie
     JOIN casting ON movie.id = movieid
     JOIN actor ON actorid = actor.id
WHERE movie.id IN (SELECT casting.movieid
                   FROM casting
                   WHERE actorid = (SELECT id
                                    FROM actor
                                    WHERE name = 'Julie Andrews'))
                                    AND ord = 1

--7.13
SELECT name
FROM actor
JOIN casting ON id = casting.actorid
WHERE ord = 1
GROUP BY name
HAVING COUNT(name) >= 15
ORDER BY name

--7.14
SELECT title, COUNT(actorid)
FROM movie
   JOIN casting ON id = casting.movieid
     JOIN actor ON actorid = actor.id
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title

--7.15
SELECT name FROM actor a JOIN casting c ON a.id = actorid JOIN movie m ON movieid = m.id
  WHERE movieid IN (SELECT m.id FROM movie m JOIN casting c ON movieid = m.id
  JOIN actor a ON a.id = actorid WHERE name = 'Art Garfunkel') AND name <> 'Art Garfunkel';

