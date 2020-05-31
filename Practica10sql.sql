USE [LDB2]
GO
/****** Object:  StoredProcedure [dbo].[SelectAllJugadores]    Script Date: 5/30/2020 11:59:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllJugadores] @Edad nvarchar(10), @Nombre nvarchar(100)
AS
SELECT * FROM Jugadores WHERE Edad = @Edad AND Nombre = @Nombre
GO
