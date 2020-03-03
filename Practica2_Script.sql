USE [LDB]
GO
/****** Object:  Table [dbo].[Cama]    Script Date: 3/2/2020 6:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cama](
	[bed_id] [int] NOT NULL,
	[NPlanta] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bed_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctores]    Script Date: 3/2/2020 6:23:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctores](
	[doctor_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
	[Especialidad] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Salario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeras]    Script Date: 3/2/2020 6:23:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeras](
	[nurse_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
	[Telefono] [int] NOT NULL,
	[Salario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nurse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteCama]    Script Date: 3/2/2020 6:23:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteCama](
	[BedPatient_id] [int] NOT NULL,
	[NPlanta] [varchar](3) NOT NULL,
	[FechaDeAsignacion] [datetime] NOT NULL,
	[FechaDeSalida] [datetime] NOT NULL,
	[NCama] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BedPatient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 3/2/2020 6:23:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planta](
	[floor_id] [varchar](3) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NumeroCamas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[floor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cama]  WITH CHECK ADD FOREIGN KEY([NPlanta])
REFERENCES [dbo].[Planta] ([floor_id])
GO
ALTER TABLE [dbo].[PacienteCama]  WITH CHECK ADD FOREIGN KEY([NCama])
REFERENCES [dbo].[Cama] ([bed_id])
GO
