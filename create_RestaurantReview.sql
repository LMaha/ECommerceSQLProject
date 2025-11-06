USE [master]
GO
/****** Object:  Database [RestaurantReview]    Script Date: 7/14/2018 10:40:09 AM ******/
CREATE DATABASE [RestaurantReview]

GO
ALTER DATABASE [RestaurantReview] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RestaurantReview].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RestaurantReview] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RestaurantReview] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RestaurantReview] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RestaurantReview] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RestaurantReview] SET ARITHABORT OFF 
GO
ALTER DATABASE [RestaurantReview] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RestaurantReview] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RestaurantReview] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RestaurantReview] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RestaurantReview] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RestaurantReview] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RestaurantReview] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RestaurantReview] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RestaurantReview] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RestaurantReview] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RestaurantReview] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RestaurantReview] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RestaurantReview] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RestaurantReview] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RestaurantReview] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RestaurantReview] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RestaurantReview] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RestaurantReview] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RestaurantReview] SET  MULTI_USER 
GO
ALTER DATABASE [RestaurantReview] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RestaurantReview] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RestaurantReview] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RestaurantReview] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RestaurantReview] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RestaurantReview] SET QUERY_STORE = OFF
GO
USE [RestaurantReview]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [RestaurantReview]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 7/14/2018 10:40:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[RestaurantId] [int] IDENTITY(1,1000) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Zipcode] [int] NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/14/2018 10:40:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
	[Comment] [nvarchar](50) NOT NULL,
	[Stars] [int] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/14/2018 10:40:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,100) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Restaurant] ON 

INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (1001, N'FRANKLININN', N'2313 Rochester Rd
', N'Pittsburgh
', 15237)
INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (2001, N'PIZZAROMA', N'8360 Perry Hwy
', N'Pittsburgh
', 15237)
INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (3001, N'BURGATORY', N'700 Providence Blvd
', N'Pittsburgh
', 15237)
INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (4001, N'ANDORA', N'1616 Mt Nebo Rd
', N'Sewickley
', 15143)
INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (5001, N'WALNUT', N'
424 Walnut St
', N'Sewickley
', 15143)
INSERT [dbo].[Restaurant] ([RestaurantId], [Name], [Address], [City], [Zipcode]) VALUES (27001, N'OLIVEGARDEN', N'8000 Perry Hwy
', N'Pittsburgh', 15237)
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserId], [RestaurantId], [Comment], [Stars]) VALUES (2, 101, 1001, N'Okay Service', 3)
INSERT [dbo].[Reviews] ([Id], [UserId], [RestaurantId], [Comment], [Stars]) VALUES (4, 201, 3001, N'Okay Food', 2)
INSERT [dbo].[Reviews] ([Id], [UserId], [RestaurantId], [Comment], [Stars]) VALUES (5, 301, 2001, N'Love it', 4)
INSERT [dbo].[Reviews] ([Id], [UserId], [RestaurantId], [Comment], [Stars]) VALUES (8, 401, 1001, N'Good Food', 4)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (1, N'JaneDoe')
INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (101, N'JoeDoe')
INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (201, N'WillSmith')
INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (301, N'AndreaSmith')
INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (401, N'BryanSmith')
INSERT [dbo].[Users] ([UserId], [UserName]) VALUES (501, N'JerryHill')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([RestaurantId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Restaurant]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO
USE [master]
GO
ALTER DATABASE [RestaurantReview] SET  READ_WRITE 
GO
