USE [master]
GO
/****** Object:  Database [PostDB]    Script Date: 9/26/2020 7:26:34 PM ******/
CREATE DATABASE [PostDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PostDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SHUVOSQLEXP\MSSQL\DATA\PostDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PostDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SHUVOSQLEXP\MSSQL\DATA\PostDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PostDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PostDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PostDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PostDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PostDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PostDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PostDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PostDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PostDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PostDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PostDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PostDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PostDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PostDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PostDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PostDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PostDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PostDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PostDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PostDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PostDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PostDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PostDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PostDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PostDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PostDB] SET  MULTI_USER 
GO
ALTER DATABASE [PostDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PostDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PostDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PostDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PostDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PostDB]
GO
/****** Object:  Table [dbo].[tbl_Comment]    Script Date: 9/26/2020 7:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Comment](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[CommentDescription] [varchar](500) NOT NULL,
	[CommentDate] [datetime] NULL,
	[UserId] [bigint] NOT NULL,
	[LikeCount] [int] NULL,
	[DislikeCount] [int] NULL,
	[PostId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Post]    Script Date: 9/26/2020 7:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Post](
	[PostId] [bigint] IDENTITY(1,1) NOT NULL,
	[PostName] [varchar](100) NOT NULL,
	[PostDate] [datetime] NULL,
	[UserId] [bigint] NOT NULL,
	[TotalComments] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 9/26/2020 7:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[RoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 9/26/2020 7:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[RoleId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Comment] ON 

INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (1, N'Comment 1', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 2, 268, 128, 1)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (3, N'Comment 2', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 3, 268, 128, 1)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (4, N'Comment 3', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 4, 268, 128, 1)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (5, N'Comment 4', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 2, 268, 128, 3)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (6, N'Comment 5', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 3, 268, 128, 3)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (7, N'Comment 6', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 4, 268, 128, 3)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (8, N'Comment 7', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 4, 268, 128, 3)
INSERT [dbo].[tbl_Comment] ([CommentId], [CommentDescription], [CommentDate], [UserId], [LikeCount], [DislikeCount], [PostId]) VALUES (9, N'Comment 8', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 2, 268, 128, 6)
SET IDENTITY_INSERT [dbo].[tbl_Comment] OFF
SET IDENTITY_INSERT [dbo].[tbl_Post] ON 

INSERT [dbo].[tbl_Post] ([PostId], [PostName], [PostDate], [UserId], [TotalComments]) VALUES (1, N'Post 1', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[tbl_Post] ([PostId], [PostName], [PostDate], [UserId], [TotalComments]) VALUES (3, N'Post 2', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[tbl_Post] ([PostId], [PostName], [PostDate], [UserId], [TotalComments]) VALUES (6, N'Post 3', CAST(N'2020-01-02T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_Post] OFF
SET IDENTITY_INSERT [dbo].[tbl_Role] ON 

INSERT [dbo].[tbl_Role] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[tbl_Role] OFF
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([UserId], [UserName], [RoleId]) VALUES (1, N'Admin', 1)
INSERT [dbo].[tbl_User] ([UserId], [UserName], [RoleId]) VALUES (2, N'User1', 2)
INSERT [dbo].[tbl_User] ([UserId], [UserName], [RoleId]) VALUES (3, N'User2', 2)
INSERT [dbo].[tbl_User] ([UserId], [UserName], [RoleId]) VALUES (4, N'User3', 2)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
ALTER TABLE [dbo].[tbl_Comment] ADD  DEFAULT ((0)) FOR [LikeCount]
GO
ALTER TABLE [dbo].[tbl_Comment] ADD  DEFAULT ((0)) FOR [DislikeCount]
GO
ALTER TABLE [dbo].[tbl_Post] ADD  DEFAULT ((0)) FOR [TotalComments]
GO
ALTER TABLE [dbo].[tbl_Comment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Comment_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[tbl_Post] ([PostId])
GO
ALTER TABLE [dbo].[tbl_Comment] CHECK CONSTRAINT [FK_tbl_Comment_PostId]
GO
ALTER TABLE [dbo].[tbl_Comment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Comment_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Comment] CHECK CONSTRAINT [FK_tbl_Comment_UserId]
GO
ALTER TABLE [dbo].[tbl_Post]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Post_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Post] CHECK CONSTRAINT [FK_tbl_Post_UserId]
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Role] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_RoleId]
GO
USE [master]
GO
ALTER DATABASE [PostDB] SET  READ_WRITE 
GO
