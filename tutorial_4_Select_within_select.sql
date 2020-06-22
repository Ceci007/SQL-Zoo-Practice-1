--Tutorial 4 - SELECT within SELECT
--https://napier.sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

--4.1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--4.2
SELECT name FROM world
WHERE continent = 'Europe'
AND GDP/population >
     (SELECT GDP/population FROM world
      WHERE name = 'United Kingdom');

--4.3
SELECT name, continent
FROM world
WHERE continent =
      (SELECT continent
       FROM world
       WHERE name ='Argentina')
OR continent =
      (SELECT continent
       FROM world
       WHERE name ='Australia')
ORDER BY name;

--4.4
SELECT name, population
FROM world
WHERE population > (SELECT population
FROM world
WHERE name = 'Canada')
AND population < (SELECT population
FROM world
WHERE name = 'Poland');

--4.5
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERe name = 'Germany')*100, 0),'%') AS percentage
FROM world
WHERE continent = 'Europe';

--4.6
SELECT name
  FROM world
 WHERE GDP >= ALL(SELECT GDP
                           FROM world
                          WHERE continent = 'Europe' AND GDP IS NOT null) AND continent != 'Europe';

--4.7
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

--4.8
SELECT continent, name
FROM world x
WHERE name <= ALL
             (SELECT name FROM world y
              WHERE y.continent = x.continent);

--4.9
SELECT name, continent, population
FROM world
WHERE continent NOT IN
     (SELECT DISTINCT continent
      FROM world
      WHERE population > 25000000);

--4.10
SELECT name, continent
FROM world x
WHERE population > ALL(SELECT population * 3
                       FROM world y
                       WHERE x.continent = y.continent
                       AND x.name <> y.name);

