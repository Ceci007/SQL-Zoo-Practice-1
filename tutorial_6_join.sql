--Tutorial 6 - Join
--https://sqlzoo.net/wiki/The_JOIN_operation

--6.1
SELECT matchid, player FROM goal
JOIN eteam
ON goal.teamid = eteam.id
  WHERE teamid = 'GER'

--6.2
SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012;

--6.3
SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER';

--6.4
SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE player like 'Mario%';

--6.5
SELECT player, teamid, coach, gtime
  FROM goal
JOIN eteam
ON teamid=id
 WHERE gtime<=10;

--6.6
SELECT mdate, teamname
FROM game
JOIN eteam
ON team1=eteam.id
WHERE coach = 'Fernando Santos';

--6.7
SELECT player
FROM goal
JOIN game
ON goal.matchid = game.id
WHERE stadium = 'National Stadium, Warsaw';

--6.8
SELECT distinct player
  FROM game JOIN goal ON matchid = id
    WHERE (team1='GER' OR team2='GER') AND goal.teamid != 'GER';

--6.9
SELECT teamname, COUNT(player)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname;

--6.10
SELECT stadium, count(player)
FROM game JOIN goal ON id=matchid
GROUP BY stadium;

--6.11
SELECT DISTINCT matchid, mdate, COUNT(teamid)
  FROM game JOIN goal ON id = matchid
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid;

--6.12
SELECT DISTINCT matchid, mdate, COUNT(teamid) AS goals
  FROM game JOIN goal ON id = matchid
 WHERE teamid = 'GER'
GROUP BY matchid;

--6.13
SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game JOIN goal ON matchid = id
GROUP BY matchid
ORDER BY mdate, matchid, team1, team2;
