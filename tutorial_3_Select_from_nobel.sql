--Tutorial 3 - SELECT FROM Nobel
--https://napier.sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial

--3.1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--3.2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

--3.3
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

--3.4
SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

--3.5
SELECT *
FROM nobel
WHERE yr BETWEEN 1980 AND 1989
AND subject = 'Literature';

--3.6
SELECT * FROM nobel
 WHERE winner = 'Jimmy Carter'
OR winner = 'Theodore Roosevelt'
OR winner = 'Woodrow Wilson'
OR winner = 'Barack Obama';

--3.7
SELECT winner
FROM nobel
WHERE winner LIKE 'John %';

--3.8
SELECT *
FROM nobel
WHERE yr = 1980 AND subject = 'Physics' OR yr = 1984 AND subject = 'Chemistry';

--3.9
SELECT *
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine');

--3.10
SELECT *
FROM nobel
WHERE yr < 1910 AND subject = 'Medicine' OR yr >= 2004 AND subject = 'Literature';

--3.11
SELECT *
FROM nobel
WHERE yr < 1910 AND subject = 'Medicine' OR yr >= 2004 AND subject = 'Literature';

--3.12
SELECT *
FROM nobel
WHERE winner = "EUGENE O'NEILL"

--3.13
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner ASC;

--3.14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY
CASE
  WHEN SUBJECT IN ('Physics', 'Chemistry') THEN 1
  ELSE 0
END,subject, winner;
