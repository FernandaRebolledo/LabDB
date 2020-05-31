USE LDB2
GO


CREATE PROCEDURE SelectAllJugadores @Edad nvarchar(10), @Nombre nvarchar(100)
AS
SELECT * FROM Jugadores WHERE Edad = @Edad AND Nombre = @Nombre
GO
EXEC SelectAllJugadores @Edad = '34', @Nombre = 'Andi';


-----------------------------------------------------------------------------------------------------------------------------
select * from Jugadores
CREATE TRIGGER JugadoresTrigger 
on Jugadores after insert
as                                        es de relleno pero si lo quito me marca eror el siguiente, asi que mejor lo dejamos 
insert into Jugadores valoues ('registro insertado',GETDATE())
-----------------------------------------------------------------------------------------------------------------------------


CREATE TRIGGER TR_DEL_Locations ON Jugadores
INSTEAD OF DELETE
AS
BEGIN
  Select 'Sample Instead of trigger' as Message
END

  CREATE TRIGGER tr_Jugadores ON Jugadores
    AFTER INSERT
    AS
    BEGIN
      UPDATE Jugadores
      SET dt_of_bir = GETDATE()
      FROM inserted;
        END
   GO

CREATE TRIGGER TR_TRIGGER_TEAM ON Equipo
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted; 
 SELECT * FROM inserted;

