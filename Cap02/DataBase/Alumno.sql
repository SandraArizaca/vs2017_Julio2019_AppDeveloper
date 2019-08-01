USE [Chinook]
GO

/****** Object:  Table [dbo].[Alumno]    Script Date: 31/07/2019 22:23:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Alumno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](300) NULL,
	[FechaNacimiento] [datetime] NULL,
	[TerminoEstudios] [bit] NULL
) ON [PRIMARY]
GO


