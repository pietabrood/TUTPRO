USE [master]
GO
/****** Object:  Database [TUTPRO]    Script Date: 2020/10/31 19:32:29 ******/
CREATE DATABASE [TUTPRO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TUTPRO', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TUTPRO.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TUTPRO_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TUTPRO_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TUTPRO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TUTPRO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TUTPRO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TUTPRO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TUTPRO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TUTPRO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TUTPRO] SET ARITHABORT OFF 
GO
ALTER DATABASE [TUTPRO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TUTPRO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TUTPRO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TUTPRO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TUTPRO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TUTPRO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TUTPRO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TUTPRO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TUTPRO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TUTPRO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TUTPRO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TUTPRO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TUTPRO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TUTPRO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TUTPRO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TUTPRO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TUTPRO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TUTPRO] SET RECOVERY FULL 
GO
ALTER DATABASE [TUTPRO] SET  MULTI_USER 
GO
ALTER DATABASE [TUTPRO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TUTPRO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TUTPRO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TUTPRO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TUTPRO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TUTPRO', N'ON'
GO
USE [TUTPRO]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Application]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application](
	[Application_ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [char](10) NOT NULL,
	[User_ID] [int] NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Application_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Booking_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Tutor_ID] [int] NOT NULL,
	[Session_ID] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degree]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree](
	[Degree_ID] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[Degree_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Demerit]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Demerit](
	[Demerit] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[DemeritDescription] [varchar](100) NOT NULL,
	[DemeritDate] [date] NOT NULL,
 CONSTRAINT [PK_Demerit] PRIMARY KEY CLUSTERED 
(
	[Demerit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade](
	[Grade_ID] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Grade_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HighSchoolStudent]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighSchoolStudent](
	[HighSchoolStudent_ID] [int] IDENTITY(1,1) NOT NULL,
	[Grade_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
 CONSTRAINT [PK_HighSchoolStudent] PRIMARY KEY CLUSTERED 
(
	[HighSchoolStudent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Module]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Module_ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [char](6) NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Module_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[Resource_ID] [int] IDENTITY(1,1) NOT NULL,
	[Module_ID] [int] NOT NULL,
	[Subject_ID] [int] NOT NULL,
	[UploadDate] [date] NOT NULL,
	[FileName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[Resource_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[Review_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tutor_ID] [int] NOT NULL,
	[StarRating] [char](5) NOT NULL,
	[ReviewDate] [date] NOT NULL,
	[Message] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Review_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Session]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Session](
	[Session_ID] [int] IDENTITY(1,1) NOT NULL,
	[Module_ID] [int] NOT NULL,
	[Subject_ID] [int] NOT NULL,
	[GoogleMeetLink] [varchar](50) NOT NULL,
	[DateTime] [date] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Session_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[StudentType_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentType]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentType](
	[StudentType_ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeofStudent] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StudentType] PRIMARY KEY CLUSTERED 
(
	[StudentType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[Subject_ID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tutor]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutor](
	[Tutor_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tutor] PRIMARY KEY CLUSTERED 
(
	[Tutor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TutorModule]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorModule](
	[TutorModule_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tutor_ID] [int] NOT NULL,
	[Module_ID] [int] NOT NULL,
 CONSTRAINT [PK_TutorModule] PRIMARY KEY CLUSTERED 
(
	[TutorModule_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TutorSubject]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorSubject](
	[TutorSubject_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tutor_ID] [int] NOT NULL,
	[Subject_ID] [int] NOT NULL,
 CONSTRAINT [PK_TutorSubject] PRIMARY KEY CLUSTERED 
(
	[TutorSubject_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UniversityStudent]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversityStudent](
	[University_Account] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Degree_ID] [int] NOT NULL,
 CONSTRAINT [PK_UniversityStudent] PRIMARY KEY CLUSTERED 
(
	[University_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserType_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PhoneNo] [char](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2020/10/31 19:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[UserType_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Admin_ID], [User_ID]) VALUES (1, 1)
INSERT [dbo].[Admin] ([Admin_ID], [User_ID]) VALUES (2, 2)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([Application_ID], [Status], [User_ID]) VALUES (1, N'Accepted  ', 2)
SET IDENTITY_INSERT [dbo].[Application] OFF
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([Degree_ID], [DegreeName]) VALUES (1, N'Bcom Informatics')
INSERT [dbo].[Degree] ([Degree_ID], [DegreeName]) VALUES (2, N'BIS Information Science')
INSERT [dbo].[Degree] ([Degree_ID], [DegreeName]) VALUES (3, N'BSC Computer Science')
INSERT [dbo].[Degree] ([Degree_ID], [DegreeName]) VALUES (4, N'Bcom Investment Management')
SET IDENTITY_INSERT [dbo].[Degree] OFF
SET IDENTITY_INSERT [dbo].[Demerit] ON 

INSERT [dbo].[Demerit] ([Demerit], [Student_ID], [DemeritDescription], [DemeritDate]) VALUES (1, 1, N'Missed tutor session', CAST(N'2020-10-06' AS Date))
INSERT [dbo].[Demerit] ([Demerit], [Student_ID], [DemeritDescription], [DemeritDate]) VALUES (2, 1, N'Rude during tutor sessions', CAST(N'2020-10-06' AS Date))
SET IDENTITY_INSERT [dbo].[Demerit] OFF
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([Grade_ID], [GradeName]) VALUES (2, N'8')
INSERT [dbo].[Grade] ([Grade_ID], [GradeName]) VALUES (3, N'9')
INSERT [dbo].[Grade] ([Grade_ID], [GradeName]) VALUES (4, N'10')
INSERT [dbo].[Grade] ([Grade_ID], [GradeName]) VALUES (5, N'11')
INSERT [dbo].[Grade] ([Grade_ID], [GradeName]) VALUES (6, N'12')
SET IDENTITY_INSERT [dbo].[Grade] OFF
SET IDENTITY_INSERT [dbo].[HighSchoolStudent] ON 

INSERT [dbo].[HighSchoolStudent] ([HighSchoolStudent_ID], [Grade_ID], [Student_ID]) VALUES (1, 2, 2)
INSERT [dbo].[HighSchoolStudent] ([HighSchoolStudent_ID], [Grade_ID], [Student_ID]) VALUES (2, 2, 3)
SET IDENTITY_INSERT [dbo].[HighSchoolStudent] OFF
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([Module_ID], [ModuleCode]) VALUES (1, N'INF272')
INSERT [dbo].[Module] ([Module_ID], [ModuleCode]) VALUES (2, N'INF271')
INSERT [dbo].[Module] ([Module_ID], [ModuleCode]) VALUES (3, N'INF261')
INSERT [dbo].[Module] ([Module_ID], [ModuleCode]) VALUES (4, N'INF225')
INSERT [dbo].[Module] ([Module_ID], [ModuleCode]) VALUES (5, N'OBS220')
SET IDENTITY_INSERT [dbo].[Module] OFF
SET IDENTITY_INSERT [dbo].[Resource] ON 

INSERT [dbo].[Resource] ([Resource_ID], [Module_ID], [Subject_ID], [UploadDate], [FileName]) VALUES (1, 1, 2, CAST(N'2020-10-06' AS Date), N'tester.pdf')
SET IDENTITY_INSERT [dbo].[Resource] OFF
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([Review_ID], [Tutor_ID], [StarRating], [ReviewDate], [Message]) VALUES (3, 1, N'5    ', CAST(N'2020-10-06' AS Date), N'Good work')
SET IDENTITY_INSERT [dbo].[Review] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Student_ID], [User_ID], [StudentType_ID]) VALUES (1, 3, 1)
INSERT [dbo].[Student] ([Student_ID], [User_ID], [StudentType_ID]) VALUES (2, 5, 2)
INSERT [dbo].[Student] ([Student_ID], [User_ID], [StudentType_ID]) VALUES (3, 6, 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentType] ON 

INSERT [dbo].[StudentType] ([StudentType_ID], [TypeofStudent]) VALUES (1, N'University')
INSERT [dbo].[StudentType] ([StudentType_ID], [TypeofStudent]) VALUES (2, N'HighSchool')
SET IDENTITY_INSERT [dbo].[StudentType] OFF
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Subject_ID], [SubjectName]) VALUES (2, N'Mathematics')
INSERT [dbo].[Subject] ([Subject_ID], [SubjectName]) VALUES (3, N'English')
INSERT [dbo].[Subject] ([Subject_ID], [SubjectName]) VALUES (4, N'Biology')
INSERT [dbo].[Subject] ([Subject_ID], [SubjectName]) VALUES (5, N'Chemistry')
INSERT [dbo].[Subject] ([Subject_ID], [SubjectName]) VALUES (6, N'Physical Science')
SET IDENTITY_INSERT [dbo].[Subject] OFF
SET IDENTITY_INSERT [dbo].[Tutor] ON 

INSERT [dbo].[Tutor] ([Tutor_ID], [User_ID]) VALUES (1, 2)
SET IDENTITY_INSERT [dbo].[Tutor] OFF
SET IDENTITY_INSERT [dbo].[UniversityStudent] ON 

INSERT [dbo].[UniversityStudent] ([University_Account], [Student_ID], [Degree_ID]) VALUES (1, 1, 3)
SET IDENTITY_INSERT [dbo].[UniversityStudent] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_ID], [UserType_ID], [Name], [Surname], [Email], [Username], [Password], [PhoneNo]) VALUES (1, 1, N'Mylan', N'Bhoora', N'u18200223@tuks.co.za', N'u18200223', N'971ECCE7DFD8BD425411394DC9AF7FD7F2CBD286D46A477CE12046DC7913A949', N'0843333703')
INSERT [dbo].[User] ([User_ID], [UserType_ID], [Name], [Surname], [Email], [Username], [Password], [PhoneNo]) VALUES (2, 2, N'Basheera', N'Hoosen', N'u19100788@tuks.co.za', N'u19100788', N'971ECCE7DFD8BD425411394DC9AF7FD7F2CBD286D46A477CE12046DC7913A949', N'0841241241')
INSERT [dbo].[User] ([User_ID], [UserType_ID], [Name], [Surname], [Email], [Username], [Password], [PhoneNo]) VALUES (3, 3, N'Burhaan', N'Pirjada', N'u18136240@tuks.co.za', N'u18136240', N'971ECCE7DFD8BD425411394DC9AF7FD7F2CBD286D46A477CE12046DC7913A949', N'0729693601')
INSERT [dbo].[User] ([User_ID], [UserType_ID], [Name], [Surname], [Email], [Username], [Password], [PhoneNo]) VALUES (5, 3, N'Test', N'Test', N'uwhatever@gmail.com', N'test', N'971ECCE7DFD8BD425411394DC9AF7FD7F2CBD286D46A477CE12046DC7913A949', N'0123456789')
INSERT [dbo].[User] ([User_ID], [UserType_ID], [Name], [Surname], [Email], [Username], [Password], [PhoneNo]) VALUES (6, 3, N'hash', N'test', N'1@1', N'hash', N'16EBC0E19D17A528651B95F415DD398B81D4F77D4F0D7CFF3831728CBA697957', N'1         ')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([UserType_ID], [UserDescription]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([UserType_ID], [UserDescription]) VALUES (2, N'Tutor')
INSERT [dbo].[UserType] ([UserType_ID], [UserDescription]) VALUES (3, N'Student')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_User]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Session] FOREIGN KEY([Session_ID])
REFERENCES [dbo].[Session] ([Session_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Session]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Student]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Tutor] FOREIGN KEY([Tutor_ID])
REFERENCES [dbo].[Tutor] ([Tutor_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Tutor]
GO
ALTER TABLE [dbo].[Demerit]  WITH CHECK ADD  CONSTRAINT [FK_Demerit_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Demerit] CHECK CONSTRAINT [FK_Demerit_Student]
GO
ALTER TABLE [dbo].[HighSchoolStudent]  WITH CHECK ADD  CONSTRAINT [FK_HighSchoolStudent_Grade] FOREIGN KEY([Grade_ID])
REFERENCES [dbo].[Grade] ([Grade_ID])
GO
ALTER TABLE [dbo].[HighSchoolStudent] CHECK CONSTRAINT [FK_HighSchoolStudent_Grade]
GO
ALTER TABLE [dbo].[HighSchoolStudent]  WITH CHECK ADD  CONSTRAINT [FK_HighSchoolStudent_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[HighSchoolStudent] CHECK CONSTRAINT [FK_HighSchoolStudent_Student]
GO
ALTER TABLE [dbo].[Resource]  WITH CHECK ADD  CONSTRAINT [FK_Resource_Module] FOREIGN KEY([Module_ID])
REFERENCES [dbo].[Module] ([Module_ID])
GO
ALTER TABLE [dbo].[Resource] CHECK CONSTRAINT [FK_Resource_Module]
GO
ALTER TABLE [dbo].[Resource]  WITH CHECK ADD  CONSTRAINT [FK_Resource_Subject] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[Resource] CHECK CONSTRAINT [FK_Resource_Subject]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Tutor] FOREIGN KEY([Tutor_ID])
REFERENCES [dbo].[Tutor] ([Tutor_ID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Tutor]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Module] FOREIGN KEY([Module_ID])
REFERENCES [dbo].[Module] ([Module_ID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Module]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Subject] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_StudentType] FOREIGN KEY([StudentType_ID])
REFERENCES [dbo].[StudentType] ([StudentType_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_StudentType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[Tutor]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Tutor] CHECK CONSTRAINT [FK_Tutor_User]
GO
ALTER TABLE [dbo].[TutorModule]  WITH CHECK ADD  CONSTRAINT [FK_TutorModule_Module] FOREIGN KEY([Module_ID])
REFERENCES [dbo].[Module] ([Module_ID])
GO
ALTER TABLE [dbo].[TutorModule] CHECK CONSTRAINT [FK_TutorModule_Module]
GO
ALTER TABLE [dbo].[TutorModule]  WITH CHECK ADD  CONSTRAINT [FK_TutorModule_Tutor] FOREIGN KEY([Tutor_ID])
REFERENCES [dbo].[Tutor] ([Tutor_ID])
GO
ALTER TABLE [dbo].[TutorModule] CHECK CONSTRAINT [FK_TutorModule_Tutor]
GO
ALTER TABLE [dbo].[TutorSubject]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject_Subject] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[TutorSubject] CHECK CONSTRAINT [FK_TutorSubject_Subject]
GO
ALTER TABLE [dbo].[TutorSubject]  WITH CHECK ADD  CONSTRAINT [FK_TutorSubject_Tutor] FOREIGN KEY([Tutor_ID])
REFERENCES [dbo].[Tutor] ([Tutor_ID])
GO
ALTER TABLE [dbo].[TutorSubject] CHECK CONSTRAINT [FK_TutorSubject_Tutor]
GO
ALTER TABLE [dbo].[UniversityStudent]  WITH CHECK ADD  CONSTRAINT [FK_UniversityStudent_Degree] FOREIGN KEY([Degree_ID])
REFERENCES [dbo].[Degree] ([Degree_ID])
GO
ALTER TABLE [dbo].[UniversityStudent] CHECK CONSTRAINT [FK_UniversityStudent_Degree]
GO
ALTER TABLE [dbo].[UniversityStudent]  WITH CHECK ADD  CONSTRAINT [FK_UniversityStudent_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[UniversityStudent] CHECK CONSTRAINT [FK_UniversityStudent_Student]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserType_ID])
REFERENCES [dbo].[UserType] ([UserType_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
USE [master]
GO
ALTER DATABASE [TUTPRO] SET  READ_WRITE 
GO
