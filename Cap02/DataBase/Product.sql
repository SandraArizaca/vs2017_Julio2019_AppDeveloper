USE [Chinook]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 31/07/2019 22:23:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
GO


