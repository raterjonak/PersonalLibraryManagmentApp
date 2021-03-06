USE [master]
GO
/****** Object:  Database [PersonalLibraryManagmentDB]    Script Date: 6/20/2015 9:25:19 PM ******/
CREATE DATABASE [PersonalLibraryManagmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonalLibraryManagmentDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PersonalLibraryManagmentDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PersonalLibraryManagmentDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PersonalLibraryManagmentDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonalLibraryManagmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PersonalLibraryManagmentDB]
GO
/****** Object:  Table [dbo].[tbl_Book]    Script Date: 6/20/2015 9:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Borrow]    Script Date: 6/20/2015 9:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Borrow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Book_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Borrow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Member]    Script Date: 6/20/2015 9:25:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Book] ON 

INSERT [dbo].[tbl_Book] ([Id], [Title], [Author], [Publisher]) VALUES (1, N'Computer Fundamental', N'Monir', N'Rater Jonak')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Author], [Publisher]) VALUES (2, N'Basic Programing', N'Rajeeb', N'Rater Jonak')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Author], [Publisher]) VALUES (1002, N'Basic Algebra', N'Abu Mosa', N'Dhaka Publicstion')
INSERT [dbo].[tbl_Book] ([Id], [Title], [Author], [Publisher]) VALUES (1003, N'How to program', N'Deitel Deitel', N'Mc,GrowHill Publicstion')
SET IDENTITY_INSERT [dbo].[tbl_Book] OFF
SET IDENTITY_INSERT [dbo].[tbl_Borrow] ON 

INSERT [dbo].[tbl_Borrow] ([Id], [Member_Id], [Book_Id]) VALUES (1, 1, 1)
INSERT [dbo].[tbl_Borrow] ([Id], [Member_Id], [Book_Id]) VALUES (2, 4, 1)
INSERT [dbo].[tbl_Borrow] ([Id], [Member_Id], [Book_Id]) VALUES (1002, 5, 1003)
INSERT [dbo].[tbl_Borrow] ([Id], [Member_Id], [Book_Id]) VALUES (1003, 4, 1003)
SET IDENTITY_INSERT [dbo].[tbl_Borrow] OFF
SET IDENTITY_INSERT [dbo].[tbl_Member] ON 

INSERT [dbo].[tbl_Member] ([Id], [Number], [Name]) VALUES (1, N'm_1001', N'Monir')
INSERT [dbo].[tbl_Member] ([Id], [Number], [Name]) VALUES (3, N'm_1002', N'Pavel')
INSERT [dbo].[tbl_Member] ([Id], [Number], [Name]) VALUES (4, N'm_1003', N'Sajib')
INSERT [dbo].[tbl_Member] ([Id], [Number], [Name]) VALUES (5, N'm_1005', N'Abid')
SET IDENTITY_INSERT [dbo].[tbl_Member] OFF
ALTER TABLE [dbo].[tbl_Borrow]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Borrow_tbl_Book] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[tbl_Book] ([Id])
GO
ALTER TABLE [dbo].[tbl_Borrow] CHECK CONSTRAINT [FK_tbl_Borrow_tbl_Book]
GO
ALTER TABLE [dbo].[tbl_Borrow]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Borrow_tbl_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[tbl_Member] ([Id])
GO
ALTER TABLE [dbo].[tbl_Borrow] CHECK CONSTRAINT [FK_tbl_Borrow_tbl_Member]
GO
USE [master]
GO
ALTER DATABASE [PersonalLibraryManagmentDB] SET  READ_WRITE 
GO
