USE [MarsRover]
GO
/****** Object:  Table [dbo].[Plateaus]    Script Date: 30/04/2019 04:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plateaus](
	[Id] [uniqueidentifier] NOT NULL,
	[Size_Width] [int] NOT NULL,
	[Size_Height] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Plateaus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rovers]    Script Date: 30/04/2019 04:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rovers](
	[Id] [uniqueidentifier] NOT NULL,
	[Direction] [int] NOT NULL,
	[Point_XPosition] [int] NOT NULL,
	[Point_YPosition] [int] NOT NULL,
	[PlateauId] [uniqueidentifier] NOT NULL,
	[IsLocked] [bit] NOT NULL,
 CONSTRAINT [PK_Rovers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rovers]  WITH CHECK ADD  CONSTRAINT [FK_Rovers_Plateaus_PlateauId] FOREIGN KEY([PlateauId])
REFERENCES [dbo].[Plateaus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rovers] CHECK CONSTRAINT [FK_Rovers_Plateaus_PlateauId]
GO
