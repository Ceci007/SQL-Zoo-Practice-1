--Tutorial 1 - Select names
--https://napier.sqlzoo.net/wiki/SELECT_names

--1.1
SELECT name FROM world
  WHERE name LIKE 'Y%'

--1.2
SELECT name FROM world
  WHERE name LIKE '%Y'

--1.3
SELECT name FROM world
  WHERE name LIKE '%X%'

--1.4
SELECT name FROM world
  WHERE name LIKE '%LAND'

--1.5
SELECT name FROM world
  WHERE name LIKE 'C%' AND name like '%ia';

--1.6
SELECT name FROM world
  WHERE name LIKE '%oo%'

--1.7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

--1.8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

--1.9
SELECT name FROM world
 WHERE name LIKE '%o__o%'

--1.10
SELECT name FROM world
 WHERE name LIKE '____'

--Extra Credit
--1.11
SELECT name
  FROM world
 WHERE name = capital;

--1.12
SELECT name
  FROM world
 WHERE capital = concat(name, ' City');
