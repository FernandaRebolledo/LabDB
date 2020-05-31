USE [LDB2]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 5/27/2020 1:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[team_name] [varchar](50) NOT NULL,
	[hometown] [varchar](50) NOT NULL,
	[home_wins] [int] NOT NULL,
	[home_drawns] [int] NOT NULL,
	[home_defeats] [int] NOT NULL,
	[away_wins] [int] NOT NULL,
	[away_drawns] [int] NOT NULL,
	[away_defeats] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[team_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 5/27/2020 1:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[game_week] [int] NOT NULL,
	[home_team_score] [int] NULL,
	[away_team_score] [int] NULL,
	[fixture_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[game_week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador_Partido]    Script Date: 5/27/2020 1:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador_Partido](
	[game_week] [int] NULL,
	[player_id] [int] NULL,
	[goals_conceeded] [int] NOT NULL,
	[mins_played] [int] NOT NULL,
	[yellow_card] [int] NULL,
	[red_card] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 5/27/2020 1:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[player_id] [int] NOT NULL,
	[team_name] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompletuseo]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
	[position] [varchar](45) NOT NULL,
	[goals_scored] [int] NOT NULL,
	[yellow_cars_recieved] [int] NOT NULL,
	[red_cars_recieved] [int] NOT NULL,
	[jersey_no] [int] NOT NULL,
	[dt_of_bir] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[dt_of_bir],getdate())),
PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puntaje_De_Goles]    Script Date: 5/27/2020 1:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puntaje_De_Goles](
	[goal_id] [int] NOT NULL,
	[game_week] [int] NULL,
	[player_id] [int] NULL,
	[goal_time] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[goal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (1, N'A', N'Etrit', N'Berisha', N'Lazio', N'GK', 1, 5, 4, 22, CAST(N'1989-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (2, N'B', N'Andi', N'Lila', N'Giannina', N'DF', 8, 1, 0, 2, CAST(N'1986-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (3, N'C', N'Ermir', N'Lenjani', N'Nantes', N'MF', 6, 2, 6, 3, CAST(N'1989-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (4, N'D', N'Elseid', N'Hysaj', N'Napoli', N'DF', 7, 2, 2, 4, CAST(N'1994-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (5, N'E', N'Lorik', N'Cana', N'Nantes', N'MF', 13, 3, 2, 5, CAST(N'1983-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (6, N'F', N'Frederic', N'Veseli', N'Lugano', N'DF', 10, 2, 3, 6, CAST(N'1992-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (7, N'G', N'Migjen', N'Basha', N'Como', N'MF', 12, 2, 9, 7, CAST(N'1987-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (8, N'H', N'Ledian', N'Memushaj', N'Pescara', N'GK', 17, 2, 9, 8, CAST(N'1986-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (9, N'I', N'Armando', N'Sadiku', N'Vaduz', N'FD', 23, 2, 5, 9, CAST(N'1991-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Jugadores] ([player_id], [team_name], [Nombre], [PrimerApellido], [SegundoApellido], [position], [goals_scored], [yellow_cars_recieved], [red_cars_recieved], [jersey_no], [dt_of_bir]) VALUES (10, N'J', N'Shkelzen', N'Gashi', N'Colorado', N'FD', 22, 2, 7, 10, CAST(N'1988-07-15T00:00:00.000' AS DateTime))
GO
/****** Object:  Index [UQ__Jugador___2A95337A96B5D0C6]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Jugador_Partido] ADD UNIQUE NONCLUSTERED 
(
	[game_week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Jugador___44DA120D02656DC1]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Jugador_Partido] ADD UNIQUE NONCLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Jugador___73BB6B35625C0394]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Jugador_Partido] ADD UNIQUE NONCLUSTERED 
(
	[yellow_card] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Jugador___AE160E00C43B218A]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Jugador_Partido] ADD UNIQUE NONCLUSTERED 
(
	[red_card] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Puntaje___2A95337A79F8D70C]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Puntaje_De_Goles] ADD UNIQUE NONCLUSTERED 
(
	[game_week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Puntaje___44DA120DD01A944F]    Script Date: 5/27/2020 1:15:15 PM ******/
ALTER TABLE [dbo].[Puntaje_De_Goles] ADD UNIQUE NONCLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Evento]  WITH NOCHECK ADD FOREIGN KEY([game_week])
REFERENCES [dbo].[Jugador_Partido] ([game_week])
GO
ALTER TABLE [dbo].[Jugadores]  WITH NOCHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[Puntaje_De_Goles] ([player_id])
GO
ALTER TABLE [dbo].[Jugadores]  WITH NOCHECK ADD FOREIGN KEY([team_name])
REFERENCES [dbo].[Equipo] ([team_name])
GO
ALTER TABLE [dbo].[Puntaje_De_Goles]  WITH CHECK ADD FOREIGN KEY([game_week])
REFERENCES [dbo].[Evento] ([game_week])
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [jersey_no2] CHECK  (((100)>(1)))
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [jersey_no2]
GO
