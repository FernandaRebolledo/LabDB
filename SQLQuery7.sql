use LDB2
go

SELECT player_id,team_name,Nombre,PrimerApellido,SegundoApellido,position,goals_scored,yellow_cars_recieved,red_cars_recieved,jersey_no,dt_of_bir
  FROM Jugadores
 WHERE position = 'DF'

 SELECT team_name,hometown,home_wins,home_drawns,home_defeats,away_wins,away_drawns,away_defeats
 FROM Equipo
 WHERE home_wins = 1

 SELECT game_week,home_team_score,away_team_score,fixture_date
 FROM Evento
 WHERE away_team_score = 0

 SELECT goal_id,game_week,player_id,goal_time
 FROM Puntaje_De_Goles
 WHERE goal_id = 1

 SELECT game_week,player_id,goals_conceeded,mins_played,yellow_card,red_card
 FROM Jugador_Partido
 WHERE goals_conceeded = 3

 SELECT COUNT(player_id), dt_of_bir
FROM Jugadores
GROUP BY dt_of_bir
ORDER BY COUNT(player_id) DESC;

SELECT COUNT(home_wins), hometown, team_name, home_wins
FROM Equipo
GROUP BY hometown, team_name, home_wins


SELECT COUNT(home_team_score), home_team_score,fixture_date
FROM Evento
GROUP BY home_team_score,fixture_date


SELECT COUNT(goal_time), goal_time,player_id
FROM Puntaje_De_Goles
GROUP BY goal_time, player_id


SELECT COUNT(goals_conceeded), goals_conceeded, player_id
FROM Jugador_Partido
GROUP BY goals_conceeded,player_id
ORDER BY COUNT(goals_conceeded) DESC;


SELECT COUNT(home_team_score)  FROM Evento WHERE home_team_score = 2;
SELECT DISTINCT position FROM Jugadores;
SELECT MIN(goal_time) FROM Puntaje_De_Goles;
SELECT MAX(goal_time) FROM Puntaje_De_Goles;
SELECT SUM(mins_played) FROM Jugador_Partido;
SELECT AVG(Edad)  FROM Jugadores;



SELECT COUNT(player_id), jersey_no
FROM Jugadores
GROUP BY jersey_no
HAVING COUNT(player_id) > 0;

SELECT COUNT(goal_id), goal_time
  FROM Puntaje_De_Goles
 GROUP BY goal_time
HAVING COUNT(goal_id) > 0;

SELECT COUNT(player_id), goals_conceeded
  FROM Jugador_Partido
 GROUP BY goals_conceeded
HAVING COUNT(player_id) = 1;

SELECT COUNT(hometown), home_wins
  FROM Equipo
 GROUP BY home_wins
HAVING COUNT(hometown) > 1;

SELECT COUNT(game_week), home_team_score
  FROM Evento
 GROUP BY home_team_score
HAVING COUNT(game_week) > 1;



SELECT TOP 3  * FROM Jugadores
WHERE position ='MF';

SELECT TOP 3 * FROM Equipo
WHERE away_wins = 3;

SELECT TOP 3 * FROM Evento
WHERE away_team_score =1;

SELECT TOP 3 * FROM Jugador_Partido
WHERE goals_conceeded = 1;

SELECT TOP	1 * FROM Puntaje_De_Goles
WHERE goal_id= 3;