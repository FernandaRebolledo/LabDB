USE [LDB2]
GO
/****** Object:  View [dbo].[v_1]    Script Date: 5/30/2020 8:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_1]
as
SELECT away_defeats
FROM Equipo
INNER JOIN Evento
ON Equipo.away_defeats = Evento.away_team_score;
GO
/****** Object:  View [dbo].[v_2]    Script Date: 5/30/2020 8:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_2]
as
SELECT Jugadores.Edad, Jugadores.Nombre, Jugadores.dt_of_bir
FROM Jugadores;
GO
/****** Object:  View [dbo].[v_3]    Script Date: 5/30/2020 8:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_3]
as
SELECT player_id, NombreCompletuseo
from Jugadores
where player_id > (select player_id from Jugadores where SegundoApellido = 'Lazio')
GO
/****** Object:  View [dbo].[v_4]    Script Date: 5/30/2020 8:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_4]
as
SELECT yellow_card
FROM Jugador_Partido
LEFT JOIN Jugadores
ON Jugador_Partido.red_card = Jugadores.red_cars_recieved;
GO
/****** Object:  View [dbo].[v_5]    Script Date: 5/30/2020 8:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_5]
as
SELECT
    game_week,goals_conceeded,mins_played,team_name,Nombre,position,yellow_cars_recieved,red_cars_recieved,jersey_no
FROM Jugador_Partido
CROSS JOIN Jugadores
GO
