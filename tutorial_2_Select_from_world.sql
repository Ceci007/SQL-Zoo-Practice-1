--Tutorial 2 - SELECT from World
--https://napier.sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

--2.1
SELECT name, continent, population FROM world

--2.2
SELECT name FROM world
WHERE population > 200000000;

--2.3
SELECT name, GDP/Population
FROM world
WHERE population > 200000000;

--2.4
SELECT name, population/1000000 AS population_in_millions
FROM world
WHERE continent = 'South America';

--2.5
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

--2.6
SELECT name
FROM world
WHERE name LIKE '%United%';

--2.7
SELECT name, population, area
FROM world
WHERE population > 250000000 OR area > 3000000;

--2.8
SELECT name, population, area
FROM world
WHERE population > 250000000 XOR area > 3000000;

--2.9
SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2)
FROM world
WHERE continent = 'South America';

--2.10
SELECT name, ROUND(GDP/population, -3)
FROM world
WHERE GDP >= 1000000000000;

--2.11
SELECT name, capital
  FROM world
 WHERE Length(name) = Length(capital);

--2.12
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital, 1) AND name != capital;

--2.13
SELECT name
   FROM world
WHERE name LIKE '%a%'
      AND name LIKE '%e%'
      AND name LIKE '%i%'
      AND name LIKE '%o%'
      AND name LIKE '%u%'
  AND name NOT LIKE '% %'
