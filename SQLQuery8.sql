use LDB2
GO

SELECT yellow_card
FROM Jugador_Partido
LEFT JOIN Jugadores
ON Jugador_Partido.yellow_card = Jugadores.yellow_cars_recieved;

SELECT home_team_score
FROM Equipo
RIGHT JOIN Evento
ON Equipo.home_wins = Evento.home_team_score;

SELECT away_defeats
FROM Equipo
INNER JOIN Evento
ON Equipo.away_defeats = Evento.away_team_score;

SELECT
    game_week,goals_conceeded,mins_played,team_name,Nombre,position,yellow_cars_recieved,red_cars_recieved,jersey_no
FROM Jugador_Partido
CROSS JOIN Jugadores
ORDER BY
team_name,
Nombre,
game_week;
    

SELECT player_id, NombreCompletuseo
from Jugadores
where player_id > (select player_id from Jugadores where SegundoApellido = 'Lazio')

SELECT * INTO 
FROM ;

SELECT Jugadores.NombreCompletuseo, Puntaje_De_Goles.goal_time
INTO CustomersJugadores2020
FROM Jugadores
LEFT JOIN Puntaje_De_Goles ON Jugadores.player_id = Puntaje_De_Goles.goal_time;