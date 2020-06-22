--Tutorial 5 - SUM and COUNT
--https://sqlzoo.net/wiki/SUM_and_COUNT

--5.1
SELECT SUM(population)
FROM world

--5.2
SELECT DISTINCT(continent)
FROM world

--5.3
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa';

--5.4
SELECT COUNT(name)
FROM world
WHERE area >= 1000000;

--5.5
SELECT SUM(population)
FROM world
WHERE name in ('Estonia', 'Latvia', 'Lithuania');

--5.6
SELECT Continent, COUNT(name)
FROM world
GROUP BY continent;

--5.7
SELECT Continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent;

--5.8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;
