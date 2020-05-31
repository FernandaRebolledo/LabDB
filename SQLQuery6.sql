USE [LDB2]
GO

INSERT INTO Jugadores (player_id,team_name,Nombre,PrimerApellido,SegundoApellido,position,goals_scored,yellow_cars_recieved,red_cars_recieved,jersey_no,dt_of_bir)
     VALUES
      
		   (001,'A','Etrit','Berisha','Lazio','GK',1,5,4,22,'1989-03-10'),
		   (002,'B','Andi','Lila','Giannina','DF',8,1,0,2,'1986-02-12'),
		   (003,'C','Ermir','Lenjani','Nantes','MF',6,2,6,3,'1989-08-05'),
		   (004,'D','Elseid','Hysaj','Napoli','DF',7,2,2,4,'1994-02-20'),
		   (005,'E','Lorik','Cana','Nantes','MF',13,3,2,5,'1983-07-27'),
		   (006,'F','Frederic' ,'Veseli','Lugano','DF',10,2,3,6,'1992-11-20'),
		   (007,'G','Migjen','Basha','Como','MF',12,2,9,7,'1987-01-05'),
		   (008,'H','Ledian','Memushaj','Pescara','GK',17,2,9,8,'1986-12-17'),
		   (009,'I','Armando','Sadiku','Vaduz','FD',23,2,5,9,'1991-05-27'),
		   (010,'J','Shkelzen','Gashi','Colorado','FD',22,2,7,10,'1988-07-15');
GO

INSERT INTO Equipo
           (team_name,hometown,home_wins,home_drawns,home_defeats,away_wins,away_drawns,away_defeats)
     VALUES

		   ('A','Puerto Vallarta',1,0,2,2,0,1),
		   ('B','Cancun',0,1,2,1,4,3),
		   ('C','Campeche',2,0,1,4,2,2),
		   ('D','San Cristóbal',2,1,0,5,3,2),
		   ('E','Mérida',0,1,2,2,5,3),
		   ('F','Allende',1,2,0,3,2,1),
		   ('G','Veracruz',1,2,0,3,2,1),
		   ('H','CMX',2,1,0,4,1,3),
		   ('I','Monterrey',2,1,0,3,0,3),
		   ('J','Sayulita',1,2,0,6,4,2);
		   go

INSERT INTO Evento (game_week,home_team_score,away_team_score,fixture_date)
     VALUES
 
		   (1,2,1,'2016-06-11'),
		   (2,0,1,'2016-06-12'),
		   (3,2,1,'2016-06-13'),
		   (4,1,1,'2016-06-14'),
		   (5,0,1,'2016-06-15'),
		   (6,1,0,'2016-06-16'),
		   (7,2,0,'2016-06-17'),
		   (8,1,0,'2016-06-18'),
		   (9,1,1,'2016-06-19'),
		   (10,0,2,'2016-06-20');
GO

INSERT INTO Puntaje_De_Goles (goal_id,game_week,player_id,goal_time)
     VALUES
		   (1,1,001,1902),
		   (2,2,002,1406),
		   (3,3,003,1813),
		   (4,4,004,2302),
		   (5,5,005,4502),
		   (6,6,006,5834),
		   (7,7,007,7823),
		   (8,8,008,7343),
		   (9,9,009,0321),
		   (10,10,010,3023);

GO


INSERT INTO Jugador_Partido (game_week,player_id,goals_conceeded,mins_played,yellow_card,red_card)

     VALUES

		   (1,001,3,38,0,0),
		   (2,002,1,43,2,0),
		   (3,003,6,45,0,1),
		   (4,004,3,30,0,0),
		   (5,005,0,24,2,0),
		   (6,006,5,40,0,0),
		   (7,007,1,40,0,0),
		   (8,008,0,53,0,1),
		   (9,009,3,21,1,0),
		   (10,010,1,32,0,0);
GO

UPDATE Jugadores
   SET jersey_no = 45, position = 'GK'
 WHERE player_id = 005

 UPDATE Equipo
   SET home_wins = 1, home_defeats = 0
 WHERE team_name = 'F'

  UPDATE Evento
   SET fixture_date = '2016-06-22'
 WHERE game_week = 8

   UPDATE Puntaje_De_Goles
   SET goal_time = 1300
 WHERE player_id = 3

 UPDATE Jugador_Partido
   SET goals_conceeded = 5
 WHERE player_id = 009

 DELETE FROM Jugadores WHERE Nombre = 'Shkelzen';
 DELETE FROM Equipo WHERE hometown = 'Sayulita';
 DELETE FROM Evento WHERE game_week= 1;