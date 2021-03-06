/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [BigWork]    Script Date: 2017/12/28 12:57:28 ******/
CREATE DATABASE [BigWork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BigWork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.QW\MSSQL\DATA\BigWork.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BigWork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.QW\MSSQL\DATA\BigWork_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BigWork] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BigWork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BigWork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BigWork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BigWork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BigWork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BigWork] SET ARITHABORT OFF 
GO
ALTER DATABASE [BigWork] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BigWork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BigWork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BigWork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BigWork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BigWork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BigWork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BigWork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BigWork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BigWork] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BigWork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BigWork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BigWork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BigWork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BigWork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BigWork] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BigWork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BigWork] SET RECOVERY FULL 
GO
ALTER DATABASE [BigWork] SET  MULTI_USER 
GO
ALTER DATABASE [BigWork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BigWork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BigWork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BigWork] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BigWork] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BigWork', N'ON'
GO
ALTER DATABASE [BigWork] SET QUERY_STORE = OFF
GO
USE [BigWork]
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
USE [BigWork]
GO
/****** Object:  Table [dbo].[essary]    Script Date: 2017/12/28 12:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[essary](
	[essaryName] [nchar](20) NOT NULL,
	[essaryDate] [date] NOT NULL,
	[essary] [nvarchar](max) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[essaryContent] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentinfo]    Script Date: 2017/12/28 12:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nicheng] [nchar](10) NULL,
	[truename] [nchar](10) NULL,
	[xb] [bit] NULL,
	[csrq] [date] NULL,
	[zy] [nchar](10) NULL,
	[kc] [nchar](10) NULL,
	[xq] [nchar](10) NULL,
	[bz] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usertable]    Script Date: 2017/12/28 12:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usertable](
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NULL,
 CONSTRAINT [PK_usertable] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[essary] ON 

INSERT [dbo].[essary] ([essaryName], [essaryDate], [essary], [ID], [essaryContent]) VALUES (N'魏康健                 ', CAST(N'2017-12-26' AS Date), N'图书馆自习', 20, N'一起出去约自习')
INSERT [dbo].[essary] ([essaryName], [essaryDate], [essary], [ID], [essaryContent]) VALUES (N'小红跟                 ', CAST(N'2016-12-24' AS Date), N'你好，世界', 3, N'测试')
INSERT [dbo].[essary] ([essaryName], [essaryDate], [essary], [ID], [essaryContent]) VALUES (N'你好                  ', CAST(N'1992-06-06' AS Date), N'阿萨德', 4, NULL)
INSERT [dbo].[essary] ([essaryName], [essaryDate], [essary], [ID], [essaryContent]) VALUES (N'小红                  ', CAST(N'2017-12-25' AS Date), N'找人看电影', 18, N'null')
INSERT [dbo].[essary] ([essaryName], [essaryDate], [essary], [ID], [essaryContent]) VALUES (N'王大仙                 ', CAST(N'2017-12-31' AS Date), N'一起出去看电影', 19, N'你想陪我出去玩吗')
SET IDENTITY_INSERT [dbo].[essary] OFF
SET IDENTITY_INSERT [dbo].[studentinfo] ON 

INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (6, N'你是谁       ', NULL, 1, NULL, N'通信工程      ', N'          ', N'          ', NULL)
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (5, N'王美丽       ', N'小红        ', 0, NULL, N'电气工程      ', N'计算机导论&数据结构', N'music     ', NULL)
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (3, N'张三        ', N'李四        ', 0, CAST(N'1995-12-06' AS Date), N'计算机科学与技术  ', N'计算机导论&数据结构', N'          ', N' 你好       ')
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (7, N'123       ', N'123       ', 1, CAST(N'1995-12-06' AS Date), N'通信工程      ', N'          ', N'music     ', NULL)
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (8, N'王三        ', N'张大        ', 1, CAST(N'1994-11-06' AS Date), N'通信工程      ', N'计算机导论&数据结构', N'music     ', N'无         ')
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (10, N'123       ', N'123       ', 1, CAST(N'1994-12-06' AS Date), N'通信工程      ', N'          ', N'          ', NULL)
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (20, N'1212      ', N'3434      ', 1, CAST(N'1996-12-06' AS Date), N'计算机科学与技术  ', N'          ', N'music&book', N'null      ')
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (18, N'王劳斯       ', N'阿斗的       ', 1, CAST(N'1996-11-08' AS Date), N'计算机科学与技术  ', N'          ', N'          ', N'null      ')
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (11, N'你好        ', N'阿瑟        ', 1, CAST(N'1994-12-06' AS Date), N'通信工程      ', N'          ', N'music     ', NULL)
INSERT [dbo].[studentinfo] ([id], [nicheng], [truename], [xb], [csrq], [zy], [kc], [xq], [bz]) VALUES (15, N'4554      ', N'4554      ', 1, NULL, N'通信工程      ', N'          ', N'          ', NULL)
SET IDENTITY_INSERT [dbo].[studentinfo] OFF
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'*         ', N'11        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'1234      ', N'1234      ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'12345     ', N'12345     ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'12345678  ', N'12345678  ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'12354     ', N'48754     ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'22        ', N'22        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'44        ', N'44        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'55        ', N'55        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'77        ', N'77        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'88        ', N'88        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'99        ', N'99        ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'admin     ', N'admin     ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'wkj123    ', N'123       ')
INSERT [dbo].[usertable] ([username], [password]) VALUES (N'wkj6622531', N'6622531   ')
USE [master]
GO
ALTER DATABASE [BigWork] SET  READ_WRITE 
GO
