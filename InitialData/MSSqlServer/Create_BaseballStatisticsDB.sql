USE [master]
GO
/****** Object:  Database [BaseballStatistics]    Script Date: 1/2/2014 10:09:03 PM ******/
CREATE DATABASE [BaseballStatistics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseballStatistics', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BaseballStatistics.mdf' , SIZE = 58368KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BaseballStatistics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BaseballStatistics_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BaseballStatistics] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseballStatistics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseballStatistics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaseballStatistics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaseballStatistics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaseballStatistics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaseballStatistics] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaseballStatistics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BaseballStatistics] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BaseballStatistics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaseballStatistics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaseballStatistics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaseballStatistics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaseballStatistics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaseballStatistics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaseballStatistics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaseballStatistics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaseballStatistics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BaseballStatistics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaseballStatistics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaseballStatistics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaseballStatistics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaseballStatistics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaseballStatistics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaseballStatistics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaseballStatistics] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BaseballStatistics] SET  MULTI_USER 
GO
ALTER DATABASE [BaseballStatistics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaseballStatistics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaseballStatistics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaseballStatistics] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BaseballStatistics]
GO
/****** Object:  Table [dbo].[AllstarFull]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllstarFull](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[GameNum] [int] NOT NULL,
	[GameId] [varchar](12) NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[GPitcher] [int] NULL,
	[StartingPos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[GameNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appearances]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appearances](
	[YearId] [int] NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[LgId] [varchar](2) NULL,
	[PlayerId] [varchar](9) NOT NULL,
	[TotalGames] [int] NULL,
	[Started] [int] NULL,
	[Batting] [int] NULL,
	[Defense] [int] NULL,
	[Pitcher] [int] NULL,
	[Catcher] [int] NULL,
	[First] [int] NULL,
	[Second] [int] NULL,
	[Third] [int] NULL,
	[Shortstop] [int] NULL,
	[LeftField] [int] NULL,
	[CenterField] [int] NULL,
	[RightField] [int] NULL,
	[OutField] [int] NULL,
	[DesignatedHitter] [int] NULL,
	[PinchHitter] [int] NULL,
	[PinchRunner] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[TeamId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AwardsManagers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AwardsManagers](
	[ManagerId] [varchar](10) NOT NULL,
	[AwardId] [varchar](25) NOT NULL,
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[Tie] [varchar](1) NULL,
	[Notes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[AwardId] ASC,
	[LgId] ASC,
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AwardsPlayers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AwardsPlayers](
	[PlayerId] [varchar](9) NOT NULL,
	[AwardId] [varchar](255) NOT NULL,
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[Tie] [varchar](1) NULL,
	[Notes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[AwardId] ASC,
	[LgId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AwardsShareManagers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AwardsShareManagers](
	[AwardId] [varchar](25) NOT NULL,
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[ManagerId] [varchar](10) NOT NULL,
	[PointsWon] [int] NULL,
	[PointsMax] [int] NULL,
	[VotesFirst] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AwardId] ASC,
	[YearId] ASC,
	[LgId] ASC,
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AwardsSharePlayers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AwardsSharePlayers](
	[AwardId] [varchar](25) NOT NULL,
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[PlayerId] [varchar](9) NOT NULL,
	[PointsWon] [decimal](9, 3) NULL,
	[PointsMax] [int] NULL,
	[VotesFirst] [decimal](9, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[AwardId] ASC,
	[YearId] ASC,
	[LgId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batting]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batting](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[Stint] [int] NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[G] [int] NULL,
	[G_batting] [int] NULL,
	[AB] [int] NULL,
	[R] [int] NULL,
	[H] [int] NULL,
	[Doubles] [int] NULL,
	[Triples] [int] NULL,
	[HR] [int] NULL,
	[RBI] [int] NULL,
	[SB] [int] NULL,
	[CS] [int] NULL,
	[BB] [int] NULL,
	[SO] [int] NULL,
	[IBB] [int] NULL,
	[HBPitcher] [int] NULL,
	[SH] [int] NULL,
	[SF] [int] NULL,
	[GIdPitcher] [int] NULL,
	[G_old] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BattingPost]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BattingPost](
	[YearId] [int] NOT NULL,
	[Round] [varchar](10) NOT NULL,
	[PlayerId] [varchar](9) NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[G] [int] NULL,
	[AB] [int] NULL,
	[R] [int] NULL,
	[H] [int] NULL,
	[Doubles] [int] NULL,
	[Triples] [int] NULL,
	[HR] [int] NULL,
	[RBI] [int] NULL,
	[SB] [int] NULL,
	[CS] [int] NULL,
	[BB] [int] NULL,
	[SO] [int] NULL,
	[IBB] [int] NULL,
	[HBPitcher] [int] NULL,
	[SH] [int] NULL,
	[SF] [int] NULL,
	[GIdPitcher] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[Round] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fielding]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fielding](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[Stint] [int] NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[POS] [varchar](2) NOT NULL,
	[G] [int] NULL,
	[GS] [int] NULL,
	[InnOuts] [int] NULL,
	[PO] [int] NULL,
	[A] [int] NULL,
	[E] [int] NULL,
	[DPitcher] [int] NULL,
	[PB] [int] NULL,
	[WPitcher] [int] NULL,
	[SB] [int] NULL,
	[CS] [int] NULL,
	[ZR] [decimal](9, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Stint] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldingOF]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldingOF](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[Stint] [int] NOT NULL,
	[Glf] [int] NULL,
	[Gcf] [int] NULL,
	[Grf] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldingPost]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldingPost](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[Round] [varchar](10) NOT NULL,
	[POS] [varchar](2) NOT NULL,
	[G] [int] NULL,
	[GS] [int] NULL,
	[InnOuts] [int] NULL,
	[PO] [int] NULL,
	[A] [int] NULL,
	[E] [int] NULL,
	[DPitcher] [int] NULL,
	[TPitcher] [int] NULL,
	[PB] [int] NULL,
	[SB] [int] NULL,
	[CS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Round] ASC,
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HallOfFame]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HallOfFame](
	[HofId] [varchar](10) NOT NULL,
	[Yearid] [int] NOT NULL,
	[VotedBy] [varchar](64) NOT NULL,
	[Ballots] [int] NULL,
	[Needed] [int] NULL,
	[Votes] [int] NULL,
	[Inducted] [varchar](1) NULL,
	[Category] [varchar](20) NULL,
	[Needed_note] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[HofId] ASC,
	[Yearid] ASC,
	[VotedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Managers](
	[ManagerId] [varchar](10) NULL,
	[YearId] [int] NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[LgId] [varchar](2) NULL,
	[Inseason] [int] NOT NULL,
	[G] [int] NULL,
	[W] [int] NULL,
	[L] [int] NULL,
	[Rank] [int] NULL,
	[PlyrMgr] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[TeamId] ASC,
	[Inseason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagersHalf]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagersHalf](
	[ManagerId] [varchar](10) NOT NULL,
	[YearId] [int] NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[LgId] [varchar](2) NULL,
	[Inseason] [int] NULL,
	[Half] [int] NOT NULL,
	[G] [int] NULL,
	[W] [int] NULL,
	[L] [int] NULL,
	[Rank] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[TeamId] ASC,
	[ManagerId] ASC,
	[Half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master](
	[LahmanId] [int] NOT NULL,
	[PlayerId] [varchar](10) NULL,
	[ManagerId] [varchar](10) NULL,
	[HofId] [varchar](10) NULL,
	[BirthYear] [int] NULL,
	[BirthMonth] [int] NULL,
	[BirthDay] [int] NULL,
	[BirthCountry] [varchar](50) NULL,
	[BirthState] [varchar](2) NULL,
	[BirthCity] [varchar](50) NULL,
	[DeathYear] [int] NULL,
	[DeathMonth] [int] NULL,
	[DeathDay] [int] NULL,
	[DeathCountry] [varchar](50) NULL,
	[DeathState] [varchar](2) NULL,
	[DeathCity] [varchar](50) NULL,
	[NameFirst] [varchar](50) NULL,
	[NameLast] [varchar](50) NULL,
	[NameNote] [varchar](255) NULL,
	[NameGiven] [varchar](255) NULL,
	[NameNick] [varchar](255) NULL,
	[Weight] [int] NULL,
	[Height] [decimal](9, 3) NULL,
	[Bats] [varchar](1) NULL,
	[Throws] [varchar](1) NULL,
	[Debut] [varchar](10) NULL,
	[FinalGame] [varchar](10) NULL,
	[College] [varchar](50) NULL,
	[Lahman40Id] [varchar](9) NULL,
	[Lahman45Id] [varchar](9) NULL,
	[RetroId] [varchar](9) NULL,
	[HoltzId] [varchar](9) NULL,
	[BbrefId] [varchar](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[LahmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pitching]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pitching](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[Stint] [int] NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[W] [int] NULL,
	[L] [int] NULL,
	[G] [int] NULL,
	[GS] [int] NULL,
	[CG] [int] NULL,
	[SHO] [int] NULL,
	[SV] [int] NULL,
	[IPouts] [int] NULL,
	[H] [int] NULL,
	[ER] [int] NULL,
	[HR] [int] NULL,
	[BB] [int] NULL,
	[SO] [int] NULL,
	[BAOpp] [decimal](9, 3) NULL,
	[ERA] [decimal](9, 3) NULL,
	[IBB] [int] NULL,
	[WPitcher] [int] NULL,
	[HBPitcher] [int] NULL,
	[BK] [int] NULL,
	[BFPitcher] [int] NULL,
	[GF] [int] NULL,
	[R] [int] NULL,
	[SH] [int] NULL,
	[SF] [int] NULL,
	[GIdP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Stint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PitchingPost]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PitchingPost](
	[PlayerId] [varchar](9) NOT NULL,
	[YearId] [int] NOT NULL,
	[Round] [varchar](10) NOT NULL,
	[TeamId] [varchar](3) NULL,
	[LgId] [varchar](2) NULL,
	[W] [int] NULL,
	[L] [int] NULL,
	[G] [int] NULL,
	[GS] [int] NULL,
	[CG] [int] NULL,
	[SHO] [int] NULL,
	[SV] [int] NULL,
	[IPouts] [int] NULL,
	[H] [int] NULL,
	[ER] [int] NULL,
	[HR] [int] NULL,
	[BB] [int] NULL,
	[SO] [int] NULL,
	[BAOpp] [decimal](9, 3) NULL,
	[ERA] [decimal](9, 3) NULL,
	[IBB] [int] NULL,
	[WPitcher] [int] NULL,
	[HBPitcher] [int] NULL,
	[BK] [int] NULL,
	[BFPitcher] [int] NULL,
	[GF] [int] NULL,
	[R] [int] NULL,
	[SH] [int] NULL,
	[SF] [int] NULL,
	[GIdP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[YearId] ASC,
	[Round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salaries]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salaries](
	[YearId] [int] NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[PlayerId] [varchar](9) NOT NULL,
	[Salary] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[TeamId] ASC,
	[LgId] ASC,
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schools](
	[SchoolId] [varchar](15) NOT NULL,
	[SchoolName] [varchar](255) NULL,
	[SchoolCity] [varchar](55) NULL,
	[SchoolState] [varchar](55) NULL,
	[SchoolNick] [varchar](55) NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SchoolsPlayers]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SchoolsPlayers](
	[PlayerId] [varchar](9) NOT NULL,
	[SchoolId] [varchar](15) NOT NULL,
	[YearMin] [int] NULL,
	[YearMax] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SeriesPost]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeriesPost](
	[YearId] [int] NOT NULL,
	[Round] [varchar](5) NOT NULL,
	[TeamIdwinner] [varchar](3) NULL,
	[LgIdwinner] [varchar](2) NULL,
	[TeamIdloser] [varchar](3) NULL,
	[LgIdloser] [varchar](2) NULL,
	[Wins] [int] NULL,
	[Losses] [int] NULL,
	[Ties] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[Round] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teams](
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[FranchId] [varchar](3) NULL,
	[DivId] [varchar](1) NULL,
	[Rank] [int] NULL,
	[G] [int] NULL,
	[Ghome] [int] NULL,
	[W] [int] NULL,
	[L] [int] NULL,
	[DivWin] [varchar](1) NULL,
	[WCWin] [varchar](1) NULL,
	[LgWin] [varchar](1) NULL,
	[WSWin] [varchar](1) NULL,
	[R] [int] NULL,
	[AB] [int] NULL,
	[H] [int] NULL,
	[Doubles] [int] NULL,
	[Triples] [int] NULL,
	[HR] [int] NULL,
	[BB] [int] NULL,
	[SO] [int] NULL,
	[SB] [int] NULL,
	[CS] [int] NULL,
	[HBPitcher] [int] NULL,
	[SF] [int] NULL,
	[RA] [int] NULL,
	[ER] [int] NULL,
	[ERA] [decimal](9, 3) NULL,
	[CG] [int] NULL,
	[SHO] [int] NULL,
	[SV] [int] NULL,
	[IPouts] [int] NULL,
	[HA] [int] NULL,
	[HRA] [int] NULL,
	[BBA] [int] NULL,
	[SOA] [int] NULL,
	[E] [int] NULL,
	[DPitcher] [int] NULL,
	[FP] [decimal](9, 3) NULL,
	[Name] [varchar](50) NULL,
	[Park] [varchar](255) NULL,
	[Attendance] [int] NULL,
	[BPF] [int] NULL,
	[PPF] [int] NULL,
	[TeamIdBR] [varchar](3) NULL,
	[TeamIdlahman45] [varchar](3) NULL,
	[TeamIdretro] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[LgId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeamsFranchises]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeamsFranchises](
	[FranchId] [varchar](3) NOT NULL,
	[FranchName] [varchar](50) NULL,
	[Active] [varchar](2) NULL,
	[NAassoc] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[FranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeamsHalf]    Script Date: 1/2/2014 10:09:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeamsHalf](
	[YearId] [int] NOT NULL,
	[LgId] [varchar](2) NOT NULL,
	[TeamId] [varchar](3) NOT NULL,
	[Half] [varchar](1) NOT NULL,
	[DivId] [varchar](1) NULL,
	[DivWin] [varchar](1) NULL,
	[Rank] [int] NULL,
	[G] [int] NULL,
	[W] [int] NULL,
	[L] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[YearId] ASC,
	[TeamId] ASC,
	[LgId] ASC,
	[Half] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[HallOfFame] ADD  DEFAULT ('') FOR [VotedBy]
GO
USE [master]
GO
ALTER DATABASE [BaseballStatistics] SET  READ_WRITE 
GO
