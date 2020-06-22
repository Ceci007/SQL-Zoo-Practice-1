--Tutorial 8 - Using Null
--https://sqlzoo.net/wiki/Using_Null 

--8.1
SELECT name
FROM teacher
WHERE dept IS null;

--8.2
SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id);

--8.3
SELECT teacher.name, dept.name
 FROM teacher LEFT JOIN dept
           ON (teacher.dept=dept.id);

--8.4
SELECT teacher.name, dept.name
 FROM teacher RIGHT JOIN dept
           ON (teacher.dept=dept.id);

--8.5
SELECT name, COALESCE(mobile, '07986 444 2266') AS mobile
FROM teacher;

--8.6
SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept
ON teacher.dept = dept.id;

--8.7
SELECT COUNT(name), COUNT(mobile)
FROM teacher;

--8.8
SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN  dept
ON dept.id = teacher.dept
GROUP BY dept.name;

--8.9
SELECT name,
CASE WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci'
ELSE 'Art'
END
FROM teacher;

--8.10
SELECT name,
CASE
WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci'
WHEN teacher.dept = 3 THEN 'Art'
ELSE 'None'
END
FROM teacher;
