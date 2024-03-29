USE [master]
GO
/****** Object:  Database [KscUniversity]    Script Date: 4/28/2014 7:39:08 AM ******/
CREATE DATABASE [KscUniversity]

GO
USE [KscUniversity]
GO
/****** Object:  Table [dbo].[tblComments]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblComments](
	[cmtID] [int] IDENTITY(1,1) NOT NULL,
	[cmtDate] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[eventID] [int] NOT NULL,
	[eventCom] [varchar](max) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblComments] PRIMARY KEY CLUSTERED 
(
	[cmtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContents]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContents](
	[contentID] [int] IDENTITY(1,1) NOT NULL,
	[eventID] [int] NOT NULL,
	[contentURL] [varchar](150) NULL,
	[Sender] [varchar](100) NULL,
	[isSelected] [int] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblContents] PRIMARY KEY CLUSTERED 
(
	[contentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEnrolls]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEnrolls](
	[enrollID] [int] IDENTITY(1,1) NOT NULL,
	[eventID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[eventScore] [int] NULL,
	[enrollStt] [int] NULL,
	[enrollDate] [datetime] NULL,
	[paymentDate] [datetime] NULL,
	[enrollFee] [float] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblEnroll] PRIMARY KEY CLUSTERED 
(
	[enrollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEvents]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEvents](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventDate] [datetime] NOT NULL,
	[eventName] [varchar](50) NOT NULL,
	[eventHost] [varchar](50) NULL,
	[eventMin] [int] NULL,
	[eventMax] [int] NULL,
	[eventDes] [varchar](max) NULL,
	[eventPrice] [float] NULL,
	[eventImg] [varchar](100) NULL,
	[eventWinner] [varchar](50) NULL,
	[eventRegBegin] [datetime] NULL,
	[eventStt] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblEvents] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFAQ]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFAQ](
	[faqID] [int] IDENTITY(1,1) NOT NULL,
	[faqQuestion] [varchar](max) NOT NULL,
	[faqAns] [varchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblFAQ] PRIMARY KEY CLUSTERED 
(
	[faqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFeedback]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFeedback](
	[fbID] [int] IDENTITY(1,1) NOT NULL,
	[fbFrom] [varchar](50) NOT NULL,
	[fbQuestion] [varchar](max) NOT NULL,
	[fbAns] [varchar](max) NULL,
	[fbDate] [varchar](50) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblFeedback] PRIMARY KEY CLUSTERED 
(
	[fbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[userType] [int] NOT NULL,
	[Fullname] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[userImg] [varchar](150) NULL,
	[userScore] [int] NULL,
	[userAddress] [varchar](500) NULL,
	[userPhone] [varchar](50) NULL,
	[isSubscribed] [bit] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[PopEvent]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[PopEvent] as
(SELECT C.eventID, count(S.EventID) AS EventCount, c.eventDate 
FROM tblEvents C Left JOIN tblEnrolls S 
ON C.eventID=S.eventID 
Where c.isDeleted = 'false' and c.eventStt =1
GROUP BY C.EventID,c.eventDate)



GO
/****** Object:  View [dbo].[TopActive]    Script Date: 4/28/2014 7:39:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TopActive]
as
select S.username ,count(r.username) as CounUser, Month(r.enrollDate) As MonthEnroll, Year( r.enrollDate) As YearEnroll
from tblEvents E left join tblEnrolls R on E.eventID=R.eventID left join tblUsers S on r.Username = s.Username
where s.Username != 'NULL'
group by s.Username, Month(r.enrollDate), Year( r.enrollDate)


GO
SET IDENTITY_INSERT [dbo].[tblComments] ON 

GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (1, N'2014-01-10', N'LucKy@gmail.com', 1, N'This is interesting event , the host is funny and polite', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (2, N'2014-01-25', N'Alex@yahoo.com', 1, N'I like this event ', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (3, N'2014-01-20', N'LucKy@gmail.com', 1, N'I think that event is good for student', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (4, N'2014-01-20', N'hello123@gmail.com', 2, N'I do not like event because event is noisy.', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (5, N'2014-01-20', N'JamNguyen@gmail.com', 2, N'Thanks for KSC ,I never foget event because it is very exciting ', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (6, N'2014-02-06', N'Kaylin1402@hotmail.com', 3, N'The host is professional.', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (7, N'2014-02-16', N'Linda@yahoo.com', 3, N'I like KSC', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (8, N'2014-02-28', N'Millo@hotmail.com', 4, N'Everything is good', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (9, N'2014-03-06', N'Steven@hotmail.com', 5, N'I feel everything so good', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (10, N'2014-03-08', N'Terrel@hotmail.com', 5, N'I want to join event again', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (11, N'2014-03-20', N'Paul@hotmail.com', 6, N'I think that event is good for student', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (12, N'2014-04-06', N'AdamSandle@gmail.com', 7, N'I like KSC', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (13, N'2014-04-20', N'JamNguyen@gmail.com', 8, N'I like this event ', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (14, N'21/3/2014', N'Linda@yahoo.com', 9, N'The host is professional.', 0)
GO
INSERT [dbo].[tblComments] ([cmtID], [cmtDate], [Username], [eventID], [eventCom], [isDeleted]) VALUES (15, N'21/3/2014', N'Kaylin1402@hotmail.com', 9, N'Everything is good', 0)
GO
SET IDENTITY_INSERT [dbo].[tblComments] OFF
GO
SET IDENTITY_INSERT [dbo].[tblContents] ON 

GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (1, 1, N'event.txt', N'Alex@yahoo.com', 1, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (2, 3, N'startup.txt', N'Kaylin1402@hotmail.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (3, 4, N'pts.txt', N'Millo@hotmail.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (4, 5, N'Steven.txt', N'Steven@hotmail.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (5, 6, N'android.txt', N'Jeffrey@yahoo.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (6, 7, N'lucky.txt', N'LucKy@gmail.com', 1, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (7, 8, N'angle.txt', N'Angle@yahoo.com', 1, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (8, 2, N'jamDoc.txt', N'JamNguyen@gmail.com', 1, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (9, 9, N'linda.txt', N'Linda@yahoo.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (10, 10, N'fastLife.txt', N'Taylor@gmail.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (11, 12, N'1602107_495541703883358_1174043474_o.jpg', N'Alex@yahoo.com', 1, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (12, 12, N'DSCN5080.JPG', N'Millo@hotmail.com', 0, 1)
GO
INSERT [dbo].[tblContents] ([contentID], [eventID], [contentURL], [Sender], [isSelected], [isDeleted]) VALUES (13, 12, N'1.png', N'AdamSandle@gmail.com', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tblContents] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEnrolls] ON 

GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (1, 1, N'123@hotmail.com', 30, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (2, 1, N'LucKy@gmail.com', 100, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2AC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (3, 1, N'AdamSandle@gmail.com', 40, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (4, 1, N'Alex@yahoo.com', 20, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (5, 2, N'Angle@yahoo.com', 100, 1, CAST(0x0000A2B500000000 AS DateTime), CAST(0x0000A3150115AAE6 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (6, 2, N'hello123@gmail.com', 100, 1, CAST(0x0000A2B600000000 AS DateTime), CAST(0x0000A3150116B377 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (7, 2, N'JamNguyen@gmail.com', 40, 1, CAST(0x0000A2B800000000 AS DateTime), CAST(0x0000A2B900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (8, 3, N'Jessica@hotmail.com', 40, 1, CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (9, 3, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (10, 3, N'Linda@yahoo.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (11, 4, N'LucKy@gmail.com', 100, 1, CAST(0x0000A2D400000000 AS DateTime), CAST(0x0000A31501133309 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (12, 4, N'Millo@hotmail.com', 90, 1, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A3150113421B AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (13, 4, N'Taylor@gmail.com', 40, 1, CAST(0x0000A2DA00000000 AS DateTime), CAST(0x0000A2DC00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (14, 5, N'Nicholas@yahoo.com', 80, 1, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E300000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (15, 5, N'Steven@hotmail.com', 60, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (16, 5, N'Terrel@hotmail.com', 40, 1, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (17, 6, N'Sar1212@gmai.com', 80, 1, CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (18, 6, N'Paul@hotmail.com', 60, 1, CAST(0x0000A2F200000000 AS DateTime), CAST(0x0000A2F400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (19, 24, N'Alex@yahoo.com', 40, 1, CAST(0x0000A15900000000 AS DateTime), CAST(0x0000A15B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (20, 6, N'Jeffrey@yahoo.com', 40, 1, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (21, 6, N'Alan@yahoo.com', 60, 1, CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (22, 7, N'123@hotmail.com', 90, 1, CAST(0x0000A30200000000 AS DateTime), CAST(0x0000A30700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (23, 7, N'LucKy@gmail.com', 60, 1, CAST(0x0000A30100000000 AS DateTime), CAST(0x0000A30600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (24, 7, N'AdamSandle@gmail.com', 40, 1, CAST(0x0000A30300000000 AS DateTime), CAST(0x0000A30500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (25, 7, N'Alex@yahoo.com', 80, 1, CAST(0x0000A30300000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (26, 8, N'Angle@yahoo.com', 89, 1, CAST(0x0000A30F00000000 AS DateTime), CAST(0x0000A31000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (27, 8, N'hello123@gmail.com', 89, 1, CAST(0x0000A31000000000 AS DateTime), CAST(0x0000A31100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (28, 8, N'JamNguyen@gmail.com', 90, 1, CAST(0x0000A31200000000 AS DateTime), CAST(0x0000A31300000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (29, 9, N'Jessica@hotmail.com', 80, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (30, 9, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (31, 9, N'Linda@yahoo.com', 60, 1, CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2AC00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (32, 10, N'LucKy@gmail.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (33, 10, N'Millo@hotmail.com', 80, 1, CAST(0x0000A2C900000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (34, 10, N'Taylor@gmail.com', 40, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (35, 1, N'Nicholas@yahoo.com', 60, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (36, 1, N'Steven@hotmail.com', 60, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (37, 3, N'Terrel@hotmail.com', 80, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (38, 4, N'Sar1212@gmai.com', 60, 1, CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (39, 5, N'Paul@hotmail.com', 60, 1, CAST(0x0000A2E100000000 AS DateTime), CAST(0x0000A2E200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (40, 7, N'Jeffrey@yahoo.com', 40, 1, CAST(0x0000A30C00000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (41, 2, N'Alan@yahoo.com', 60, 1, CAST(0x0000A2B900000000 AS DateTime), CAST(0x0000A2BA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (42, 2, N'Nicholas@yahoo.com', 40, 1, CAST(0x0000A2B700000000 AS DateTime), CAST(0x0000A2D700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (43, 2, N'Terrel@hotmail.com', 40, 1, CAST(0x0000A2AD00000000 AS DateTime), CAST(0x0000A2AE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (44, 3, N'LucKy@gmail.com', 80, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (45, 3, N'Millo@hotmail.com', 60, 1, CAST(0x0000A2CD00000000 AS DateTime), CAST(0x0000A2CE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (46, 14, N'Millo@hotmail.com', 0, 1, CAST(0x0000A30300000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (47, 14, N'Alex@yahoo.com', 0, 1, CAST(0x0000A30200000000 AS DateTime), CAST(0x0000A30300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (48, 15, N'Alex@yahoo.com', 0, 2, CAST(0x0000A2FC00000000 AS DateTime), CAST(0x0000A2FD002CB4F2 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (49, 15, N'Millo@hotmail.com', 0, 2, CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F7002BD5BA AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (50, 15, N'AdamSandle@gmail.com', 0, 2, CAST(0x0000A2F400D74500 AS DateTime), CAST(0x0000A2F6010E2E9C AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (51, 14, N'AdamSandle@gmail.com', 0, 3, CAST(0x0000A30500EDEBFD AS DateTime), CAST(0x0000A30600000000 AS DateTime), 0, 1)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (52, 2, N'AdamSandle@gmail.com', 20, 3, CAST(0x0000A2BE01727CE7 AS DateTime), CAST(0x0000A2C000000000 AS DateTime), 0, 1)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (53, 1, N'Malcolm0101@yahoo.com', 60, 1, CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (54, 1, N'Lawrence@hotmail.com', 40, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (55, 1, N'Jean16@gmail.com', 60, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (56, 1, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (57, 1, N'Rousseau@yahoo.com', 80, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (58, 1, N'Alan@hotmail.com', 40, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (59, 1, N'Trinh@yahoo.com', 40, 1, CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2AC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (60, 1, N'James1010@gmail.com', 60, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (61, 23, N'Nicholas@yahoo.com', 40, 1, CAST(0x0000A14800000000 AS DateTime), CAST(0x0000A14900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (62, 23, N'Nicky@mail.com', 80, 1, CAST(0x0000A14900000000 AS DateTime), CAST(0x0000A14A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (63, 23, N'Paul@hotmail.com', 60, 1, CAST(0x0000A14800000000 AS DateTime), CAST(0x0000A14A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (64, 23, N'Ronald@gmai.com', 70, 1, CAST(0x0000A14A00000000 AS DateTime), CAST(0x0000A14B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (65, 23, N'Rousseau@yahoo.com', 80, 1, CAST(0x0000A14C00000000 AS DateTime), CAST(0x0000A14E00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (66, 24, N'Sar1212@gmai.com', 100, 1, CAST(0x0000A15900000000 AS DateTime), CAST(0x0000A15A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (67, 24, N'Steven@hotmail.com', 80, 1, CAST(0x0000A15C00000000 AS DateTime), CAST(0x0000A15D00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (68, 24, N'Taylor@gmail.com', 70, 1, CAST(0x0000A15D00000000 AS DateTime), CAST(0x0000A15F00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (69, 24, N'Terrel@hotmail.com', 60, 1, CAST(0x0000A15F00000000 AS DateTime), CAST(0x0000A16000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (70, 1, N'Tohl@yahoo.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (71, 2, N'Mike111@hotmail.com', 80, 1, CAST(0x0000A2B600000000 AS DateTime), CAST(0x0000A2B700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (72, 2, N'Alan@hotmail.com', 70, 1, CAST(0x0000A2BB00000000 AS DateTime), CAST(0x0000A2BE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (73, 2, N'Herb04@gmai.com', 40, 1, CAST(0x0000A2B400000000 AS DateTime), CAST(0x0000A2B500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (74, 2, N'Ronald@gmai.com', 50, 1, CAST(0x0000A2B700000000 AS DateTime), CAST(0x0000A2BD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (75, 2, N'Nicky@mail.com', 80, 1, CAST(0x0000A2B800000000 AS DateTime), CAST(0x0000A2BA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (76, 2, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A2B700000000 AS DateTime), CAST(0x0000A2B800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (77, 2, N'Guy@hotmail.com', 80, 1, CAST(0x0000A2BB00000000 AS DateTime), CAST(0x0000A2BC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (78, 2, N'James1010@gmail.com', 30, 1, CAST(0x0000A2BC00000000 AS DateTime), CAST(0x0000A2BE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (79, 2, N'Millo@hotmail.com', 40, 1, CAST(0x0000A2BD00000000 AS DateTime), CAST(0x0000A2BE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (80, 2, N'Paul@hotmail.com', 60, 1, CAST(0x0000A2BE00000000 AS DateTime), CAST(0x0000A2BF00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (81, 2, N'Sar1212@gmai.com', 40, 1, CAST(0x0000A2B900000000 AS DateTime), CAST(0x0000A2BB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (82, 2, N'Anick@yahoo.com', 20, 1, CAST(0x0000A2B700000000 AS DateTime), CAST(0x0000A2B900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (83, 2, N'Brroke1404@yahoo.com', 40, 1, CAST(0x0000A2B900000000 AS DateTime), CAST(0x0000A2BA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (84, 1, N'Brroke1404@yahoo.com', 40, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (85, 1, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (86, 1, N'Herb04@gmai.com', 80, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (87, 1, N'Nguyen@yahoo.com', 60, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (88, 1, N'Keith@hotmail.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (89, 1, N'Taylor@gmail.com', 20, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (90, 3, N'Jean16@gmail.com', 40, 1, CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2C700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (91, 3, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (92, 3, N'Rousseau@yahoo.com', 100, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (93, 3, N'AdamSandle@gmail.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (94, 3, N'Alan@yahoo.com', 40, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (95, 3, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (96, 3, N'Jean16@gmail.com', 40, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (97, 3, N'Malcolm0101@yahoo.com', 20, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (98, 3, N'Lawrence@hotmail.com', 40, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (99, 3, N'Tohl@yahoo.com', 20, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (100, 3, N'Guy@hotmail.com', 40, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (101, 3, N'JoHan@yahoo.com', 20, 1, CAST(0x0000A2CD00000000 AS DateTime), CAST(0x0000A2D000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (102, 3, N'Joe@hotmai.com', 40, 1, CAST(0x0000A2CE00000000 AS DateTime), CAST(0x0000A2D100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (103, 4, N'123@hotmail.com', 20, 1, CAST(0x0000A2D400000000 AS DateTime), CAST(0x0000A2D500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (104, 4, N'AdamSandle@gmail.com', 60, 1, CAST(0x0000A2D500000000 AS DateTime), CAST(0x0000A2D600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (105, 4, N'Angle@yahoo.com', 60, 1, CAST(0x0000A2D400000000 AS DateTime), CAST(0x0000A2D700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (106, 4, N'Anick@yahoo.com', 40, 1, CAST(0x0000A2D800000000 AS DateTime), CAST(0x0000A2DA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (107, 4, N'Brroke1404@yahoo.com', 60, 1, CAST(0x0000A2DB00000000 AS DateTime), CAST(0x0000A2DC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (108, 4, N'Guy@hotmail.com', 40, 1, CAST(0x0000A2DA00000000 AS DateTime), CAST(0x0000A2DD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (109, 4, N'hello123@gmail.com', 80, 1, CAST(0x0000A2DD00000000 AS DateTime), CAST(0x0000A2DE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (110, 4, N'Herb04@gmai.com', 100, 1, CAST(0x0000A2DA00000000 AS DateTime), CAST(0x0000A2DC00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (111, 4, N'James1010@gmail.com', 20, 1, CAST(0x0000A2DE00000000 AS DateTime), CAST(0x0000A2DF00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (112, 4, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A2D600000000 AS DateTime), CAST(0x0000A2D800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (113, 4, N'Jean16@gmail.com', 40, 1, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2D800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (114, 4, N'Jeffrey@yahoo.com', 80, 1, CAST(0x0000A2D600000000 AS DateTime), CAST(0x0000A2D700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (115, 4, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2DA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (116, 4, N'Jock@hotmail.com', 40, 1, CAST(0x0000A2D500000000 AS DateTime), CAST(0x0000A2D800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (117, 4, N'Joe@hotmai.com', 60, 1, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2D900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (118, 4, N'JoHan@yahoo.com', 40, 1, CAST(0x0000A2D800000000 AS DateTime), CAST(0x0000A2DD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (119, 4, N'Jonh8088@yahoo.com', 60, 1, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2DB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (120, 4, N'Kaylin1402@hotmail.com', 80, 1, CAST(0x0000A2D600000000 AS DateTime), CAST(0x0000A2DE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (121, 5, N'Keith@hotmail.com', 100, 1, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (122, 5, N'Lawrence@hotmail.com', 80, 1, CAST(0x0000A2E400000000 AS DateTime), CAST(0x0000A2E500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (123, 5, N'Linda@yahoo.com', 60, 1, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (124, 5, N'LucKy@gmail.com', 60, 1, CAST(0x0000A2E600000000 AS DateTime), CAST(0x0000A2E700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (125, 5, N'Malcolm0101@yahoo.com', 70, 1, CAST(0x0000A2E400000000 AS DateTime), CAST(0x0000A2E500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (126, 5, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (127, 5, N'Millo@hotmail.com', 40, 1, CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2EB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (128, 5, N'Nguyen@yahoo.com', 40, 1, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (129, 5, N'Nicky@mail.com', 60, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (130, 5, N'Ronald@gmai.com', 80, 1, CAST(0x0000A2E700000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (131, 5, N'Rousseau@yahoo.com', 40, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (132, 5, N'Sar1212@gmai.com', 60, 1, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (133, 5, N'Taylor@gmail.com', 40, 1, CAST(0x0000A2E900000000 AS DateTime), CAST(0x0000A2EA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (134, 5, N'Tohl@yahoo.com', 80, 1, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (135, 5, N'Trinh@yahoo.com', 90, 1, CAST(0x0000A2EA00000000 AS DateTime), CAST(0x0000A2EC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (136, 6, N'123@hotmail.com', 20, 1, CAST(0x0000A2F000000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (137, 6, N'AdamSandle@gmail.com', 40, 1, CAST(0x0000A2F200000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (138, 6, N'Alan@hotmail.com', 50, 1, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (139, 6, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (140, 6, N'Alex@yahoo.com', 70, 1, CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (141, 6, N'Angle@yahoo.com', 80, 1, CAST(0x0000A2F200000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (142, 6, N'Anick@yahoo.com', 60, 1, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (143, 6, N'Brroke1404@yahoo.com', 40, 1, CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2FA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (144, 10, N'Nguyen@yahoo.com', 60, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (145, 6, N'Guy@hotmail.com', 40, 1, CAST(0x0000A2F600000000 AS DateTime), CAST(0x0000A2F700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (146, 6, N'hello123@gmail.com', 20, 1, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (147, 6, N'Herb04@gmai.com', 40, 1, CAST(0x0000A2F600000000 AS DateTime), CAST(0x0000A2F900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (148, 6, N'James1010@gmail.com', 60, 1, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2FA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (149, 6, N'Jean16@gmail.com', 40, 1, CAST(0x0000A2FA00000000 AS DateTime), CAST(0x0000A2FB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (150, 6, N'Jessica@hotmail.com', 40, 1, CAST(0x0000A2F800000000 AS DateTime), CAST(0x0000A2FA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (151, 6, N'Jock@hotmail.com', 60, 1, CAST(0x0000A2F600000000 AS DateTime), CAST(0x0000A2FB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (152, 6, N'Joe@hotmai.com', 40, 1, CAST(0x0000A2FA00000000 AS DateTime), CAST(0x0000A2FC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (153, 6, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2FC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (154, 7, N'Jonh8088@yahoo.com', 100, 1, CAST(0x0000A30100000000 AS DateTime), CAST(0x0000A30100000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (155, 7, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A30200000000 AS DateTime), CAST(0x0000A30500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (156, 7, N'Keith@hotmail.com', 80, 1, CAST(0x0000A30100000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (157, 7, N'Lawrence@hotmail.com', 60, 1, CAST(0x0000A30200000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (158, 7, N'Linda@yahoo.com', 40, 1, CAST(0x0000A30500000000 AS DateTime), CAST(0x0000A30700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (159, 7, N'Millo@hotmail.com', 60, 1, CAST(0x0000A30700000000 AS DateTime), CAST(0x0000A30800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (160, 7, N'Malcolm0101@yahoo.com', 70, 1, CAST(0x0000A30800000000 AS DateTime), CAST(0x0000A30A00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (161, 7, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A30900000000 AS DateTime), CAST(0x0000A30A00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (162, 7, N'Nguyen@yahoo.com', 50, 1, CAST(0x0000A30C00000000 AS DateTime), CAST(0x0000A30D00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (163, 7, N'Nicholas@yahoo.com', 50, 1, CAST(0x0000A30A00000000 AS DateTime), CAST(0x0000A30B00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (164, 7, N'Paul@hotmail.com', 60, 1, CAST(0x0000A30500000000 AS DateTime), CAST(0x0000A30600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (165, 7, N'Ronald@gmai.com', 40, 1, CAST(0x0000A30100000000 AS DateTime), CAST(0x0000A30200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (166, 7, N'Rousseau@yahoo.com', 80, 1, CAST(0x0000A30300000000 AS DateTime), CAST(0x0000A30400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (167, 7, N'Sar1212@gmai.com', 40, 1, CAST(0x0000A30400000000 AS DateTime), CAST(0x0000A30500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (168, 7, N'Steven@hotmail.com', 60, 1, CAST(0x0000A30500000000 AS DateTime), CAST(0x0000A30700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (169, 7, N'Taylor@gmail.com', 40, 1, CAST(0x0000A30400000000 AS DateTime), CAST(0x0000A30600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (170, 7, N'Terrel@hotmail.com', 80, 1, CAST(0x0000A30700000000 AS DateTime), CAST(0x0000A30900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (171, 7, N'Tohl@yahoo.com', 60, 1, CAST(0x0000A30800000000 AS DateTime), CAST(0x0000A30A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (172, 7, N'Trinh@yahoo.com', 80, 1, CAST(0x0000A30900000000 AS DateTime), CAST(0x0000A30B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (173, 8, N'Trinh@yahoo.com', 40, 1, CAST(0x0000A30F00000000 AS DateTime), CAST(0x0000A31000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (174, 8, N'Tohl@yahoo.com', 60, 1, CAST(0x0000A31000000000 AS DateTime), CAST(0x0000A31100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (175, 8, N'Terrel@hotmail.com', 80, 1, CAST(0x0000A30F00000000 AS DateTime), CAST(0x0000A31100000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (176, 8, N'Taylor@gmail.com', 40, 1, CAST(0x0000A31000000000 AS DateTime), CAST(0x0000A31100000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (177, 8, N'Steven@hotmail.com', 60, 1, CAST(0x0000A31100000000 AS DateTime), CAST(0x0000A31200000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (178, 8, N'Sar1212@gmai.com', 80, 1, CAST(0x0000A31200000000 AS DateTime), CAST(0x0000A31300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (179, 8, N'Rousseau@yahoo.com', 60, 1, CAST(0x0000A31300000000 AS DateTime), CAST(0x0000A31400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (180, 8, N'Ronald@gmai.com', 40, 1, CAST(0x0000A30F00000000 AS DateTime), CAST(0x0000A31200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (181, 8, N'Paul@hotmail.com', 60, 1, CAST(0x0000A31200000000 AS DateTime), CAST(0x0000A31500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (182, 8, N'Nicky@mail.com', 70, 1, CAST(0x0000A31100000000 AS DateTime), CAST(0x0000A31300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (183, 8, N'Nicholas@yahoo.com', 60, 1, CAST(0x0000A31200000000 AS DateTime), CAST(0x0000A31400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (184, 8, N'Nguyen@yahoo.com', 50, 1, CAST(0x0000A31300000000 AS DateTime), CAST(0x0000A31500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (185, 8, N'Millo@hotmail.com', 40, 1, CAST(0x0000A31400000000 AS DateTime), CAST(0x0000A31600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (186, 8, N'Mike111@hotmail.com', 50, 1, CAST(0x0000A31200000000 AS DateTime), CAST(0x0000A2C90041EB00 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (187, 8, N'Malcolm0101@yahoo.com', 40, 1, CAST(0x0000A31300000000 AS DateTime), CAST(0x0000A31500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (188, 8, N'LucKy@gmail.com', 60, 1, CAST(0x0000A31400000000 AS DateTime), CAST(0x0000A31600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (189, 8, N'Linda@yahoo.com', 80, 1, CAST(0x0000A31400000000 AS DateTime), CAST(0x0000A31700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (190, 8, N'Lawrence@hotmail.com', 89, 1, CAST(0x0000A31600000000 AS DateTime), CAST(0x0000A31800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (191, 9, N'Keith@hotmail.com', 20, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (192, 9, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (193, 9, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (194, 9, N'Joe@hotmai.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (195, 9, N'Jock@hotmail.com', 60, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (196, 9, N'Jeffrey@yahoo.com', 60, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (197, 9, N'Jean16@gmail.com', 40, 1, CAST(0x0000A2A700000000 AS DateTime), CAST(0x0000A2A800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (198, 9, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AC00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (199, 9, N'James1010@gmail.com', 40, 1, CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2AE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (200, 9, N'Herb04@gmai.com', 60, 1, CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2AD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (201, 9, N'hello123@gmail.com', 60, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (202, 9, N'Guy@hotmail.com', 40, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (203, 9, N'Brroke1404@yahoo.com', 60, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (204, 9, N'Anick@yahoo.com', 80, 1, CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2AC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (205, 9, N'Angle@yahoo.com', 70, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (206, 9, N'Alex@yahoo.com', 70, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (207, 9, N'Alan@yahoo.com', 80, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (208, 9, N'AdamSandle@gmail.com', 70, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (209, 9, N'123@hotmail.com', 80, 1, CAST(0x0000A2AB00000000 AS DateTime), CAST(0x0000A2AD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (210, 9, N'Malcolm0101@yahoo.com', 10, 1, CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2AD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (211, 10, N'Brroke1404@yahoo.com', 40, 1, CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2C700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (212, 10, N'Guy@hotmail.com', 60, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (213, 10, N'hello123@gmail.com', 40, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (214, 10, N'Herb04@gmai.com', 80, 1, CAST(0x0000A2C900000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (215, 10, N'James1010@gmail.com', 60, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (216, 10, N'JamNguyen@gmail.com', 80, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (217, 10, N'Jean16@gmail.com', 90, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (218, 10, N'Jeffrey@yahoo.com', 70, 1, CAST(0x0000A2C900000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (219, 10, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (220, 10, N'Jock@hotmail.com', 50, 1, CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2C700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (221, 10, N'Joe@hotmai.com', 60, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (222, 10, N'JoHan@yahoo.com', 70, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (223, 10, N'Jonh8088@yahoo.com', 60, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (224, 10, N'Kaylin1402@hotmail.com', 50, 1, CAST(0x0000A2C600000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (225, 10, N'Keith@hotmail.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (226, 14, N'123@hotmail.com', 0, 1, CAST(0x0000A30000000000 AS DateTime), CAST(0x0000A30100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (227, 17, N'Keith@hotmail.com', 0, 1, CAST(0x0000A31300000000 AS DateTime), CAST(0x0000A31400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (228, 17, N'Paul@hotmail.com', 0, 1, CAST(0x0000A30E00000000 AS DateTime), CAST(0x0000A30F00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (229, 18, N'Nguyen@yahoo.com', 0, 1, CAST(0x0000A31100000000 AS DateTime), CAST(0x0000A31200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (230, 18, N'Rousseau@yahoo.com', 0, 1, CAST(0x0000A30F00000000 AS DateTime), CAST(0x0000A31000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (231, 19, N'Trinh@yahoo.com', 100, 1, CAST(0x0000A2E300000000 AS DateTime), CAST(0x0000A2E500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (232, 19, N'Tohl@yahoo.com', 80, 1, CAST(0x0000A2EE00000000 AS DateTime), CAST(0x0000A2EF00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (233, 19, N'Terrel@hotmail.com', 60, 1, CAST(0x0000A2E200000000 AS DateTime), CAST(0x0000A2E400000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (234, 19, N'Taylor@gmail.com', 40, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (235, 19, N'Steven@hotmail.com', 20, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (236, 19, N'Sar1212@gmai.com', 30, 1, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2E900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (237, 19, N'Rousseau@yahoo.com', 10, 1, CAST(0x0000A2E800000000 AS DateTime), CAST(0x0000A2EA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (238, 19, N'Ronald@gmai.com', 20, 1, CAST(0x0000A2E500000000 AS DateTime), CAST(0x0000A2E800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (239, 19, N'Paul@hotmail.com', 30, 1, CAST(0x0000A2E900000000 AS DateTime), CAST(0x0000A2EC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (240, 19, N'Nicky@mail.com', 80, 1, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (241, 20, N'Nicky@mail.com', 100, 1, CAST(0x0000A2C700000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (242, 20, N'Nicholas@yahoo.com', 80, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CB00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (243, 20, N'Nguyen@yahoo.com', 90, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CD00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (244, 20, N'Millo@hotmail.com', 80, 1, CAST(0x0000A2CE00000000 AS DateTime), CAST(0x0000A2CF00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (245, 20, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (246, 20, N'Malcolm0101@yahoo.com', 80, 1, CAST(0x0000A2D400000000 AS DateTime), CAST(0x0000A2D500000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (247, 20, N'LucKy@gmail.com', 90, 1, CAST(0x0000A2D500000000 AS DateTime), CAST(0x0000A2D600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (248, 20, N'Linda@yahoo.com', 60, 1, CAST(0x0000A2D500000000 AS DateTime), CAST(0x0000A2D600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (249, 20, N'Lawrence@hotmail.com', 70, 1, CAST(0x0000A2C800000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (250, 20, N'Keith@hotmail.com', 60, 1, CAST(0x0000A2CA00000000 AS DateTime), CAST(0x0000A2CC00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (251, 20, N'Kaylin1402@hotmail.com', 80, 1, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CD00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (252, 20, N'Jonh8088@yahoo.com', 70, 1, CAST(0x0000A2CE00000000 AS DateTime), CAST(0x0000A2D000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (253, 21, N'Jonh8088@yahoo.com', 100, 1, CAST(0x0000A2A800000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (254, 21, N'JoHan@yahoo.com', 80, 1, CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A2AA00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (255, 21, N'Joe@hotmai.com', 60, 1, CAST(0x0000A2AD00000000 AS DateTime), CAST(0x0000A2AE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (256, 21, N'Jock@hotmail.com', 40, 1, CAST(0x0000A2AF00000000 AS DateTime), CAST(0x0000A2B000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (257, 21, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A2B100000000 AS DateTime), CAST(0x0000A2B200000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (258, 21, N'Jeffrey@yahoo.com', 40, 1, CAST(0x0000A2AA00000000 AS DateTime), CAST(0x0000A2AB00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (259, 21, N'Jean16@gmail.com', 20, 1, CAST(0x0000A2AC00000000 AS DateTime), CAST(0x0000A2AE00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (260, 21, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A2AF00000000 AS DateTime), CAST(0x0000A2B000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (261, 22, N'James1010@gmail.com', 100, 1, CAST(0x0000A13A00000000 AS DateTime), CAST(0x0000A13B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (262, 22, N'Herb04@gmai.com', 50, 1, CAST(0x0000A13C00000000 AS DateTime), CAST(0x0000A13D00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (263, 22, N'hello123@gmail.com', 60, 1, CAST(0x0000A13E00000000 AS DateTime), CAST(0x0000A13F00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (264, 22, N'Guy@hotmail.com', 70, 1, CAST(0x0000A13D00000000 AS DateTime), CAST(0x0000A13E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (265, 22, N'Brroke1404@yahoo.com', 80, 1, CAST(0x0000A13E00000000 AS DateTime), CAST(0x0000A14000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (266, 22, N'Anick@yahoo.com', 50, 1, CAST(0x0000A14000000000 AS DateTime), CAST(0x0000A14000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (267, 22, N'Angle@yahoo.com', 60, 1, CAST(0x0000A13D00000000 AS DateTime), CAST(0x0000A13E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (268, 22, N'Alex@yahoo.com', 40, 1, CAST(0x0000A13E00000000 AS DateTime), CAST(0x0000A14000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (269, 22, N'Alan@hotmail.com', 40, 1, CAST(0x0000A13F00000000 AS DateTime), CAST(0x0000A14000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (270, 22, N'AdamSandle@gmail.com', 60, 1, CAST(0x0000A13C00000000 AS DateTime), CAST(0x0000A13E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (271, 22, N'123@hotmail.com', 20, 1, CAST(0x0000A13C00000000 AS DateTime), CAST(0x0000A13E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (272, 23, N'Jock@hotmail.com', 100, 1, CAST(0x0000A14800000000 AS DateTime), CAST(0x0000A14900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (273, 23, N'Joe@hotmai.com', 80, 1, CAST(0x0000A14900000000 AS DateTime), CAST(0x0000A14A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (274, 23, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A14800000000 AS DateTime), CAST(0x0000A14900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (275, 23, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A14A00000000 AS DateTime), CAST(0x0000A14B00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (276, 23, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A14B00000000 AS DateTime), CAST(0x0000A14C00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (277, 23, N'Keith@hotmail.com', 40, 1, CAST(0x0000A14C00000000 AS DateTime), CAST(0x0000A14E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (278, 23, N'Lawrence@hotmail.com', 60, 1, CAST(0x0000A14D00000000 AS DateTime), CAST(0x0000A14E00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (279, 23, N'Linda@yahoo.com', 40, 1, CAST(0x0000A14E00000000 AS DateTime), CAST(0x0000A15000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (280, 23, N'LucKy@gmail.com', 80, 1, CAST(0x0000A15200000000 AS DateTime), CAST(0x0000A15300000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (281, 23, N'Malcolm0101@yahoo.com', 40, 1, CAST(0x0000A15100000000 AS DateTime), CAST(0x0000A15200000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (282, 23, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A15200000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (283, 23, N'Millo@hotmail.com', 80, 1, CAST(0x0000A14E00000000 AS DateTime), CAST(0x0000A15000000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (284, 23, N'Nguyen@yahoo.com', 60, 1, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A15200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (285, 24, N'Tohl@yahoo.com', 80, 1, CAST(0x0000A15F00000000 AS DateTime), CAST(0x0000A16000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (286, 24, N'Trinh@yahoo.com', 60, 1, CAST(0x0000A16000000000 AS DateTime), CAST(0x0000A16100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (287, 24, N'123@hotmail.com', 80, 1, CAST(0x0000A16100000000 AS DateTime), CAST(0x0000A16200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (288, 24, N'AdamSandle@gmail.com', 80, 1, CAST(0x0000A16200000000 AS DateTime), CAST(0x0000A16300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (289, 24, N'Alan@hotmail.com', 60, 1, CAST(0x0000A15B00000000 AS DateTime), CAST(0x0000A15C00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (290, 24, N'Alan@yahoo.com', 40, 1, CAST(0x0000A15900000000 AS DateTime), CAST(0x0000A15A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (291, 25, N'Alex@yahoo.com', 100, 1, CAST(0x0000A16700000000 AS DateTime), CAST(0x0000A16800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (292, 25, N'Angle@yahoo.com', 80, 1, CAST(0x0000A16800000000 AS DateTime), CAST(0x0000A16900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (293, 25, N'Anick@yahoo.com', 60, 1, CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000A16B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (294, 25, N'Brroke1404@yahoo.com', 40, 1, CAST(0x0000A16700000000 AS DateTime), CAST(0x0000A16900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (295, 25, N'Guy@hotmail.com', 60, 1, CAST(0x0000A16800000000 AS DateTime), CAST(0x0000A16A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (296, 25, N'hello123@gmail.com', 40, 1, CAST(0x0000A16900000000 AS DateTime), CAST(0x0000A16A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (297, 26, N'James1010@gmail.com', 100, 1, CAST(0x0000A17500000000 AS DateTime), CAST(0x0000A17700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (298, 26, N'JamNguyen@gmail.com', 80, 1, CAST(0x0000A17600000000 AS DateTime), CAST(0x0000A17700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (299, 26, N'Jean16@gmail.com', 60, 1, CAST(0x0000A17700000000 AS DateTime), CAST(0x0000A17800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (300, 26, N'Jeffrey@yahoo.com', 40, 1, CAST(0x0000A17800000000 AS DateTime), CAST(0x0000A17900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (301, 26, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A17900000000 AS DateTime), CAST(0x0000A17B00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (302, 26, N'Jock@hotmail.com', 40, 1, CAST(0x0000A17A00000000 AS DateTime), CAST(0x0000A17B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (303, 27, N'Joe@hotmai.com', 100, 1, CAST(0x0000A18300000000 AS DateTime), CAST(0x0000A18400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (304, 27, N'JoHan@yahoo.com', 80, 1, CAST(0x0000A18600000000 AS DateTime), CAST(0x0000A18900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (305, 27, N'Jonh8088@yahoo.com', 60, 1, CAST(0x0000A18700000000 AS DateTime), CAST(0x0000A18800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (306, 27, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A18800000000 AS DateTime), CAST(0x0000A18900000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (307, 27, N'Keith@hotmail.com', 70, 1, CAST(0x0000A18900000000 AS DateTime), CAST(0x0000A18B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (308, 27, N'Lawrence@hotmail.com', 70, 1, CAST(0x0000A18A00000000 AS DateTime), CAST(0x0000A18B00000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (309, 28, N'Lawrence@hotmail.com', 0, 1, CAST(0x0000A19500000000 AS DateTime), CAST(0x0000A19600000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (310, 28, N'Linda@yahoo.com', 0, 1, CAST(0x0000A19600000000 AS DateTime), CAST(0x0000A19700000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (311, 28, N'Trinh@yahoo.com', 40, 1, CAST(0x0000A19800000000 AS DateTime), CAST(0x0000A19900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (312, 28, N'Tohl@yahoo.com', 60, 1, CAST(0x0000A19900000000 AS DateTime), CAST(0x0000A19A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (313, 29, N'Terrel@hotmail.com', 80, 1, CAST(0x0000A1A200000000 AS DateTime), CAST(0x0000A1A400000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (314, 29, N'Kaylin1402@hotmail.com', 40, 1, CAST(0x0000A1A300000000 AS DateTime), CAST(0x0000A1A400000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (315, 29, N'Steven@hotmail.com', 60, 1, CAST(0x0000A1A400000000 AS DateTime), CAST(0x0000A1A500000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (316, 29, N'AdamSandle@gmail.com', 80, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A1A600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (317, 29, N'Herb04@gmai.com', 60, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A700000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (318, 29, N'James1010@gmail.com', 40, 1, CAST(0x0000A1A200000000 AS DateTime), CAST(0x0000A1A500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (319, 29, N'Paul@hotmail.com', 60, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (320, 29, N'Jock@hotmail.com', 70, 1, CAST(0x0000A1A400000000 AS DateTime), CAST(0x0000A1A600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (321, 29, N'Jonh8088@yahoo.com', 60, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A1A700000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (322, 29, N'Keith@hotmail.com', 50, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (323, 29, N'Millo@hotmail.com', 40, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (324, 29, N'Lawrence@hotmail.com', 50, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A15C0041EB00 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (325, 29, N'Jean16@gmail.com', 40, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (326, 29, N'LucKy@gmail.com', 60, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (327, 29, N'Alan@hotmail.com', 80, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1AA00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (328, 29, N'Lawrence@hotmail.com', 90, 1, CAST(0x0000A1A900000000 AS DateTime), CAST(0x0000A1AB00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (329, 29, N'Keith@hotmail.com', 20, 1, CAST(0x0000A1A800000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (330, 29, N'Trinh@yahoo.com', 40, 1, CAST(0x0000A1A200000000 AS DateTime), CAST(0x0000A1A300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (331, 29, N'Tohl@yahoo.com', 60, 1, CAST(0x0000A1A300000000 AS DateTime), CAST(0x0000A1A400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (332, 29, N'JamNguyen@gmail.com', 80, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (333, 29, N'Taylor@gmail.com', 40, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (334, 29, N'123@hotmail.com', 60, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (335, 29, N'Sar1212@gmai.com', 80, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (336, 29, N'Rousseau@yahoo.com', 60, 1, CAST(0x0000A1A800000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (337, 29, N'Ronald@gmai.com', 40, 1, CAST(0x0000A1A200000000 AS DateTime), CAST(0x0000A1A500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (338, 29, N'Paul@hotmail.com', 60, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (339, 29, N'Nicky@mail.com', 70, 1, CAST(0x0000A1A400000000 AS DateTime), CAST(0x0000A1A600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (340, 29, N'Nicholas@yahoo.com', 60, 1, CAST(0x0000A1A500000000 AS DateTime), CAST(0x0000A1A700000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (341, 29, N'Nguyen@yahoo.com', 50, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (342, 29, N'Millo@hotmail.com', 40, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (343, 29, N'Mike111@hotmail.com', 50, 1, CAST(0x0000A1A300000000 AS DateTime), CAST(0x0000A1A40041EB00 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (344, 29, N'Malcolm0101@yahoo.com', 40, 1, CAST(0x0000A1A600000000 AS DateTime), CAST(0x0000A1A800000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (345, 29, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1A900000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (346, 29, N'Linda@yahoo.com', 80, 1, CAST(0x0000A1A700000000 AS DateTime), CAST(0x0000A1AA00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (347, 29, N'Lawrence@hotmail.com', 90, 1, CAST(0x0000A1A900000000 AS DateTime), CAST(0x0000A1AB00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (348, 30, N'Keith@hotmail.com', 20, 1, CAST(0x0000A1B200000000 AS DateTime), CAST(0x0000A1B300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (349, 30, N'123@hotmail.com', 40, 1, CAST(0x0000A1B600000000 AS DateTime), CAST(0x0000A1B700000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (350, 30, N'AdamSandle@gmail.com', 100, 1, CAST(0x0000A1B600000000 AS DateTime), CAST(0x0000A1B800000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (351, 30, N'Alan@hotmail.com', 80, 1, CAST(0x0000A1B200000000 AS DateTime), CAST(0x0000A1B600000000 AS DateTime), 20, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (352, 30, N'Angle@yahoo.com', 60, 1, CAST(0x0000A1B600000000 AS DateTime), CAST(0x0000A1B800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (353, 30, N'Anick@yahoo.com', 40, 1, CAST(0x0000A1B700000000 AS DateTime), CAST(0x0000A1B600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (354, 30, N'Brroke1404@yahoo.com', 20, 1, CAST(0x0000A1B600000000 AS DateTime), CAST(0x0000A1B800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (355, 30, N'Guy@hotmail.com', 10, 1, CAST(0x0000A1B600000000 AS DateTime), CAST(0x0000A1B900000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (356, 31, N'123@hotmail.com', 100, 1, CAST(0x0000A1C200000000 AS DateTime), CAST(0x0000A1C300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (357, 31, N'AdamSandle@gmail.com', 80, 1, CAST(0x0000A1C300000000 AS DateTime), CAST(0x0000A18700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (358, 31, N'Angle@yahoo.com', 60, 1, CAST(0x0000A1C400000000 AS DateTime), CAST(0x0000A1C600000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (359, 31, N'Anick@yahoo.com', 60, 1, CAST(0x0000A1C600000000 AS DateTime), CAST(0x0000A1C800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (360, 31, N'Brroke1404@yahoo.com', 60, 1, CAST(0x0000A1C600000000 AS DateTime), CAST(0x0000A1C800000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (361, 32, N'Guy@hotmail.com', 100, 1, CAST(0x0000A1D100000000 AS DateTime), CAST(0x0000A1D300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (362, 32, N'hello123@gmail.com', 80, 1, CAST(0x0000A1D200000000 AS DateTime), CAST(0x0000A1D300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (363, 32, N'Herb04@gmai.com', 80, 1, CAST(0x0000A1D300000000 AS DateTime), CAST(0x0000A1D400000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (364, 32, N'James1010@gmail.com', 80, 1, CAST(0x0000A1D500000000 AS DateTime), CAST(0x0000A1D700000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (365, 32, N'JamNguyen@gmail.com', 60, 1, CAST(0x0000A1D600000000 AS DateTime), CAST(0x0000A1D800000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (366, 32, N'Jean16@gmail.com', 60, 1, CAST(0x0000A1D700000000 AS DateTime), CAST(0x0000A1D800000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (367, 33, N'Jeffrey@yahoo.com', 100, 1, CAST(0x0000A1DF00000000 AS DateTime), CAST(0x0000A1E000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (368, 33, N'Jessica@hotmail.com', 80, 1, CAST(0x0000A1DF00000000 AS DateTime), CAST(0x0000A1E100000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (369, 33, N'Jock@hotmail.com', 80, 1, CAST(0x0000A1E000000000 AS DateTime), CAST(0x0000A1E200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (370, 33, N'Joe@hotmai.com', 80, 1, CAST(0x0000A1E100000000 AS DateTime), CAST(0x0000A1E200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (371, 33, N'JoHan@yahoo.com', 80, 1, CAST(0x0000A1E200000000 AS DateTime), CAST(0x0000A1E300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (372, 34, N'Jonh8088@yahoo.com', 100, 1, CAST(0x0000A1EF00000000 AS DateTime), CAST(0x0000A1F000000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (373, 34, N'Kaylin1402@hotmail.com', 80, 1, CAST(0x0000A1F000000000 AS DateTime), CAST(0x0000A1F100000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (374, 34, N'hello123@gmail.com', 60, 1, CAST(0x0000A1F300000000 AS DateTime), CAST(0x0000A1F400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (375, 34, N'Guy@hotmail.com', 70, 1, CAST(0x0000A1F200000000 AS DateTime), CAST(0x0000A1F300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (376, 34, N'Brroke1404@yahoo.com', 80, 1, CAST(0x0000A1F300000000 AS DateTime), CAST(0x0000A1F500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (377, 34, N'Anick@yahoo.com', 50, 1, CAST(0x0000A1F500000000 AS DateTime), CAST(0x0000A1F500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (378, 34, N'Angle@yahoo.com', 60, 1, CAST(0x0000A1F200000000 AS DateTime), CAST(0x0000A1F300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (379, 34, N'Alex@yahoo.com', 40, 1, CAST(0x0000A1F200000000 AS DateTime), CAST(0x0000A1F500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (380, 34, N'Lawrence@hotmail.com', 40, 1, CAST(0x0000A1F300000000 AS DateTime), CAST(0x0000A1F500000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (381, 35, N'Tohl@yahoo.com', 100, 1, CAST(0x0000A1FE00000000 AS DateTime), CAST(0x0000A1FE00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (382, 35, N'JamNguyen@gmail.com', 80, 1, CAST(0x0000A1FE00000000 AS DateTime), CAST(0x0000A1FE00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (383, 35, N'Taylor@gmail.com', 40, 1, CAST(0x0000A1FD00000000 AS DateTime), CAST(0x0000A1FE00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (384, 35, N'123@hotmail.com', 60, 1, CAST(0x0000A1FD00000000 AS DateTime), CAST(0x0000A20400000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (385, 35, N'Sar1212@gmai.com', 80, 1, CAST(0x0000A1FD00000000 AS DateTime), CAST(0x0000A20400000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (386, 35, N'Rousseau@yahoo.com', 60, 1, CAST(0x0000A1FD00000000 AS DateTime), CAST(0x0000A20400000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (387, 35, N'Ronald@gmai.com', 40, 1, CAST(0x0000A1FD00000000 AS DateTime), CAST(0x0000A20000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (388, 36, N'James1010@gmail.com', 100, 1, CAST(0x0000A1D100000000 AS DateTime), CAST(0x0000A1D300000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (389, 36, N'JamNguyen@gmail.com', 80, 1, CAST(0x0000A1D200000000 AS DateTime), CAST(0x0000A1D300000000 AS DateTime), 14, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (390, 36, N'Jean16@gmail.com', 60, 1, CAST(0x0000A1D300000000 AS DateTime), CAST(0x0000A1D400000000 AS DateTime), 14, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (391, 36, N'Jeffrey@yahoo.com', 40, 1, CAST(0x0000A1D400000000 AS DateTime), CAST(0x0000A1D500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (392, 36, N'Jessica@hotmail.com', 60, 1, CAST(0x0000A1D500000000 AS DateTime), CAST(0x0000A1D700000000 AS DateTime), 14, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (393, 37, N'Joe@hotmai.com', 100, 1, CAST(0x0000A21D00000000 AS DateTime), CAST(0x0000A21E00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (394, 37, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A21C00000000 AS DateTime), CAST(0x0000A21D00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (395, 37, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A21E00000000 AS DateTime), CAST(0x0000A21F00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (396, 37, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A21F00000000 AS DateTime), CAST(0x0000A22000000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (397, 37, N'Keith@hotmail.com', 40, 1, CAST(0x0000A14C00000000 AS DateTime), CAST(0x0000A22200000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (398, 37, N'Lawrence@hotmail.com', 60, 1, CAST(0x0000A22100000000 AS DateTime), CAST(0x0000A22200000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (399, 38, N'Linda@yahoo.com', 40, 1, CAST(0x0000A24100000000 AS DateTime), CAST(0x0000A24300000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (400, 38, N'LucKy@gmail.com', 80, 1, CAST(0x0000A24500000000 AS DateTime), CAST(0x0000A24600000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (401, 38, N'Malcolm0101@yahoo.com', 40, 1, CAST(0x0000A24400000000 AS DateTime), CAST(0x0000A24500000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (402, 38, N'Mike111@hotmail.com', 60, 1, CAST(0x0000A24300000000 AS DateTime), CAST(0x0000A24500000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (403, 38, N'Millo@hotmail.com', 80, 1, CAST(0x0000A24100000000 AS DateTime), CAST(0x0000A24300000000 AS DateTime), 15, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (404, 38, N'Nguyen@yahoo.com', 100, 1, CAST(0x0000A24300000000 AS DateTime), CAST(0x0000A24500000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (405, 39, N'Joe@hotmai.com', 80, 1, CAST(0x0000A25A00000000 AS DateTime), CAST(0x0000A25B00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (406, 39, N'JoHan@yahoo.com', 60, 1, CAST(0x0000A25900000000 AS DateTime), CAST(0x0000A25A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (407, 39, N'Jonh8088@yahoo.com', 40, 1, CAST(0x0000A25B00000000 AS DateTime), CAST(0x0000A25C00000000 AS DateTime), 16, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (408, 39, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A25C00000000 AS DateTime), CAST(0x0000A25D00000000 AS DateTime), 16, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (409, 39, N'Keith@hotmail.com', 100, 1, CAST(0x0000A25D00000000 AS DateTime), CAST(0x0000A25F00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (410, 39, N'Lawrence@hotmail.com', 60, 1, CAST(0x0000A25E00000000 AS DateTime), CAST(0x0000A25F00000000 AS DateTime), 16, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (411, 40, N'JoHan@yahoo.com', 100, 1, CAST(0x0000A27B00000000 AS DateTime), CAST(0x0000A27E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (412, 40, N'Jonh8088@yahoo.com', 60, 1, CAST(0x0000A27C00000000 AS DateTime), CAST(0x0000A27D00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (413, 40, N'Kaylin1402@hotmail.com', 60, 1, CAST(0x0000A27D00000000 AS DateTime), CAST(0x0000A27E00000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (414, 40, N'Keith@hotmail.com', 70, 1, CAST(0x0000A27E00000000 AS DateTime), CAST(0x0000A28000000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (415, 40, N'Lawrence@hotmail.com', 70, 1, CAST(0x0000A27F00000000 AS DateTime), CAST(0x0000A28000000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (416, 40, N'Joe@hotmai.com', 60, 1, CAST(0x0000A28000000000 AS DateTime), CAST(0x0000A28100000000 AS DateTime), 10, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (417, 41, N'Taylor@gmail.com', 100, 1, CAST(0x0000A27C00000000 AS DateTime), CAST(0x0000A27F00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (418, 41, N'123@hotmail.com', 60, 1, CAST(0x0000A26E00000000 AS DateTime), CAST(0x0000A27000000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (419, 41, N'Sar1212@gmai.com', 80, 1, CAST(0x0000A27C00000000 AS DateTime), CAST(0x0000A27F00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (420, 41, N'Rousseau@yahoo.com', 60, 1, CAST(0x0000A27E00000000 AS DateTime), CAST(0x0000A27F00000000 AS DateTime), 12, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (421, 41, N'Ronald@gmai.com', 40, 1, CAST(0x0000A26E00000000 AS DateTime), CAST(0x0000A27100000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEnrolls] ([enrollID], [eventID], [Username], [eventScore], [enrollStt], [enrollDate], [paymentDate], [enrollFee], [isDeleted]) VALUES (422, 41, N'Paul@hotmail.com', 60, 1, CAST(0x0000A27100000000 AS DateTime), CAST(0x0000A27E00000000 AS DateTime), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[tblEnrolls] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEvents] ON 

GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (1, CAST(0x0000A2B4000000BC AS DateTime), N'RLE Events', N'Florida', 5, 100, N'Motivated by the increasing demand for more powerful and efficient optical communication systems, quantum mechanics of information processing has become the key element in determining the fundamental limits of physical channels, and in designing quantum communication systems that approach those fundamental limits.
To achieve higher data rate over quantum optical channels, we need to efficiently extract classical information from quantum states. However, peculiar properties of quantum states, such as the no-cloning theorem and the non-reversible measurement process, provide new challenges in the measurement of quantum states; in quantum information science, there is no concept analogous to sufficient statistics in classical information science. Therefore, to extract as much information as possible from quantum states, it is important to choose the right measurement process. 
In this thesis, we investigate the fundamental question of how to design the measurement process to efficiently extract information from quantum states. ', 20, N'imageEvent1.jpg', N'LucKy@gmail.com', CAST(0x0000A2A600000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (2, CAST(0x0000A2C300000059 AS DateTime), N'EDS Grand Opening', N'Tommy', 5, 100, N'The EECS department is proud to unveil its brand new design studio/machine shop/teaching lab, the Cypress Engineering Design Studio!  Inside the newly renovated space in 38-501, EDS supports existing classes and provides an incredible space for new ones dedicated to building hardware and programming systems.  
 
There will be live demonstrations of machines and tools, food provided by Jules Catering, and presentations by our generous sponsors, Cypress Semiconductor and Agilent Technologies.  This event is open to all members of the MIT community, so please come join us and celebrate!', 20, N'imageEvent2.jpg', N'hello123@gmail.com', CAST(0x0000A2B400000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (3, CAST(0x0000A2D300000095 AS DateTime), N'Cyber Inferno Seven Circles', N'Richard Carlson', 5, 100, N'If alive today Dante would no doubt be shocked at how today''s seven circles are not those of Hell but seven circles of cyberthreats. As in Inferno, the modern-day cyberthreat circles relate to chronological stages. It all started in Limbo - the first circle - with researchers playing around with malicious code. ', 20, N'imageEvent3.jpg', N'Rousseau@yahoo.com', CAST(0x0000A2C500000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (4, CAST(0x0000A2E000000000 AS DateTime), N'Optimal Rate Communication by Regression', N'David Richo', 5, 100, N'We discuss our recently developed sparse superposition codes for the Gaussian noise channel. With a fast adaptive successive decoder it achieves nearly exponentially small error probability at any fixed rate R less than the Shannon capacity. This is joint work with Antony Joseph and Sanghee Cho.', 20, N'imageEvent.jpg', N'LucKy@gmail.com', CAST(0x0000A2D300000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (5, CAST(0x0000A2EF00000000 AS DateTime), N'Placement in Cloud Computing Systems', N'Spencer Johnson', 5, 100, N'Cloud computing has become popular in recent years.  Companies such as

Amazon and Microsoft host large datacenters of networked machines

available for users to rent.  These users are varied: from individual

researchers to large companies.  Their workloads range from short,

resource-intensive jobs to long-running user-facing services.', 20, N'imageEvent.jpg', N'Keith@hotmail.com', CAST(0x0000A2E100000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (6, CAST(0x0000A2FE00000000 AS DateTime), N'A Scalable Multi-kernel Filesystem', N'Merlin S Tone', 5, 100, N'Hare is a new file system for multikernel operating systems running
on multicore processors.  Hare provides to applications a shared file
system, implementing most of the POSIX file system API, without relying
on cache-coherent shared memory.  Kernels on different cores communicate
through messages to file server processes, which maintain file system
metadata and provide consistent shared state.  Hare partitions the buffer
cache among file server processes, and allows application cores to have
direct access to these buffers.  Hare distributes directory entries across
several servers so that processes can perform operations on a shared
directory in a scalable manner. ', 20, N'imageEvent.jpg', N'Sar1212@gmai.com', CAST(0x0000A2EF00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (7, CAST(0x0000A30E00000095 AS DateTime), N'Build Predictive Models ', N'Harry Paul', 5, 100, N'The proliferation of electronic medical records holds out the promise of using machine learning and data mining to build models that will help healthcare providers improve patient outcomes.  However, building useful models from these datasets presents many technical problems. The task is made challenging by the large number of factors, both intrinsic and extrinsic, influencing a patientÃ¢??s risk of an adverse outcome, the inherent evolution of that risk over time, and the relative rarity of adverse outcomes.
 ', 20, N'imageEvent.jpg', N'Jonh8088@yahoo.com', CAST(0x0000A30000000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (8, CAST(0x0000A31D00000000 AS DateTime), N'Fundamental Limits, Adaptive ', N'Gary Chapman', 5, 100, N'Motivated by the increasing demand for more powerful and efficient optical communication systems, quantum mechanics of information processing has become the key element in determining the fundamental limits of physical channels, and in designing quantum communication systems that approach those fundamental limits.
To achieve higher data rate over quantum optical channels, we need to efficiently extract classical information from quantum states. However, peculiar properties of quantum states, such as the no-cloning theorem and the non-reversible measurement process, provide new challenges in the measurement of quantum states; in quantum information science, there is no concept analogous to sufficient statistics in classical information science. Therefore, to extract as much information as possible from quantum states, it is important to choose the right measurement process. 
In this thesis, we investigate the fundamental question of how to design the measurement process to efficiently extract information from quantum states. ', 20, N'imageEvent.jpg', N'JamNguyen@gmail.com', CAST(0x0000A30E00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (9, CAST(0x0000A2AF00000000 AS DateTime), N'Directoryless Shared Memory Architecture ', N'Tommy', 5, 100, N'Chip multiprocessors (CMPs) have become mainstream in recent years, and, for scalability reasons, high-core-count designs tend towards tiled CMPs with physically distributed caches. In order to support shared memory, current many-core CMPs maintain cache coherence using distributed directory protocols, which are extremely difficult and error-prone to implement and verify. Private caches with directory-based coherence also provide suboptimal performance when a thread accesses large amounts of data distributed across the chip: the data must be brought to the core where the thread is running, incurring delays and energy costs. Under this scenario, migrating a thread to data instead of the other way around can improve performance.', 20, N'imageEvent.jpg', N'Jessica@hotmail.com', CAST(0x0000A2A600000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (10, CAST(0x0000A2CE00000000 AS DateTime), N'Thread Migration and Remote Access', N'Richard Carlson', 5, 100, N'In this thesis, we propose a directoryless approach where data can be accessed either via a round-trip remote access protocol or by migrating a thread to where data resides. While our hardware mechanism for fine-grained thread migration enables faster migration than previous proposals, its costs still make it crucial to use thread migrations judiciously for the performance of our proposed architecture. We, therefore, present an on-line algorithm which decides at the instruction level whether to perform a remote access or a thread migration. In addition, to further reduce migration costs, we extend our scheme to support partial context migration by predicting the necessary thread context. Finally, we provide the ASIC implementation details as well as RTL simulation results of the Execution Migration Machine, a 110-core directoryless shared-memory processor.', 20, N'imageEvent.jpg', N'Millo@hotmail.com', CAST(0x0000A2C500000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (11, CAST(0x0000A32C000000E6 AS DateTime), N'Ghaffari teams to maximize network bandwidth ', N'David Richo', 5, 100, N'Electrical Engineering and Computer Science Department graduate student Mohsen Ghaffari, also a member of MITÃ¢??s Computer Science and Artificial Intelligence Lab (CSAIL) has developed a new way to use Ã¢??vertex connectivityÃ¢?ï¿½ that could ultimately lead to communication protocols that will allow as much network bandwidth as possible. Ghaffari and members of an international team will present this work in January at the ACM-SIAM Symposium on Discrete Algorithms in Portland, Oregon.', 20, N'imageEvent4.jpg', N'Default event', CAST(0x0000A31A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (12, CAST(0x0000A33B00000000 AS DateTime), N'Baldo, Bulovic team to view excitons in action', N'Spencer Johnson', 5, 100, N'Until now the theoretical and much studied quasiparticle known as the exciton — responsible for the transfer of energy within devices such as solar cells, LEDs, and semiconductor circuits — has never been observed in action. Now researchers in the Center for EXcitonics in the Research Laboratory of Electronics (RLE) at MIT including EECS professors Marc Baldo and Vladimir Bulovic, and investigators at the City College of New York have imaged excitons'' motions directly. This could enable research leading to advances in electronics and enhanced understanding of natural energy-transfer processes, such as photosynthesis.', 20, N'imageEvent3.jpg', N'Default event', CAST(0x0000A31A00000000 AS DateTime), 0, 1)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (13, CAST(0x0000A32700000071 AS DateTime), N'One robot per child', N'Tommy', 5, 100, N'This week researchers from MITÃ??Ã?Â¢??s Computer Science and Artificial Intelligence Laboratory (CSAIL) received top honors in multiple categories at an international competition focused on designing affordable, classroom-friendly robots.

The team from CSAIL Director Daniela RusÃ??Ã?Â¢?? Distributed Robotics Lab earned first place in the categories of hardware and curriculum for a printable, origami-inspired Segway robot, called SEG, at the Ã??Ã?Â¢??Ultra-Affordable RobotÃ??Ã?Â¢?Ã?Â¯Ã?Â¿Ã?Â½ competition sponsored by the African Robotics Network (AFRON) and the IEEE Robotics and Automaton Society"', 20, N'imageEvent2.jpg', N'Default event', CAST(0x0000A31A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (14, CAST(0x0000A30900000000 AS DateTime), N'Engineering Design Studio ', N'David Richo', 5, 100, N'I had never soldered before I came [to MIT], I had never used a drill,” says Lizi George ’12 MEng’14, who worked as a teaching assistant in the new fabrication facility. “The majority of EECS students don’t have that experience. But that’s one of the goals of MIT—the ‘mind and hand’ motto, getting the hands-on experience.”

George had a revelation when, as an undergraduate, she took machining and power electronics classes with Steven Leeb ’87, an EECS professor and member of the Research Laboratory of Electronics. “I was totally struck—I had never built anything before,” she says.', 20, N'imageEvent.jpg', N'Default event', CAST(0x0000A30000000000 AS DateTime), 2, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (15, CAST(0x0000A30000000000 AS DateTime), N'mart caching for chips of today and tomorrow', N'Gary Chapman', 5, 100, N'Computer chips keep getting faster because transistors keep getting smaller. But the chips themselves are as big as ever, so data moving around the chip, and between chips and main memory, has to travel just as far. As transistors get faster, the cost of moving data becomes, proportionally, a more severe limitation.

So far, chip designers have circumvented that limitation through the use of “caches” — small memory banks close to processors that store frequently used data. But the number of processors — or “cores” — per chip is also increasing, which makes cache management more difficult. Moreover, as cores proliferate, they have to share data more frequently, so the communication network connecting the cores becomes the site of more frequent logjams, as well.', 20, N'imageEvent.jpg', N'Default event', CAST(0x0000A2EF00000000 AS DateTime), 2, 1)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (16, CAST(0x0000A33600000066 AS DateTime), N'Fundamental Limits Adaptive ', N'Gary Chapman', 5, 100, N'Motivated by the increasing demand for more powerful and efficient optical communication systems, quantum mechanics of information processing has become the key element in determining the fundamental limits of physical channels, and in designing quantum communication systems that approach those fundamental limits.
To achieve higher data rate over quantum optical channels, we need to efficiently extract classical information from quantum states. However, peculiar properties of quantum states, such as the no-cloning theorem and the non-reversible measurement process, provide new challenges in the measurement of quantum states; in quantum information science, there is no concept analogous to sufficient statistics in classical information science. Therefore, to extract as much information as possible from quantum states, it is important to choose the right measurement process. 
In this thesis, we investigate the fundamental question of how to design the measurement process to efficiently extract information from quantum states. ', 55, N'imageEvent1.jpg', N'Default event', CAST(0x0000A31A00000000 AS DateTime), 0, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (17, CAST(0x0000A3180000009F AS DateTime), N'Directoryless Shared Memory Architecture ', N'Tommy', 10, 15, N'Chip multiprocessors (CMPs) have become mainstream in recent years, and, for scalability reasons, high-core-count designs tend towards tiled CMPs with physically distributed caches. In order to support shared memory, current many-core CMPs maintain cache coherence using distributed directory protocols, which are extremely difficult and error-prone to implement and verify. Private caches with directory-based coherence also provide suboptimal performance when a thread accesses large amounts of data distributed across the chip: the data must be brought to the core where the thread is running, incurring delays and energy costs. Under this scenario, migrating a thread to data instead of the other way around can improve performance.', 11, N'imageEvent.jpg', N'Default event', CAST(0x0000A30000B3BB79 AS DateTime), 2, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (18, CAST(0x0000A31300000000 AS DateTime), N'EDS Grand Opening', N'Richard Carlson', 5, 100, N'The EECS department is proud to unveil its brand new design studio/machine shop/teaching lab, the Cypress Engineering Design Studio!  Inside the newly renovated space in 38-501, EDS supports existing classes and provides an incredible space for new ones dedicated to building hardware and programming systems.  
 
There will be live demonstrations of machines and tools, food provided by Jules Catering, and presentations by our generous sponsors, Cypress Semiconductor and Agilent Technologies.  This event is open to all members of the MIT community, so please come join us and celebrate!', 20, N'imageEvent.jpg', N'Default event', CAST(0x0000A30000000000 AS DateTime), 2, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (19, CAST(0x0000A2F400000000 AS DateTime), N'Cyber Inferno Seven Circles', N'Merlin S Tone', 5, 100, N'If alive today Dante would no doubt be shocked at how today''s seven circles are not those of Hell but seven circles of cyberthreats. As in Inferno, the modern-day cyberthreat circles relate to chronological stages. It all started in Limbo - the first circle - with researchers playing around with malicious code. ', 20, N'imageEvent.jpg', N'Trinh@yahoo.com', CAST(0x0000A2E100000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (20, CAST(0x0000A2D800000000 AS DateTime), N'Optimal Rate Communication by Regression', N'David Richo', 5, 100, N'We discuss our recently developed sparse superposition codes for the Gaussian noise channel. With a fast adaptive successive decoder it achieves nearly exponentially small error probability at any fixed rate R less than the Shannon capacity. This is joint work with Antony Joseph and Sanghee Cho.', 20, N'imageEvent.jpg', N'Nicky@mail.com', CAST(0x0000A2C500000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (21, CAST(0x0000A2B900000000 AS DateTime), N'Placement in Cloud Computing Systems', N'Spencer Johnson', 5, 100, N'Cloud computing has become popular in recent years.  Companies such as

Amazon and Microsoft host large datacenters of networked machines

available for users to rent.  These users are varied: from individual

researchers to large companies.  Their workloads range from short,

resource-intensive jobs to long-running user-facing services.', 20, N'imageEvent.jpg', N'Jonh8088@yahoo.com', CAST(0x0000A2A600000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (22, CAST(0x0000A14700000000 AS DateTime), N'Matrix Energetics', N'David Richo', 5, 100, N'The ME Fundamentals seminar is about accessing transformation, empowerment and infinite possibilities, utilizing the extremely playful and life-changing consciousness technology known as Matrix Energetics®. Students learn to reliably and consistently move into the field of the heart to access the Universal Field of Consciousness Potential known as the Zero Point Field. From this point of intuitive awareness, all methods of Matrix Energetics are easily accessible and provide for instantaneous and life-long changes in all aspects of reality.', 20, N'imageEvent.jpg', N'James1010@gmail.com', CAST(0x0000A13900000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (23, CAST(0x0000A15600000000 AS DateTime), N'The Journey into Self-Mastery', N'Harry Paul', 5, 100, N'The Mastery seminar currently represents the culmination of Matrix Energetics course offerings and is a Journey into Self-Mastery. In this groundbreaking training course, Melissa and Richard present in-depth and comprehensive templates of advanced skill-sets for students of Matrix Energetics'' continued journey toward self-mastery.

You will learn how to locate physical/energetic areas of imbalance in the body, determine the cause of the imbalance and utilize specific energetic tools and techniques to correct imbalances contributing to the condition or problem. Dr. Bartlett and Melissa Joy have personally and professionally been using this new process consistently with very powerful results.', 20, N'imageEvent.jpg', N'Jock@hotmail.com', CAST(0x0000A14700000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (24, CAST(0x0000A16600000000 AS DateTime), N'PRACTITIONER CERTIFICATION TRAINING', N'Merlin S Tone', 5, 100, N'Upon successful completion of all designated requirements, applicants will earn the title of Certified Matrix Energetics Practitioner and will be able to use the Matrix Energetics logo on business cards, brochures and select marketing materials. Active Certified Practitioners will also be listed on our official website under the category of Certified Practitioners.

Practitioners will be required to maintain their certification by attending one Fundamentals or Field Trip or Magic or Mastery seminar per year. Practitioners will be eligible for the repeat seminar discount, if they have attended the same level previously, or they may serve as a staff intern/ facilitator as space allows.', 20, N'imageEvent.jpg', N'Sar1212@gmai.com', CAST(0x0000A15800000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (25, CAST(0x0000A17300000000 AS DateTime), N'Innovation in Recruitment Summit 2013', N'Richard Carlson', 5, 100, N'This conference will take an in-depth look the latest innovations in recruitment, with a focus on RPO, digital & social media strategies and the latest technologies.

The event will give you the tools to develop cost-effective solutions that support your business agenda.
This conference will help you streamline recruitment strategies and improve your candidate experience.
', 10, N'imageEvent.jpg', N'Alex@yahoo.com', CAST(0x0000A16600000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (26, CAST(0x0000A18200000000 AS DateTime), N'Expatriate Management and Global Mobility', N'Florida', 5, 100, N'Unravel some of the most demanding challenges you face when managing a global workforce. At this conference you will hear a wealth of best practice case studies on international assignment management from a range of multinational organisations. This event has been specially designed to assist in-house HR professionals responsible for the management and administration of expatriate’s and international employees.

This conference will provide you with the necessary tools to refine your mobility process to match changing business needs and objectives. It will give you the tools to ensure the success of every assignment through compliance, managing costs and developing flexible, competitive policies.', 20, N'imageEvent.jpg', N'James1010@gmail.com', CAST(0x0000A17400000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (27, CAST(0x0000A19100000000 AS DateTime), N'Successful HR Business Partnering Conference', N'Spencer Johnson', 5, 100, N'Business partnering is one of the most difficult aspects of HR transformation to implement, however a successful partnership between HR and the business will drive organisational success. This conference will fully examine the role and purpose of HR business partnering and will share strategic insights and best practice guides to transform HR generalists into successful business partners

', 10, N'imageEvent.jpg', N'Joe@hotmai.com', CAST(0x0000A18200000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (28, CAST(0x0000A19C00000000 AS DateTime), N'Speaker', N'Richard Rossiter', 5, 100, N'Symposium is dedicated to working closely with its presenters and key-note speakers to ensure their messages are clearly communicated to the investment community. We do more than just give them a slide projector and microphone – we can help with their presentation as well as offer advice on presentation skills and how to effectively communicate their message. We also work with them to ensure they have the right people in the room to hear that message.

“Kerry’s energetic style and professional approach makes Australian Resources Promotion a great networking and information sharing forum for investors and resource sector developers.”', 10, N'imageEvent.jpg', N'Default event', CAST(0x0000A19300000000 AS DateTime), 2, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (29, CAST(0x0000A1B000000000 AS DateTime), N'The sponsor', N'Chairman', 5, 100, N'As a sponsor of a Symposium event we will work with you in the lead up to the event as well as on site and post event to ensure that your valuable support is not taken for granted. Sponsorship gives a company strong profiling to a targeted audience. We have off the shelf solutions or can tailor make a package that will suit your requirements.', 10, N'imageEvent.jpg', N'Default event', CAST(0x0000A1A100000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (30, CAST(0x0000A1BF00000000 AS DateTime), N'The exhibitor', N'Victoria Thomas', 5, 100, N'At Symposium, we ensure our larger events not only have a strong agenda, but a strong group of exhibitors to complement the agenda. We work hard to ensure our speakers, audience and exhibitors all relate to the themes and & topics.

Exhibiting at a Symposium event gives you full access to the event and the ability to talk face-to-face with delegates that are keen to understand more about your business. To make your life that bit easier, Symposium will also arrange all the items you need for a successful exhibit.', 20, N'imageEvent.jpg', N'AdamSandle@gmail.com', CAST(0x0000A1B100000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (31, CAST(0x0000A1CE00000000 AS DateTime), N'The event organiser', N'David Richo', 5, 100, N'Symposium conference management is all about delivering a first class service to our clients. Whether you are looking to host an AGM for ten people or a medical meeting for 5,000 our team of project managers is here to make your life easier. We understand that you are looking to deliver a memorable event and we will work with you every step of the way to ensure that your objectives are met and exceeded. We look at the whole event and message not just the logistics. We can do as much or as little as you need to help you get the outcomes you desire.', 10, N'imageEvent.jpg', N'123@hotmail.com', CAST(0x0000A1BF00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (32, CAST(0x0000A1DE00000000 AS DateTime), N'The Journey into Self-Mastery', N'Harry Paul', 5, 100, N'The Mastery seminar currently represents the culmination of Matrix Energetics course offerings and is a Journey into Self-Mastery. In this groundbreaking training course, Melissa and Richard present in-depth and comprehensive templates of advanced skill-sets for students of Matrix Energetics'' continued journey toward self-mastery.

You will learn how to locate physical/energetic areas of imbalance in the body, determine the cause of the imbalance and utilize specific energetic tools and techniques to correct imbalances contributing to the condition or problem. Dr. Bartlett and Melissa Joy have personally and professionally been using this new process consistently with very powerful results.', 10, N'imageEvent.jpg', N'Guy@hotmail.com', CAST(0x0000A1D000000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (33, CAST(0x0000A1ED00000000 AS DateTime), N'EDS Grand Opening', N'Richard Carlson', 5, 100, N'The EECS department is proud to unveil its brand new design studio/machine shop/teaching lab, the Cypress Engineering Design Studio!  Inside the newly renovated space in 38-501, EDS supports existing classes and provides an incredible space for new ones dedicated to building hardware and programming systems.  
 
There will be live demonstrations of machines and tools, food provided by Jules Catering, and presentations by our generous sponsors, Cypress Semiconductor and Agilent Technologies.  This event is open to all members of the MIT community, so please come join us and celebrate!', 10, N'imageEvent.jpg', N'Jeffrey@yahoo.com', CAST(0x0000A1DE00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (34, CAST(0x0000A1FC00000000 AS DateTime), N'Innovation in Recruitment Summit 2013', N'Merlin S Tone', 5, 80, N'This conference will take an in-depth look the latest innovations in recruitment, with a focus on RPO, digital & social media strategies and the latest technologies.

The event will give you the tools to develop cost-effective solutions that support your business agenda.
This conference will help you streamline recruitment strategies and improve your candidate experience.
', 15, N'imageEvent.jpg', N'Jonh8088@yahoo.com', CAST(0x0000A1EE00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (35, CAST(0x0000A20B00000000 AS DateTime), N'Placement in Cloud Computing Systems', N'Spencer Johnson', 5, 80, N'Cloud computing has become popular in recent years.  Companies such as

Amazon and Microsoft host large datacenters of networked machines

available for users to rent.  These users are varied: from individual

researchers to large companies.  Their workloads range from short,

resource-intensive jobs to long-running user-facing services.', 12, N'imageEvent.jpg', N'Tohl@yahoo.com', CAST(0x0000A1FC00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (36, CAST(0x0000A21B00000000 AS DateTime), N'Matrix Energetics', N'David Richo', 5, 80, N'The ME Fundamentals seminar is about accessing transformation, empowerment and infinite possibilities, utilizing the extremely playful and life-changing consciousness technology known as Matrix Energetics®. Students learn to reliably and consistently move into the field of the heart to access the Universal Field of Consciousness Potential known as the Zero Point Field. From this point of intuitive awareness, all methods of Matrix Energetics are easily accessible and provide for instantaneous and life-long changes in all aspects of reality.', 14, N'imageEvent.jpg', N'James1010@gmail.com', CAST(0x0000A20D00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (37, CAST(0x0000A22A00000000 AS DateTime), N'The exhibitor', N'Victoria Thomas', 5, 80, N'At Symposium, we ensure our larger events not only have a strong agenda, but a strong group of exhibitors to complement the agenda. We work hard to ensure our speakers, audience and exhibitors all relate to the themes and & topics.

Exhibiting at a Symposium event gives you full access to the event and the ability to talk face-to-face with delegates that are keen to understand more about your business. To make your life that bit easier, Symposium will also arrange all the items you need for a successful exhibit.', 12, N'imageEvent.jpg', N'Joe@hotmai.com', CAST(0x0000A21B00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (38, CAST(0x0000A24900000000 AS DateTime), N'RLE Events', N'Spencer Johnson', 5, 80, N'Motivated by the increasing demand for more powerful and efficient optical communication systems, quantum mechanics of information processing has become the key element in determining the fundamental limits of physical channels, and in designing quantum communication systems that approach those fundamental limits.
To achieve higher data rate over quantum optical channels, we need to efficiently extract classical information from quantum states. However, peculiar properties of quantum states, such as the no-cloning theorem and the non-reversible measurement process, provide new challenges in the measurement of quantum states; in quantum information science, there is no concept analogous to sufficient statistics in classical information science. Therefore, to extract as much information as possible from quantum states, it is important to choose the right measurement process. 
In this thesis, we investigate the fundamental question of how to design the measurement process to efficiently extract information from quantum states. ', 15, N'imageEvent.jpg', N'Nguyen@yahoo.com', CAST(0x0000A22C00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (39, CAST(0x0000A26700000000 AS DateTime), N'Placement in Cloud Computing Systems', N'David Richo', 5, 70, N'Cloud computing has become popular in recent years.  Companies such as

Amazon and Microsoft host large datacenters of networked machines

available for users to rent.  These users are varied: from individual

researchers to large companies.  Their workloads range from short,

resource-intensive jobs to long-running user-facing services.', 16, N'imageEvent.jpg', N'Keith@hotmail.com', CAST(0x0000A24A00000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (40, CAST(0x0000A28600000000 AS DateTime), N'EDS Grand Opening', N'Richard Carlson', 5, 60, N'The EECS department is proud to unveil its brand new design studio/machine shop/teaching lab, the Cypress Engineering Design Studio!  Inside the newly renovated space in 38-501, EDS supports existing classes and provides an incredible space for new ones dedicated to building hardware and programming systems.  
 
There will be live demonstrations of machines and tools, food provided by Jules Catering, and presentations by our generous sponsors, Cypress Semiconductor and Agilent Technologies.  This event is open to all members of the MIT community, so please come join us and celebrate!', 10, N'imageEvent.jpg', N'JoHan@yahoo.com', CAST(0x0000A26900000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (41, CAST(0x0000A2A400000000 AS DateTime), N'Speaker', N'Richard Rossiter', 5, 60, N'Symposium is dedicated to working closely with its presenters and key-note speakers to ensure their messages are clearly communicated to the investment community. We do more than just give them a slide projector and microphone – we can help with their presentation as well as offer advice on presentation skills and how to effectively communicate their message. We also work with them to ensure they have the right people in the room to hear that message.

“Kerry’s energetic style and professional approach makes Australian Resources Promotion a great networking and information sharing forum for investors and resource sector developers.”', 12, N'imageEvent.jpg', N'Taylor@gmail.com', CAST(0x0000A28700000000 AS DateTime), 1, 0)
GO
INSERT [dbo].[tblEvents] ([eventID], [eventDate], [eventName], [eventHost], [eventMin], [eventMax], [eventDes], [eventPrice], [eventImg], [eventWinner], [eventRegBegin], [eventStt], [isDeleted]) VALUES (42, CAST(0x0000A35A00000019 AS DateTime), N'PRACTITIONER CERTIFICATION TRAINING', N'Merlin S Tone', 5, 60, N'Upon successful completion of all designated requirements, applicants will earn the title of Certified Matrix Energetics Practitioner and will be able to use the Matrix Energetics logo on business cards, brochures and select marketing materials. Active Certified Practitioners will also be listed on our official website under the category of Certified Practitioners.

Practitioners will be required to maintain their certification by attending one Fundamentals or Field Trip or Magic or Mastery seminar per year. Practitioners will be eligible for the repeat seminar discount, if they have attended the same level previously, or they may serve as a staff intern/ facilitator as space allows.', 20, N'imageEvent5.jpg', N'Default event', CAST(0x0000A31A00000000 AS DateTime), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[tblEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFAQ] ON 

GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (1, N'How do I register?', N'You can click SingUp in the Home page.', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (2, N'Why do I pay?', N'The majority of your ticket price goes towards paying the 7 meals, snacks, and drinks that we provide.
 We rely on local sponsorships to help keep ticket prices low while keeping the value of the event high.', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (3, N'How do I prepare?', N'Do as much research/preparation around your idea as you feel 
 is necessary to give a persuasive pitch and attract a team.', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (4, N'Can I attend without participating on a team?', N'Everyone who attends the event is expected to participate on a team. 
 This is important not only to preserve the ‘vibe’ of the weekend (“no talk, all action”) but also to minimize distractions/disruptions for working teams.', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (5, N'What should I bring?', N'Laptop ,camera , pencil and student card or business card( if any)', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (6, N'Is this event for me?', N'Startup Weekend attendees’ backgrounds are roughly 50% technical (developers, coders, designers) and 50% business (marketing, finance, law). What unites all attendees is a common interest in entrepreneurship: whether a serial entrepreneur or new to the startup scene, every attendee is interested in working with a like-minded, motivated and skilled team to develop a product or business in one weekend. If this sounds like you, this is the event for you!', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (7, N'What happens on Friday, Saturday and Sunday?', N'Friday: Participants arrive between 5-7 PM, begin networking, and eat dinner. After an ice-breaking game and a short introduction by the Facilitator, there will typically be 1 short speech on practical topics ranging from Pitching Best Practices to Lean Startup Methodology and more. Then the “Pitchfire” will commence: anyone intending to pitch will have 60 seconds to give their best pitch. No presentations or props needed for Friday. It will just be you and a mic. After pitches are finished, all attendees will vote on their favorites, and using these votes the top ideas will be selected to be worked on over the weekend. Teams will form organically, consolidate, and begin working.
Saturday: Teams will work all day, with the occasional breaks to eat or listen to 1-2 short talks. Coaches will be circulating to provide concrete advice in the field of their expertise for those teams that want it.Sunday: Teams will work uninterrupted from morning until mid-afternoon. They’ll begin wrapping up their product/prototype and/or presentation around 3-4 PM to do tech-checks and practice their demonstration. After all Judges have arrived presentations will begin: each team typically has 5 minutes plus 2-3 minutes Q&A from the jury (this varies occasionally.) The jury will select the top teams, give out prizes (if applicable), and the event ends (and celebration begins!)', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (8, N'How do teams address the issue of IP/ownership?', N'As with any startup, the team decides. Startup Weekend doesn’t support or take part in the signing of any legal documents at the events themselves, and while Mentors with legal backgrounds are often present and able to give general advice, they are not permitted to give specific legal counsel.While it doesn’t hurt to be clear about your individual expectations from the start, we’ve found that teams who don’t spend time addressing this issue until it actually matters (i.e., there is a tangible product to have ownership of) are much more productive and successful than those who do.', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (9, N'I Love KSC! How can I get more involved?', N'We love you too! One of the beautiful things about Startup Weekend is that just about anybody can get involved, provided you are in it for the right reasons: to build communities and create startups.We can always use more help organizing events on a local level: if you’re looking to join the organizing effort within you city, please contact your Local Organizers (if you can’t find contact information on the city website', 0)
GO
INSERT [dbo].[tblFAQ] ([faqID], [faqQuestion], [faqAns], [isDeleted]) VALUES (10, N'How does Startup Weekend make money?', N'Startup Weekend is a registered 501(c)(3) non-profit charitable organization. While we do make profit on certain events, the majority of our revenue comes from Global & Regional Sponsors and Grants, first and foremost', 0)
GO
SET IDENTITY_INSERT [dbo].[tblFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFeedback] ON 

GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (1, N'Adam Sandle', N'Why I do not recieve  information of KSC?', N'cÃ?Â©vcsc', N'14/04/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (2, N'DaHarrison Ford ', N'What time Benifit of reading book event happening?', N'We will send email for you before a week event happen', N'14/04/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (3, N'Jame Nguyen', N'The event very fantastic ,I love KSC', N'123123', N'13/04/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (4, N'Naomi Watts', N'I was winner , I felt very happy because I recieved 1000 $', N'Congratulation', N'10/03/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (5, N'Lucky Jame', N'The food is delicious and everyone is quite sociable', N'Yes,It is very good.', N'20/03/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (6, N'Sar Levitan', N'The event fee is cheap so I can save money', N'KSC, Thank you so much', N'18/04/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (7, N'Nicholas Carr', N'The event is excited', N'I think so ', N'20/02/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (8, N'Sar Levitan', N'Do you think about KSC?', N'I like KSC', N'15/03/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (9, N'Taylor ', N'I feel funny when join event', N'Thanks you', N'16/04/2014', 0)
GO
INSERT [dbo].[tblFeedback] ([fbID], [fbFrom], [fbQuestion], [fbAns], [fbDate], [isDeleted]) VALUES (10, N'Brooke Mc	', N'I don''t like event because it ''s noise', N'I hopeyou will like  KSC', N'18/04/2014', 0)
GO
SET IDENTITY_INSERT [dbo].[tblFeedback] OFF
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'123@hotmail.com', N'123456', 2, N'Tony Stark', N'02/08/1993', 0, N'UserImage.jpg', 430, N'1200 Red Cleveland Blvd, Sanford, FL 32773', N'40725368', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'AdamSandle@gmail.com', N'123456', 2, N'Adam Sandle', N'06/06/1992', 0, N'UserImage.jpg', 120, N'300 Pasteur Dr, Stanford, CA 94305', N'65072340', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Admin@mail.com', N'123456', 1, N'Terrel H-Bell', N'03/04/1992', 0, N'UserImage.jpg', 140, N'12 BC Toronto, Canada', N'6258936', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Alan@hotmail.com', N'123456', 3, N'Alan Phan ', N'05/08/1990', 1, N'UserImage.jpg', 200, N'14 Red River,MA01', N'78945666', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Alan@yahoo.com', N'123456', 2, N'Alan Tapp', N'03/02/1992', 0, N'UserImage.jpg', 140, N'216 E 10th St
New York', N'6215987', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Alex@yahoo.com', N'123456', 2, N'Alex Mc', N'03/04/1989', 0, N'UserImage.jpg', 702, N'1200 Red Cleveland Blvd, Sanford, FL 327', N'60459872', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Angle@yahoo.com', N'123456', 2, N'Angle Ly', N'01/02/1990', 1, N'UserImage.jpg', 571, N'214 Texas, US', N'60458962', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Anick@yahoo.com', N'1234567', 2, N'Anick Jame', N'10/01/2000', 1, N'UserImage.jpg', 0, N'12 Texas ,USA', N'12345678', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Brroke1404@yahoo.com', N'123456789', 2, N'Brooke Mc	', N'06/4/1990', 1, N'UserImage.jpg', 200, N'Massachusetts Hall', N'', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Default event', N'123456', 0, N'DF', N'01/02/1980', 1, N'UserImage.jpg', 1, N'KSC', N'60540534', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'guest@yahoo.com', N'123456', 0, N'guest', N'01/01/1990', 0, N'UserImage.jpg', 0, N'VN', N'0000000', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Guy@hotmail.com', N'123456', 2, N'Guy Rawasaki', N'01/02/1990', 0, N'UserImage.jpg', 40, N'158 Red River,MA01', N'5621437', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'hello123@gmail.com', N'123456', 2, N'Harrison Ford ', N'08/08/1990', 0, N'UserImage.jpg', 641, N'216 E 10th St
New York', N'21245666', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Herb04@gmai.com', N'123456', 3, N'Herb Cohen', N'01/08/1990', 0, N'UserImage.jpg', 170, N'216 E 10th St
New York', N'60458962', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'James1010@gmail.com', N'123456', 2, N'James M Strock', N'09/01/1990', 0, N'UserImage.jpg', 20, N'216 E 10th St
New York', N'78454892', 1, 1)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'JamNguyen@gmail.com', N'123456', 3, N'Jame Nguyen', N'12/04/1988', 0, N'UserImage.jpg', 321, N'14 Red River,MA01', N'78454892', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Jean16@gmail.com', N'123456', 3, N'Jean Robelin', N'05/04/1992', 0, N'UserImage.jpg', 160, N'162 Red River BC', N'6245789', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Jeffrey@yahoo.com', N'123456', 2, N'Jeffrey J Fox', N'01/02/1990', 1, N'UserImage.jpg', 120, N'250 Red Cleveland Blvd, Sanford, FL 32773', N'5621437', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Jessica@hotmail.com', N'123456', 3, N'Jessica ', N'05/08/1988', 1, N'UserImage.jpg', 160, N'84Toronto,Canada', N'78945666', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Jock@hotmail.com', N'123456', 2, N'Jock P Kotter', N'07/01/1990', 0, N'UserImage.jpg', 40, N'1 Red Cleveland Boulevard', N'45621378', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Joe@hotmai.com', N'123456', 2, N'Joe Vitable', N'02/04/1992', 1, N'UserImage.jpg', 10, N'84Toronto,Canada', N'60858462', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'JoHan@yahoo.com', N'123456', 2, N'Jo Han Mok', N'10/02/1992', 0, N'UserImage.jpg', 20, N'215 Pasteur DR', N'7589642', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Jonh8088@yahoo.com', N'123456', 3, N'John Dewey', N'04/01/1992', 0, N'UserImage.jpg', 280, N'12 BC Toronto, Canada', N'6258936', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Kaylin1402@hotmail.com', N'123456', 3, N'Kaylin', N'06/07/1986', 1, N'UserImage.jpg', 180, N'215 Pasteur DR', N'74512387', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Keith@hotmail.com', N'123456', 2, N'Keith Ferrazzi', N'01/01/1994', 1, N'UserImage.jpg', 300, N'284 BC Toronto, Canada', N'5624444', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Lawrence@hotmail.com', N'123456', 3, N'Lawrence E Joseph', N'05/08/1991', 1, N'UserImage.jpg', 180, N'269 Vancouver , Canada', N'6877988', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Linda@yahoo.com', N'123456', 3, N'Linda Tran', N'02/10/1991', 1, N'UserImage.jpg', 60, N'152 Pasteur DR', N'60840821', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'LucKy@gmail.com', N'123456', 3, N'Lucky Jame', N'01/01/1990', 0, N'UserImage.jpg', 241, N'UK', N'123456', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Malcolm0101@yahoo.com', N'123456', 3, N'Malcolm Gladwell', N'02/03/1990', 0, N'UserImage.jpg', 150, N'California', N'5624444', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Mike111@hotmail.com', N'123456', 3, N'Mike Herracki', N'02/01/1994', 0, N'UserImage.jpg', 240, N'Massachusetts Hall', N'568978', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Millo@hotmail.com', N'123456', 3, N'Naomi Watts', N'01/01/1989', 1, N'UserImage.jpg', 522, N'1 Red Cleveland Boulevard', N'60858462', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'MinhNhut89@mail.com', N'123456789', 3, N'NickyVo', N'10/10/1994', 0, N'Koala.jpg', 0, N'HCMC', N'123456789', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Nguyen@yahoo.com', N'123456', 2, N'Tran Nguyen Cong Nguyen', N'06/06/1994', 0, N'UserImage.jpg', 200, N'VN', N'8482551', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Nicholas@yahoo.com', N'123456', 3, N'Nicholas Carr', N'07/05/19989', 0, N'UserImage.jpg', 20, N'Texas , USA', N'58496237', 0, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Nicky@mail.com', N'123456', 2, N'Nicky Vo', N'10/10/1994', 0, N'UserImage.jpg', 360, N'Bevely Hill CA 80210', N'8981258', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Nicky123@mail.com', N'123456', 2, N'Nicky Vo', N'27/4/1996', 1, N'Koala.jpg', 0, N'1252 ABC ', N'123456789', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Paul@hotmail.com', N'123456', 2, N'Paul R Gamble', N'04/05/1992', 0, N'UserImage.jpg', 160, N'Massachusetts Hall', N'7589642', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Ronald@gmai.com', N'123456', 2, N'Ronald Gross', N'08/04/1991', 0, N'UserImage.jpg', 240, N'215 Pasteur DR', N'5621437', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Rousseau@yahoo.com', N'123456', 3, N'J J Rousseau', N'02/07/1990', 1, N'UserImage.jpg', 320, N'216 E 10th St
New York', N'60458962', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Sar1212@gmai.com', N'123456', 2, N'Sar Levitan', N'02/05/1993', 1, N'UserImage.jpg', 140, N'158 Red River,MA01', N'2589634', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Steven@hotmail.com', N'123456', 3, N'Steven S Little', N'02/01/1990', 0, N'UserImage.jpg', 160, N'Scotland,London', N'45621378', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Taylor@gmail.com', N'123456', 3, N'Taylor ', N'07/08/1991', 0, N'UserImage.jpg', 200, N'12 BC, Vancouver', N'74521638', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Terrel@hotmail.com', N'123456', 3, N'Terrel H-Bell', N'03/04/1992', 0, N'UserImage.jpg', 140, N'12 BC Toronto, Canada', N'6258936', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Tohl@yahoo.com', N'123456', 2, N'Tohl Raz', N'06/06/1993', 0, N'UserImage.jpg', 220, N'14 Red River,MA01', N'58496237', 1, 0)
GO
INSERT [dbo].[tblUsers] ([Username], [Password], [userType], [Fullname], [DOB], [Gender], [userImg], [userScore], [userAddress], [userPhone], [isSubscribed], [isDeleted]) VALUES (N'Trinh@yahoo.com', N'123456', 2, N'Nguyen Ngoc Kieu Trinh', N'02/03/1994', 0, N'UserImage.jpg', 280, N'VN', N'8283348', 0, 0)
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD  CONSTRAINT [FK_tblComments_tblEvents] FOREIGN KEY([eventID])
REFERENCES [dbo].[tblEvents] ([eventID])
GO
ALTER TABLE [dbo].[tblComments] CHECK CONSTRAINT [FK_tblComments_tblEvents]
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD  CONSTRAINT [FK_tblComments_tblUsers] FOREIGN KEY([Username])
REFERENCES [dbo].[tblUsers] ([Username])
GO
ALTER TABLE [dbo].[tblComments] CHECK CONSTRAINT [FK_tblComments_tblUsers]
GO
ALTER TABLE [dbo].[tblContents]  WITH CHECK ADD  CONSTRAINT [FK_tblContents_tblEvents] FOREIGN KEY([eventID])
REFERENCES [dbo].[tblEvents] ([eventID])
GO
ALTER TABLE [dbo].[tblContents] CHECK CONSTRAINT [FK_tblContents_tblEvents]
GO
ALTER TABLE [dbo].[tblEnrolls]  WITH CHECK ADD  CONSTRAINT [FK_tblEnroll_tblEvents] FOREIGN KEY([eventID])
REFERENCES [dbo].[tblEvents] ([eventID])
GO
ALTER TABLE [dbo].[tblEnrolls] CHECK CONSTRAINT [FK_tblEnroll_tblEvents]
GO
ALTER TABLE [dbo].[tblEnrolls]  WITH CHECK ADD  CONSTRAINT [FK_tblEnroll_tblUsers] FOREIGN KEY([Username])
REFERENCES [dbo].[tblUsers] ([Username])
GO
ALTER TABLE [dbo].[tblEnrolls] CHECK CONSTRAINT [FK_tblEnroll_tblUsers]
GO
ALTER TABLE [dbo].[tblEvents]  WITH CHECK ADD  CONSTRAINT [FK_tblEvents_tblUsers] FOREIGN KEY([eventWinner])
REFERENCES [dbo].[tblUsers] ([Username])
GO
ALTER TABLE [dbo].[tblEvents] CHECK CONSTRAINT [FK_tblEvents_tblUsers]
GO
USE [master]
GO
ALTER DATABASE [KscUniversity] SET  READ_WRITE 
GO
