USE [GMS32DBASE]


GO
/****** Object:  Table [dbo].[ABORTCODES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABORTCODES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ACCESSLEVELTEMPLATE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCESSLEVELTEMPLATE](
	[TemplateName] [varchar](64) NOT NULL,
	[GAGNo] [int] NOT NULL,
	[FAGNo] [int] NULL,
	[StartDay] [int] NOT NULL,
	[EndDay] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ACTIONTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACTIONTYPES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[SeqNo] [int] NOT NULL,
	[LastName] [varchar](41) NOT NULL,
	[FirstName] [varchar](41) NULL,
	[MiddleName] [varchar](2) NULL,
	[DOB] [int] NULL,
	[PersonalID] [varchar](16) NOT NULL,
	[Title] [smallint] NULL,
	[Dept] [smallint] NULL,
	[Street] [varchar](48) NULL,
	[City] [varchar](16) NULL,
	[State] [varchar](12) NULL,
	[Zip] [varchar](12) NULL,
	[HomePhone] [varchar](20) NULL,
	[OfficePhone] [varchar](20) NULL,
	[PhoneExt] [varchar](10) NULL,
	[MobilePhone] [varchar](20) NULL,
	[Email] [varchar](32) NULL,
	[UserField1] [varchar](21) NULL,
	[UserField2] [varchar](21) NULL,
	[FileName1] [varchar](24) NULL,
	[FileName2] [varchar](24) NULL,
	[FileName3] [varchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMPOINTSTATISTIC]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMPOINTSTATISTIC](
	[EventNo] [int] NOT NULL,
	[A1A2] [smallint] NULL,
	[D2] [tinyint] NULL,
	[AlmGroup] [tinyint] NULL,
	[FC] [tinyint] NOT NULL,
	[SeqNo] [int] NOT NULL,
	[Policed] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMSEQNO]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMSEQNO](
	[SeqNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC_CUSTOM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC_CUSTOM](
	[RTUNumber] [int] NOT NULL,
	[InputNumber] [int] NOT NULL,
	[InputName] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[RTUNumber] ASC,
	[InputNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC01]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC01](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC02]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC02](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC03]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC03](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC04]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC04](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC05]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC05](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC06]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC06](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC07]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC07](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC08]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC08](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC09]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC09](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC10]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC10](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC11]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC11](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC12]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC12](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC13]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC13](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC14]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC14](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOC15]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOC15](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALMVOCAB]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALMVOCAB](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BMSDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BMSDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Type] [smallint] NOT NULL,
	[Value] [real] NOT NULL,
	[Range] [real] NOT NULL,
	[Unit] [varchar](9) NULL,
	[OnText] [varchar](17) NULL,
	[OffText] [varchar](17) NULL,
	[BmpName] [varchar](24) NULL,
	[DisplayPosition] [tinyint] NOT NULL,
	[Spare] [binary](8) NOT NULL,
	[DeviceName] [varchar](24) NULL,
	[Manufacturer] [smallint] NOT NULL,
	[Model] [varchar](16) NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](66) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CACFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CACFG](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CALLINFOCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALLINFOCFG](
	[SiteNo] [smallint] NOT NULL,
	[ActionNo] [smallint] NOT NULL,
	[ActionType] [tinyint] NULL,
	[RespType] [tinyint] NULL,
	[ExRespType] [smallint] NULL,
	[Phone] [varchar](20) NULL,
	[InfoText] [varchar](512) NULL,
	[StartTime1] [int] NULL,
	[StartTime2] [int] NULL,
	[StartTime3] [int] NULL,
	[StartTime4] [int] NULL,
	[EndTime1] [int] NULL,
	[EndTime2] [int] NULL,
	[EndTime3] [int] NULL,
	[EndTime4] [int] NULL,
	[VoiceCode] [varchar](16) NULL,
	[Counter] [smallint] NULL,
	[TimeToArrive] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[ActionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMALMR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMALMR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Manufacturer] [smallint] NOT NULL,
	[Model] [varchar](16) NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMVOCAB]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMVOCAB](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDACCERRORS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDACCERRORS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDACCESSINFO]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDACCESSINFO](
	[CardNumber] [varchar](17) NOT NULL,
	[GAGNo] [int] NULL,
	[FAGNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDACCFLAGS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDACCFLAGS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDCODE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDCODE](
	[CardNumber] [varchar](17) NOT NULL,
	[CardCode] [int] NOT NULL,
	[Spare] [tinyint] NOT NULL,
	[IssueNo] [tinyint] NOT NULL,
	[Facility] [smallint] NOT NULL,
	[PrintedNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDDETAIL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDDETAIL](
	[CardNumber] [varchar](17) NOT NULL,
	[LastName] [varchar](41) NULL,
	[FirstName] [varchar](41) NULL,
	[MidleName] [varchar](2) NULL,
	[DOB] [int] NULL,
	[PersonalID] [varchar](16) NULL,
	[Title] [smallint] NULL,
	[Street] [varchar](48) NULL,
	[City] [varchar](16) NULL,
	[State] [varchar](12) NULL,
	[Zip] [varchar](12) NULL,
	[HomePhone] [varchar](20) NULL,
	[OfficePhone] [varchar](20) NULL,
	[PhoneExt] [varchar](10) NULL,
	[Dept] [smallint] NULL,
	[ModOperator] [varchar](32) NULL,
	[ModTime] [int] NULL,
	[ModDate] [int] NULL,
	[UserField1] [varchar](41) NULL,
	[UserField2] [varchar](41) NULL,
	[UserField3] [varchar](41) NULL,
	[UserField4] [varchar](41) NULL,
	[UserField5] [varchar](41) NULL,
	[UserField6] [varchar](41) NULL,
	[UserField7] [varchar](41) NULL,
	[UserField8] [varchar](41) NULL,
	[UserField9] [varchar](21) NULL,
	[UserField10] [varchar](21) NULL,
	[UserField11] [varchar](21) NULL,
	[UserField12] [varchar](21) NULL,
	[UserField13] [varchar](21) NULL,
	[UserField14] [varchar](21) NULL,
	[UserField15] [varchar](21) NULL,
	[UserField16] [varchar](21) NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDHOLDER]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDHOLDER](
	[LastName] [varchar](21) NULL,
	[FirstName] [varchar](21) NULL,
	[MidleName] [char](2) NULL,
	[DOB] [smallint] NULL,
	[PersonalID] [varchar](16) NULL,
	[Title] [smallint] NULL,
	[Street] [varchar](48) NULL,
	[City] [varchar](16) NULL,
	[State] [varchar](12) NULL,
	[Zip] [varchar](12) NULL,
	[HomePhone] [varchar](20) NULL,
	[OfficePhone] [varchar](20) NULL,
	[PhoneExt] [varchar](10) NULL,
	[Dept] [varchar](20) NULL,
	[CardCode] [int] NOT NULL,
	[CardSrNo] [int] NOT NULL,
	[CardIssueNo] [tinyint] NOT NULL,
	[CardType] [tinyint] NULL,
	[PIN] [binary](4) NULL,
	[DuressPIN] [binary](4) NULL,
	[FacilityCode] [int] NOT NULL,
	[Flags1] [tinyint] NULL,
	[Flags2] [tinyint] NULL,
	[Flags3] [tinyint] NULL,
	[ValidDateFrom] [smallint] NOT NULL,
	[ValidDateTo] [smallint] NOT NULL,
	[ReaderGroup1] [tinyint] NULL,
	[ReaderGroup2] [tinyint] NULL,
	[ReaderGroup3] [tinyint] NULL,
	[ReaderGroup4] [tinyint] NULL,
	[ReaderGroup5] [tinyint] NULL,
	[ReaderGroup6] [tinyint] NULL,
	[ReaderGroup7] [tinyint] NULL,
	[ReaderGroup8] [tinyint] NULL,
	[TimeGroup1] [tinyint] NULL,
	[TimeGroup2] [tinyint] NULL,
	[TimeGroup3] [tinyint] NULL,
	[TimeGroup4] [tinyint] NULL,
	[TimeGroup5] [tinyint] NULL,
	[TimeGroup6] [tinyint] NULL,
	[TimeGroup7] [tinyint] NULL,
	[TimeGroup8] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[SiteGroup] [smallint] NULL,
	[ModOperator] [varchar](32) NULL,
	[ModTime] [smallint] NULL,
	[ModDate] [smallint] NULL,
	[UserField1] [varchar](21) NULL,
	[UserField2] [varchar](21) NULL,
	[UserField3] [varchar](21) NULL,
	[UserField4] [varchar](21) NULL,
	[UserField5] [varchar](21) NULL,
	[UserField6] [varchar](21) NULL,
	[UserField7] [varchar](21) NULL,
	[UserField8] [varchar](21) NULL,
	[UserField9] [varchar](21) NULL,
	[UserField10] [varchar](21) NULL,
	[UserField11] [varchar](21) NULL,
	[UserField12] [varchar](21) NULL,
	[UserField13] [varchar](21) NULL,
	[UserField14] [varchar](21) NULL,
	[UserField15] [varchar](21) NULL,
	[UserField16] [varchar](21) NULL,
	[SiteGroup1] [smallint] NULL,
	[SiteGroup2] [smallint] NULL,
	[SiteGroup3] [smallint] NULL,
	[SiteGroup4] [smallint] NULL,
	[SiteGroup5] [smallint] NULL,
	[SiteGroup6] [smallint] NULL,
	[SiteGroup7] [smallint] NULL,
	[SiteGroup8] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDINFO]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDINFO](
	[CardNumber] [varchar](17) NOT NULL,
	[CardSrNo] [int] NULL,
	[CardType] [tinyint] NULL,
	[PIN] [binary](4) NULL,
	[DuressPIN] [binary](4) NULL,
	[Flags1] [tinyint] NULL,
	[Flags2] [tinyint] NULL,
	[Flags3] [tinyint] NULL,
	[ValidDateFrom] [int] NULL,
	[ValidDateTo] [int] NULL,
	[Status] [tinyint] NULL,
	[SiteGroup] [smallint] NULL,
	[Days] [tinyint] NULL,
	[Spare] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDSTATUSTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDSTATUSTYPES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDSTS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDSTS](
	[CardCode] [int] NOT NULL,
	[CardHigh] [tinyint] NULL,
	[IssueNo] [tinyint] NOT NULL,
	[Facility] [smallint] NOT NULL,
	[PrintedNo] [int] NOT NULL,
	[SiteNo] [smallint] NOT NULL,
	[TransactionType] [tinyint] NOT NULL,
	[ReaderNo] [tinyint] NULL,
	[HH] [tinyint] NOT NULL,
	[MM] [tinyint] NOT NULL,
	[SS] [tinyint] NOT NULL,
	[DayMonth] [smallint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Year] [smallint] NOT NULL,
	[AreaNo] [tinyint] NULL,
	[YMD] [int] NULL,
	[CardNumber] [varchar](17) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDTYPES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDUSERDEFS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDUSERDEFS](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARDUSERTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARDUSERTYPES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASTS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASTS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CCTVVOCAB]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCTVVOCAB](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CFGCHG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFGCHG](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMDSHORTCUTDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMDSHORTCUTDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[Name] [varchar](33) NOT NULL,
	[BmpName] [varchar](32) NOT NULL,
	[Cmd1_Spare1] [int] NOT NULL,
	[Cmd1_SiteGroup] [smallint] NOT NULL,
	[Cmd1_Spare2] [int] NULL,
	[Cmd1_PointGroup] [smallint] NULL,
	[Cmd1_CommandName] [varchar](66) NOT NULL,
	[Cmd1_PointType] [tinyint] NOT NULL,
	[Cmd1_CommandType] [tinyint] NOT NULL,
	[Cmd1_SubType] [tinyint] NOT NULL,
	[Cmd1_TimeUntil] [smallint] NOT NULL,
	[Cmd2_Spare1] [int] NOT NULL,
	[Cmd2_SiteGroup] [smallint] NOT NULL,
	[Cmd2_Spare2] [int] NULL,
	[Cmd2_PointGroup] [smallint] NULL,
	[Cmd2_CommandName] [varchar](66) NOT NULL,
	[Cmd2_PointType] [tinyint] NOT NULL,
	[Cmd2_CommandType] [tinyint] NOT NULL,
	[Cmd2_SubType] [tinyint] NOT NULL,
	[Cmd2_TimeUntil] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMALMR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMALMR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSOLESTATUS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSOLESTATUS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSOLETYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSOLETYPES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControllerInfos]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControllerInfos](
	[RtuNo] [smallint] NOT NULL,
	[RtuType] [tinyint] NULL,
	[PanelType] [tinyint] NULL,
	[NetType] [tinyint] NULL,
	[VocabList] [tinyint] NULL,
	[NetAddress] [varchar](16) NULL,
	[LineCardNum] [varchar](10) NULL,
	[LineCard_A1] [varchar](16) NULL,
	[LineCard_A2] [varchar](16) NULL,
	[LineCard_B1] [varchar](16) NULL,
	[LineCard_B2] [varchar](16) NULL,
	[EMCSIP] [varchar](16) NULL,
	[Version_1] [varchar](6) NULL,
	[Version_2] [varchar](6) NULL,
	[SerialNumber] [varchar](17) NULL,
	[UserField1] [varchar](21) NULL,
	[UserField2] [varchar](21) NULL,
	[UserField3] [varchar](21) NULL,
	[UserField4] [varchar](21) NULL,
PRIMARY KEY CLUSTERED 
(
	[RtuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPUDEV]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPUDEV](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Model] [smallint] NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData2] [binary](15) NULL,
	[CatnType] [smallint] NULL,
	[FloorRange] [smallint] NULL,
	[MiscData] [binary](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultAccessItemsSearchCriteria]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultAccessItemsSearchCriteria](
	[SearchItemId] [tinyint] NOT NULL,
	[OperatorId] [int] NULL,
	[SearchCategory] [int] NULL,
	[SubSearchCategory] [int] NULL,
	[SearchOperator] [varchar](10) NULL,
	[SearchBy] [int] NULL,
	[Value] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SearchItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DELETECARDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DELETECARDS](
	[CardNumber] [varchar](17) NOT NULL,
	[LastName] [varchar](41) NULL,
	[FirstName] [varchar](41) NULL,
	[MidleName] [varchar](2) NULL,
	[DOB] [int] NULL,
	[PersonalID] [varchar](16) NULL,
	[Title] [smallint] NULL,
	[Street] [varchar](48) NULL,
	[City] [varchar](16) NULL,
	[State] [varchar](12) NULL,
	[Zip] [varchar](12) NULL,
	[HomePhone] [varchar](20) NULL,
	[OfficePhone] [varchar](20) NULL,
	[PhoneExt] [varchar](10) NULL,
	[Dept] [smallint] NULL,
	[ModOperator] [varchar](32) NULL,
	[ModTime] [int] NULL,
	[ModDate] [int] NULL,
	[UserField1] [varchar](41) NULL,
	[UserField2] [varchar](41) NULL,
	[UserField3] [varchar](41) NULL,
	[UserField4] [varchar](41) NULL,
	[UserField5] [varchar](41) NULL,
	[UserField6] [varchar](41) NULL,
	[UserField7] [varchar](41) NULL,
	[UserField8] [varchar](41) NULL,
	[UserField9] [varchar](21) NULL,
	[UserField10] [varchar](21) NULL,
	[UserField11] [varchar](21) NULL,
	[UserField12] [varchar](21) NULL,
	[UserField13] [varchar](21) NULL,
	[UserField14] [varchar](21) NULL,
	[UserField15] [varchar](21) NULL,
	[UserField16] [varchar](21) NULL,
	[CardSrNo] [int] NULL,
	[CardType] [tinyint] NULL,
	[PIN] [binary](4) NULL,
	[DuressPIN] [binary](4) NULL,
	[Flags1] [tinyint] NULL,
	[Flags2] [tinyint] NULL,
	[Flags3] [tinyint] NULL,
	[ValidDateFrom] [int] NULL,
	[ValidDateTo] [int] NULL,
	[Status] [tinyint] NULL,
	[GAGNo] [int] NULL,
	[FAGNo] [int] NULL,
	[TempGAGNo] [int] NULL,
	[TempFAGNo] [int] NULL,
	[StartTempDate] [int] NULL,
	[EndTempDate] [int] NULL,
	[DeleteDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEVICETYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEVICETYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVCDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVCDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Model] [smallint] NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[Address] [varchar](32) NULL,
	[Data] [binary](14) NULL,
	[UserName] [varchar](32) NULL,
	[Password] [binary](32) NULL,
	[Address2] [varchar](32) NULL,
	[MiscData] [binary](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVRACT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVRACT](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELEMTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELEMTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPPRIVI]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPPRIVI](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTACTIONSTATUS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTACTIONSTATUS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTCALLSTATUS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTCALLSTATUS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTCODES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTCODES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventResponseText]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventResponseText](
	[YMD] [int] NOT NULL,
	[HMS] [int] NOT NULL,
	[EventNo] [int] NOT NULL,
	[AlarmGroup] [tinyint] NOT NULL,
	[StatusCode] [tinyint] NOT NULL,
	[ActionType] [tinyint] NOT NULL,
	[ResponseType] [tinyint] NOT NULL,
	[Phone] [varchar](20) NULL,
	[MessageText] [varchar](2000) NULL,
	[SiteNo] [smallint] NULL,
	[OperatorNo] [smallint] NULL,
	[ConsoleNo] [tinyint] NULL,
	[FC] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTTYPES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXPANDED]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPANDED](
	[NoteNo] [smallint] NOT NULL,
	[Text] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[NoteNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXTDISOL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXTDISOL](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXTISOL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXTISOL](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXTPDESC]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXTPDESC](
	[NoteNo] [smallint] NOT NULL,
	[Text] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[NoteNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAT](
	[FatNo] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FatNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FATCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FATCFG](
	[FatNo] [int] NOT NULL,
	[SiteNo] [smallint] NOT NULL,
	[FalNo] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FatNo] ASC,
	[SiteNo] ASC,
	[FalNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FCSTRGS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FCSTRGS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIELDDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIELDDATA](
	[FieldId] [smallint] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[SqlSelect] [varchar](100) NOT NULL,
	[CRFormula] [varchar](100) NOT NULL,
	[ValueSource] [varchar](50) NOT NULL,
	[SubGroups] [varchar](50) NULL,
	[DataType] [smallint] NOT NULL,
	[Length] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLOOR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLOOR](
	[SiteNo] [smallint] NOT NULL,
	[FloorNo] [tinyint] NOT NULL,
	[Name] [varchar](33) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[FloorNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLOORACCESSLEVEL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLOORACCESSLEVEL](
	[SiteNo] [smallint] NOT NULL,
	[FalNo] [smallint] NOT NULL,
	[Name] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[FalNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLOORACCESSLEVELCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLOORACCESSLEVELCFG](
	[SiteNo] [smallint] NOT NULL,
	[FalNo] [smallint] NOT NULL,
	[id] [smallint] NOT NULL,
	[FloorGroup] [smallint] NOT NULL,
	[TZoneGroup] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[FalNo] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FLOORGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLOORGROUP](
	[SiteNo] [smallint] NOT NULL,
	[GroupNo] [smallint] NOT NULL,
	[GroupName] [varchar](33) NOT NULL,
	[FloorList1] [int] NULL,
	[FloorList2] [int] NULL,
	[FloorList3] [int] NULL,
	[FloorList4] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[GroupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORMAT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORMAT](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBALACCESSGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBALACCESSGROUP](
	[GagNo] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[SiteGroup] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GagNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBALACCESSGROUPCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBALACCESSGROUPCFG](
	[GagNo] [int] NOT NULL,
	[GrgNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBALREADERGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBALREADERGROUP](
	[GrgNo] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GrgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBALREADERGROUPCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBALREADERGROUPCFG](
	[GrgNo] [int] NOT NULL,
	[SiteNo] [smallint] NOT NULL,
	[ReaderNo] [tinyint] NOT NULL,
	[TZoneNo] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSCMD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSCMD](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSERROR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSERROR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSMOD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSMOD](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSSALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSSALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GmsServerConfig]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GmsServerConfig](
	[Configuration] [varchar](64) NULL,
	[Name] [varchar](64) NULL,
	[Value] [varchar](1024) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GmsStringTables]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GmsStringTables](
	[TableName] [varchar](64) NULL,
	[FileTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GMSSTS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMSSTS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOLIDAYCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOLIDAYCFG](
	[SeqNo] [tinyint] NOT NULL,
	[Year] [smallint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[Description] [varchar](33) NULL,
	[Flag] [tinyint] NULL,
	[Mask] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IALMGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IALMGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INSTRUCTIONS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INSTRUCTIONS](
	[SiteNo] [smallint] NOT NULL,
	[ActionNo] [smallint] NOT NULL,
	[Text] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[ActionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTALMR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTALMR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTDISOL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTDISOL](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTERCOMDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTERCOMDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[DeviceID] [smallint] NOT NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTERCOMRESPONSE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTERCOMRESPONSE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTISOL]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTISOL](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Type] [smallint] NULL,
	[Manufacturer] [smallint] NULL,
	[Model] [varchar](16) NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IVRCMDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVRCMDS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Model] [smallint] NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINKEDCARDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINKEDCARDS](
	[CardNumber] [varchar](17) NOT NULL,
	[Dependant] [varchar](17) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC,
	[Dependant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_CARD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_CARD](
	[WD] [tinyint] NULL,
	[YMD] [int] NULL,
	[HMS] [int] NULL,
	[UserNo1] [tinyint] NULL,
	[FC] [tinyint] NOT NULL,
	[A1A2] [smallint] NULL,
	[Port] [tinyint] NULL,
	[D1] [tinyint] NULL,
	[D2] [tinyint] NULL,
	[D3] [tinyint] NULL,
	[D4] [tinyint] NULL,
	[D5] [tinyint] NULL,
	[D6] [tinyint] NULL,
	[D7] [tinyint] NULL,
	[D8] [tinyint] NULL,
	[D9] [tinyint] NULL,
	[D10] [tinyint] NULL,
	[D11] [tinyint] NULL,
	[ConsoleNo] [tinyint] NULL,
	[EventNo] [int] NULL,
	[Priority] [tinyint] NULL,
	[User1] [tinyint] NULL,
	[User2] [tinyint] NULL,
	[Spare] [tinyint] NULL,
	[SeqNo] [int] NOT NULL,
	[D12_15] [int] NULL,
	[D16_17] [smallint] NULL,
	[CardNumber] [char](17) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGDATA](
	[WD] [tinyint] NULL,
	[YMD] [int] NULL,
	[HMS] [int] NULL,
	[UserNo1] [tinyint] NULL,
	[FC] [tinyint] NOT NULL,
	[A1A2] [smallint] NULL,
	[Port] [tinyint] NULL,
	[D1] [tinyint] NULL,
	[D2] [tinyint] NULL,
	[D3] [tinyint] NULL,
	[D4] [tinyint] NULL,
	[D5] [tinyint] NULL,
	[D6] [tinyint] NULL,
	[D7] [tinyint] NULL,
	[D8] [tinyint] NULL,
	[D9] [tinyint] NULL,
	[D10] [tinyint] NULL,
	[D11] [tinyint] NULL,
	[ConsoleNo] [tinyint] NULL,
	[EventNo] [int] NULL,
	[Priority] [tinyint] NULL,
	[User1] [tinyint] NULL,
	[User2] [tinyint] NULL,
	[Spare] [tinyint] NULL,
	[SeqNo] [int] NOT NULL,
	[D12_15] [int] NULL,
	[D16_17] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGSEQUENCE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGSEQUENCE](
	[YMD] [int] NOT NULL,
	[SeqNo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[YMD] ASC,
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANUFACTURER]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANUFACTURER](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAPDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAPDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[MapData] [binary](18) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBACT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBACT](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODEGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODEGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODEIN]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODEIN](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODEOUT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODEOUT](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSGBOARD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSGBOARD](
	[Type] [tinyint] NULL,
	[Author] [smallint] NULL,
	[Destination] [int] NULL,
	[TextIndex] [int] NULL,
	[CreateDate] [int] NULL,
	[CreateTime] [int] NULL,
	[ValidFromDate] [int] NULL,
	[ValidFromTime] [int] NULL,
	[ValidToDate] [int] NULL,
	[ValidToTime] [int] NULL,
	[DeliveryDate] [int] NULL,
	[DeliveryTime] [int] NULL,
	[Reader] [smallint] NULL,
	[MessageId] [varchar](12) NOT NULL,
	[Subject] [varchar](128) NULL,
	[SiteNo] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSGTEXT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSGTEXT](
	[TextIndex] [int] NOT NULL,
	[Content] [varchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[TextIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETAGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETAGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETALMR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETALMR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETCMD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETCMD](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETLCMD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETLCMD](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETSGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETSGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETSTSR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETSTSR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETSTUS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETSTUS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETWRSP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETWRSP](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Type] [smallint] NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPERATORS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPERATORS](
	[OperatorNo] [smallint] NOT NULL,
	[Password] [binary](25) NULL,
	[Login] [varchar](33) NULL,
	[ObjectName] [varchar](61) NULL,
	[PinNum] [int] NULL,
	[LastName] [varchar](21) NULL,
	[Initial] [varchar](7) NULL,
	[Address] [varchar](51) NULL,
	[Phone] [varchar](21) NULL,
	[UserAccess1] [int] NULL,
	[UserAccess2] [int] NULL,
	[UserAccess3] [int] NULL,
	[UserAccess4] [int] NULL,
	[UserAccess5] [int] NULL,
	[UserAccess6] [int] NULL,
	[UserAccess7] [int] NULL,
	[UserAccess8] [int] NULL,
	[UserAccess9] [int] NULL,
	[UserAccess10] [int] NULL,
	[UserAccess11] [int] NULL,
	[UserAccess12] [int] NULL,
	[UserAccess13] [int] NULL,
	[UserAccess14] [int] NULL,
	[UserAccess15] [int] NULL,
	[UserAccess16] [int] NULL,
	[StartRange] [smallint] NULL,
	[EndRange] [smallint] NULL,
	[ExpiryDate] [int] NULL,
	[Valid_Type] [smallint] NULL,
	[Status] [smallint] NULL,
	[Timer] [smallint] NULL,
	[DisplayName] [varchar](32) NULL,
	[VoiceCode] [varchar](9) NULL,
	[UserAccess17] [int] NULL,
	[UserAccess18] [int] NULL,
	[UserAccess19] [int] NULL,
	[UserAccess20] [int] NULL,
	[UserAccess21] [int] NULL,
	[UserAccess22] [int] NULL,
	[UserAccess23] [int] NULL,
	[UserAccess24] [int] NULL,
	[UserAccess25] [int] NULL,
	[UserAccess26] [int] NULL,
	[UserAccess27] [int] NULL,
	[UserAccess28] [int] NULL,
	[UserAccess29] [int] NULL,
	[UserAccess30] [int] NULL,
	[UserAccess31] [int] NULL,
	[UserAccess32] [int] NULL,
	[ProfileName] [varchar](65) NULL,
	[CustomizeName] [varchar](65) NULL,
	[MobilePhone] [varchar](21) NULL,
	[Email] [varchar](51) NULL,
	[LogonHours] [int] NULL,
	[PasswordExpiryDate] [int] NULL,
	[StartCard] [int] NULL,
	[EndCard] [int] NULL,
	[GlobalPointGroup] [smallint] NULL,
	[SiteMapNum] [smallint] NULL,
	[AreaMapNum] [smallint] NULL,
	[Reserved2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OperatorNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPPASSWDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPPASSWDS](
	[SeqNo] [int] NOT NULL,
	[UserId] [smallint] NOT NULL,
	[Password] [binary](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OUTVOCAB]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OUTVOCAB](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAGERALM]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGERALM](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONCARDGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONCARDGROUP](
	[GroupId] [int] NOT NULL,
	[Name] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONCARDGROUPCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONCARDGROUPCFG](
	[GroupId] [int] NOT NULL,
	[GroupNo] [tinyint] NOT NULL,
	[StartCard] [int] NULL,
	[EndCard] [int] NULL,
	[StartCode] [varchar](17) NULL,
	[EndCode] [varchar](17) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[GroupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONCARDTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONCARDTYPE](
	[GroupId] [int] NOT NULL,
	[Name] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONCARDTYPECFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONCARDTYPECFG](
	[GroupId] [int] NOT NULL,
	[GroupNo] [tinyint] NOT NULL,
	[StartGroup] [tinyint] NULL,
	[EndGroup] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[GroupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONREADERS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONREADERS](
	[GroupId] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONREADERSCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONREADERSCFG](
	[GroupId] [int] NOT NULL,
	[SiteNo] [smallint] NOT NULL,
	[ReaderNo] [tinyint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONTABLECREATED]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONTABLECREATED](
	[OperatorNo] [smallint] NOT NULL,
	[SiteGroup] [smallint] NOT NULL,
	[ReaderGroup] [int] NOT NULL,
	[TZoneGroup] [int] NOT NULL,
	[CardTypeGroup] [int] NOT NULL,
	[CardGroup] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OperatorNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONTIMEGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONTIMEGROUP](
	[GroupId] [int] NOT NULL,
	[Name] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONTIMEGROUPCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONTIMEGROUPCFG](
	[GroupId] [int] NOT NULL,
	[TZoneNo] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTITIONUSERS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTITIONUSERS](
	[OperatorNo] [smallint] NOT NULL,
	[ReaderGroup] [int] NOT NULL,
	[TZoneGroup] [int] NOT NULL,
	[CardTypeGroup] [int] NOT NULL,
	[CardGroup] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OperatorNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SeqNo] [smallint] NOT NULL,
	[PointNo] [smallint] NOT NULL,
	[Model] [smallint] NULL,
	[SerialNo] [varchar](16) NULL,
	[Location] [varchar](33) NULL,
	[MiscData] [binary](162) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHOTOS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHOTOS](
	[CardCode] [int] NULL,
	[IssueNo] [tinyint] NULL,
	[Facility] [smallint] NULL,
	[BLOB] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUERYDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUERYDATA](
	[QueryId] [smallint] NOT NULL,
	[FieldId] [smallint] NOT NULL,
	[SubGroup] [smallint] NOT NULL,
	[Data] [varchar](100) NULL,
	[Comparator] [smallint] NOT NULL,
	[Operator] [smallint] NULL,
	[Parenthesis] [smallint] NULL,
	[ParenthesisCount] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[QueryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAPALMTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAPALMTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAPTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAPTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDRCMD]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDRCMD](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDRTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDRTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[READERGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[READERGROUP](
	[SiteNo] [smallint] NOT NULL,
	[GroupNo] [tinyint] NOT NULL,
	[GroupName] [varchar](33) NOT NULL,
	[ReaderList] [int] NULL,
	[ReaderList32] [int] NULL,
	[FloorGroup] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNo] ASC,
	[SiteNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[READERGROUPX]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[READERGROUPX](
	[SiteNo] [smallint] NOT NULL,
	[GroupNo] [tinyint] NOT NULL,
	[GroupId] [tinyint] NOT NULL,
	[ReaderList] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNo] ASC,
	[SiteNo] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESCODE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESCODE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVEDSITEGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVEDSITEGROUP](
	[SiteGroup] [int] IDENTITY(1,1) NOT NULL,
	[SiteRange] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVEDSITERANGE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVEDSITERANGE](
	[SiteGroup] [int] NOT NULL,
	[GroupNo] [smallint] NOT NULL,
	[StartSite] [smallint] NULL,
	[EndSite] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESPONSETYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESPONSETYPES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESPONSEWORDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESPONSEWORDS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUCFG](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUDATA](
	[RtuNo] [smallint] NOT NULL,
	[RAP] [tinyint] NULL,
	[LCNO] [tinyint] NULL,
	[NetType] [tinyint] NULL,
	[DialupType] [tinyint] NULL,
	[DialbackNo] [binary](10) NULL,
	[DisasterNo] [binary](10) NULL,
	[NetAdd1] [varchar](16) NULL,
	[NetAdd2] [varchar](16) NULL,
	[NCPLineNo] [binary](8) NULL,
	[Ver1_2] [binary](4) NULL,
	[Flags] [binary](8) NULL,
	[UserField1] [binary](21) NULL,
	[UserField2] [binary](21) NULL,
	[UserField3] [binary](21) NULL,
	[UserField4] [binary](21) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUDEVICES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUDEVICES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUGMS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUGMS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUPSPCR]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUPSPCR](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUPSPEC]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUPSPEC](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTURSP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTURSP](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUSTUS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUSTUS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUSYS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUSYS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RTUUSERNAMES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RTUUSERNAMES](
	[YMD] [int] NOT NULL,
	[HMS] [int] NOT NULL,
	[RtuNo] [smallint] NOT NULL,
	[UserId] [tinyint] NOT NULL,
	[UserName] [varchar](21) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServerStatus]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerStatus](
	[ServerStatus] [tinyint] NULL,
	[TimeOfChange] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServerStatusBackLog]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerStatusBackLog](
	[Id] [bigint] IDENTITY(0,1) NOT NULL,
	[TimeWhenInActive] [datetime] NULL,
	[TimeWhenActive] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITE_RANGE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITE_RANGE](
	[SiteGroup] [smallint] NOT NULL,
	[GroupNo] [smallint] NOT NULL,
	[StartSite] [smallint] NULL,
	[EndSite] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITE_READER]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITE_READER](
	[SiteNo] [smallint] NOT NULL,
	[ReaderNo] [smallint] NOT NULL,
	[ReaderName] [varchar](33) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC,
	[ReaderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITECONTACT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITECONTACT](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[ContactNo] [tinyint] NOT NULL,
	[Name] [varchar](32) NULL,
	[Position] [varchar](20) NULL,
	[Phone] [varchar](20) NULL,
	[HomePhone] [varchar](20) NULL,
	[MobilePhone] [varchar](20) NULL,
	[VoiceCode] [varchar](9) NULL,
	[Street] [varchar](48) NULL,
	[Town] [varchar](36) NULL,
	[State] [varchar](36) NULL,
	[Zip] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[RtuNo] ASC,
	[AreaNo] ASC,
	[ContactNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITEDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITEDATA](
	[RtuNo] [smallint] NOT NULL,
	[AreaNo] [tinyint] NOT NULL,
	[SecLevel] [tinyint] NULL,
	[State] [varchar](36) NULL,
	[Zip] [varchar](11) NULL,
	[BSB] [varchar](13) NULL,
	[Street] [varchar](48) NULL,
	[Town] [varchar](36) NULL,
	[Phone] [varchar](20) NULL,
	[Spare] [binary](3) NULL,
	[Spare1] [varchar](13) NULL,
	[SiteName] [varchar](56) NULL,
	[MapIndex] [varchar](40) NULL,
	[NearCorner] [varchar](40) NULL,
	[AHPhone] [varchar](20) NULL,
	[PolicePhone] [varchar](20) NULL,
	[ServiceCo] [varchar](64) NULL,
	[TechPhone] [varchar](20) NULL,
	[GuardCo] [varchar](64) NULL,
	[GuardPhone] [varchar](20) NULL,
	[PatrolCo] [varchar](64) NULL,
	[PatrolPhone] [varchar](20) NULL,
	[ATMCo] [varchar](64) NULL,
	[ATMPhone] [varchar](20) NULL,
	[CleanerCo] [varchar](64) NULL,
	[CleanerPhone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[PanelData] [binary](16) NULL,
	[PoliceName] [varchar](64) NULL,
	[InstallerCo] [varchar](64) NULL,
	[InstallerPhone] [varchar](20) NULL,
	[FBName] [varchar](64) NULL,
	[FBPhone] [varchar](20) NULL,
	[Ambulance] [varchar](64) NULL,
	[AmbulancePhone] [varchar](20) NULL,
	[PMSCo] [varchar](64) NULL,
	[PMSPhone] [varchar](20) NULL,
	[URN] [varchar](17) NULL,
	[URN2] [varchar](17) NULL,
	[Address2] [varchar](48) NULL,
	[UserField1] [varchar](40) NULL,
	[UserField2] [varchar](40) NULL,
	[UserField3] [varchar](40) NULL,
	[UserField4] [varchar](40) NULL,
	[UserField5] [varchar](40) NULL,
	[UserField6] [varchar](40) NULL,
	[UserField7] [varchar](40) NULL,
	[UserField8] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[RtuNo] ASC,
	[AreaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITEGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITEGROUP](
	[GroupNo] [smallint] NOT NULL,
	[GroupName] [varchar](81) NOT NULL,
	[GroupRange] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STAFFS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STAFFS](
	[Mode] [smallint] NULL,
	[StaffId] [smallint] NOT NULL,
	[Name] [varchar](32) NULL,
	[Position] [varchar](20) NULL,
	[Phone] [varchar](20) NULL,
	[HomePhone] [varchar](20) NULL,
	[MobilePhone] [varchar](20) NULL,
	[VoiceCode] [varchar](9) NULL,
	[Street] [varchar](48) NULL,
	[Town] [varchar](36) NULL,
	[State] [varchar](36) NULL,
	[Zip] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STAFFTYPES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STAFFTYPES](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STSGRPS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STSGRPS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUSPCMDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUSPCMDS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYSCMDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSCMDS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASKCFG]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASKCFG](
	[TaskName] [varchar](65) NOT NULL,
	[SiteGroup] [smallint] NULL,
	[SchType] [smallint] NULL,
	[SchDays] [smallint] NULL,
	[SchTime] [smallint] NULL,
	[UnschTime] [smallint] NULL,
	[EventType] [smallint] NULL,
	[RevEventType] [smallint] NULL,
	[EventParm] [smallint] NULL,
	[PGName] [varchar](33) NULL,
	[EventParm1] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[FileIndex] [smallint] NOT NULL,
	[AppName] [varchar](256) NULL,
	[AppParams] [varchar](256) NULL,
	[RunOnActiveServerOnly] [tinyint] NULL,
	[AutoDelete] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FileIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASKTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASKTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMPCARDACCESSINFO]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPCARDACCESSINFO](
	[CardNumber] [varchar](17) NOT NULL,
	[GAGNo] [int] NULL,
	[FAGNo] [int] NULL,
	[StartDay] [int] NULL,
	[EndDay] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMPORARYCARDS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPORARYCARDS](
	[CardNumber] [varchar](17) NOT NULL,
	[Dependant] [varchar](17) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TITLES]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TITLES](
	[Id] [smallint] NOT NULL,
	[Name] [varchar](65) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TZONEGROUP]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TZONEGROUP](
	[GroupNo] [tinyint] NOT NULL,
	[GroupName] [varchar](33) NOT NULL,
	[TimeZones] [binary](44) NULL,
	[TimeZones2] [binary](44) NULL,
	[TimeZones3] [binary](44) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UALMTYPE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UALMTYPE](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERTEXT]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERTEXT](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USRREPDATA]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USRREPDATA](
	[ReportId] [smallint] NOT NULL,
	[ReportName] [varchar](50) NOT NULL,
	[TemplateName] [varchar](50) NOT NULL,
	[ReportTitle] [varchar](100) NULL,
	[QueryData] [varchar](100) NULL,
	[SortData] [varchar](50) NULL,
	[FC] [varchar](50) NULL,
	[D1] [varchar](50) NULL,
	[D2] [varchar](50) NULL,
	[D3] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEOANALYTICS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEOANALYTICS](
	[MsgNo] [smallint] NOT NULL,
	[MsgText] [varchar](81) NULL,
PRIMARY KEY CLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VISITORS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VISITORS](
	[CardCode] [int] NOT NULL,
	[CardSrNo] [int] NOT NULL,
	[LastName] [varchar](21) NULL,
	[FirstName] [varchar](21) NULL,
	[MidleName] [char](2) NULL,
	[Company] [varchar](48) NULL,
	[Street] [varchar](48) NULL,
	[City] [varchar](16) NULL,
	[State] [varchar](12) NULL,
	[Zip] [varchar](12) NULL,
	[ValidDateFrom] [smallint] NOT NULL,
	[ValidTimeFrom] [smallint] NOT NULL,
	[ValidDateTo] [smallint] NOT NULL,
	[ValidTimeTo] [smallint] NOT NULL,
	[Host] [varchar](48) NULL,
	[Dept] [smallint] NULL,
	[PhoneExt] [varchar](20) NULL,
	[ModOperator] [varchar](32) NULL,
	[ModTime] [smallint] NULL,
	[ModDate] [smallint] NULL,
	[UserField1] [varchar](21) NULL,
	[UserField2] [varchar](21) NULL,
	[UserField3] [varchar](21) NULL,
	[UserField4] [varchar](21) NULL,
	[UserField5] [varchar](21) NULL,
	[UserField6] [varchar](21) NULL,
	[UserField7] [varchar](21) NULL,
	[UserField8] [varchar](21) NULL,
	[SiteNo] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VISITORSTS]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VISITORSTS](
	[CardCode] [int] NOT NULL,
	[SiteNo] [smallint] NOT NULL,
	[InDate] [int] NOT NULL,
	[InTime] [int] NOT NULL,
	[OutDate] [int] NOT NULL,
	[OutTime] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CardCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZIPCODE]    Script Date: 12/2/2022 6:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZIPCODE](
	[Zip] [varchar](12) NOT NULL,
	[City] [varchar](16) NOT NULL,
	[State] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Zip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
;