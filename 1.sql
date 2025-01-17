USE [Conference]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[IDActivites] [int] IDENTITY(1,1) NOT NULL,
	[IDEvent] [int] NOT NULL,
	[TimeStart] [date] NOT NULL,
	[IDOrganizers] [int] NULL,
	[IDModerators] [int] NOT NULL,
	[IDJury] [int] NOT NULL,
	[IDParticipants] [int] NOT NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[IDActivites] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IDCity] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IDCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[IDCountry] [int] IDENTITY(1,1) NOT NULL,
	[NameCountry] [nvarchar](max) NOT NULL,
	[EnglishName] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[CodeNumber] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[IDCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[IDDirection] [int] IDENTITY(1,1) NOT NULL,
	[NameDirection] [nvarchar](max) NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[IDDirection] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[IDEvent] [int] IDENTITY(1,1) NOT NULL,
	[NameEvent] [nvarchar](max) NOT NULL,
	[Datee] [date] NULL,
	[Days] [int] NOT NULL,
	[IDCity] [int] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IDEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jury]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[IDJury] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[IDPol] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[IDCountry] [int] NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[IDDirection] [int] NULL,
	[Pasword] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[IDJury] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[IDModerators] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[IDPol] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[IDCountry] [int] NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[NameEvent] [nvarchar](max) NULL,
	[IDDirection] [int] NULL,
	[Pasword] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[IDModerators] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizers]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizers](
	[IDOrganizers] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DateOfBirth] [date] NOT NULL,
	[IDCountry] [int] NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Pasword] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[IDPol] [int] NOT NULL,
 CONSTRAINT [PK_Organizers] PRIMARY KEY CLUSTERED 
(
	[IDOrganizers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[IDParticipants] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[IDCountry] [int] NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Pasword] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[IDPol] [int] NOT NULL,
 CONSTRAINT [PK_Participants_1] PRIMARY KEY CLUSTERED 
(
	[IDParticipants] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pol]    Script Date: 19.02.2024 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pol](
	[IDPol] [int] IDENTITY(1,1) NOT NULL,
	[NamePol] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pol] PRIMARY KEY CLUSTERED 
(
	[IDPol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Event] FOREIGN KEY([IDEvent])
REFERENCES [dbo].[Event] ([IDEvent])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Event]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Jury] FOREIGN KEY([IDJury])
REFERENCES [dbo].[Jury] ([IDJury])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Jury]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Moderators] FOREIGN KEY([IDModerators])
REFERENCES [dbo].[Moderators] ([IDModerators])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Moderators]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Organizers] FOREIGN KEY([IDOrganizers])
REFERENCES [dbo].[Organizers] ([IDOrganizers])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Organizers]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Participants] FOREIGN KEY([IDParticipants])
REFERENCES [dbo].[Participants] ([IDParticipants])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Participants]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_City] FOREIGN KEY([IDCity])
REFERENCES [dbo].[City] ([IDCity])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_City]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Country] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Country] ([IDCountry])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Country]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Direction] FOREIGN KEY([IDDirection])
REFERENCES [dbo].[Direction] ([IDDirection])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Direction]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Pol] FOREIGN KEY([IDPol])
REFERENCES [dbo].[Pol] ([IDPol])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Pol]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Country] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Country] ([IDCountry])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Country]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Direction] FOREIGN KEY([IDDirection])
REFERENCES [dbo].[Direction] ([IDDirection])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Direction]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Pol] FOREIGN KEY([IDPol])
REFERENCES [dbo].[Pol] ([IDPol])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Pol]
GO
ALTER TABLE [dbo].[Organizers]  WITH CHECK ADD  CONSTRAINT [FK_Organizers_Country] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Country] ([IDCountry])
GO
ALTER TABLE [dbo].[Organizers] CHECK CONSTRAINT [FK_Organizers_Country]
GO
ALTER TABLE [dbo].[Organizers]  WITH CHECK ADD  CONSTRAINT [FK_Organizers_Pol] FOREIGN KEY([IDPol])
REFERENCES [dbo].[Pol] ([IDPol])
GO
ALTER TABLE [dbo].[Organizers] CHECK CONSTRAINT [FK_Organizers_Pol]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Participants_Country] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Country] ([IDCountry])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Participants_Country]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Participants_Country1] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Country] ([IDCountry])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Participants_Country1]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Participants_Pol] FOREIGN KEY([IDPol])
REFERENCES [dbo].[Pol] ([IDPol])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Participants_Pol]
GO
