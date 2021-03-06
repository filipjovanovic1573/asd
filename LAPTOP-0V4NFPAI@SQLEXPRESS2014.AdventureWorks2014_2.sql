/*=============================================================
SCRIPT HEADER

VERSION:   1.01.0001
DATE:      10-27-2016 15.32.47
SERVER:    LAPTOP-0V4NFPAI\SQLEXPRESS2014

DATABASE:	AdventureWorks2014_2
	Tables:
		Analiza_V3_imena_kolon, Analiza_V3_promet, Policies, Roles, RunningJobs
		SecData, Segment, SegmentedChunk, ServerParametersInstance, ServerUpgradeHistory


=============================================================*/
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
-- CreateWrite Database AdventureWorks2014_2
Print 'Create Database AdventureWorks2014_2'
CREATE DATABASE [AdventureWorks2014_2]
COLLATE SQL_Latin1_General_CP1_CI_AS
GO
ALTER DATABASE [AdventureWorks2014_2] MODIFY FILE (NAME = 'AdventureWorks2014_2', SIZE = 3 MB)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [AdventureWorks2014_2].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [AdventureWorks2014_2] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AdventureWorks2014_2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET ARITHABORT OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AdventureWorks2014_2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AdventureWorks2014_2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [AdventureWorks2014_2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AdventureWorks2014_2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AdventureWorks2014_2] SET READ_WRITE
GO
ALTER DATABASE [AdventureWorks2014_2] SET MULTI_USER
GO
-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Table [dbo].[Analiza_V3_imena_kolon]
Print 'Create Table [dbo].[Analiza_V3_imena_kolon]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Analiza_V3_imena_kolon] (
		[index_glave]             [int] NOT NULL,
		[ime_kolone]              [varchar](15) NOT NULL,
		[ime_kolone_v_izpisu]     [varchar](50) NULL,
		[vnos_plana]              [bit] NOT NULL,
		CONSTRAINT [PK_Analiza_V3_imena_kolon]
		PRIMARY KEY
		CLUSTERED
		([index_glave], [ime_kolone])
	WITH FILLFACTOR=90
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Analiza_V3_imena_kolon] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Analiza_V3_promet]
Print 'Create Table [dbo].[Analiza_V3_promet]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Analiza_V3_promet] (
		[index_glave]     [int] NOT NULL,
		[sm]              [varchar](6) NULL,
		[leto]            [smallint] NULL,
		[mesec]           [smallint] NULL,
		[konto]           [varchar](12) NULL,
		[znesek_zb]       [money] NULL,
		[znesek_zd]       [money] NULL,
		[znesek_nb]       [money] NULL,
		[znesek_nd]       [money] NULL,
		[znesek_pb]       [money] NULL,
		[znesek_pd]       [money] NULL,
		[znesek_sb]       [money] NULL,
		[znesek_sd]       [money] NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_Analiza_V3_promet]
	ON [dbo].[Analiza_V3_promet] ([index_glave])
	WITH ( FILLFACTOR = 90)
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Analiza_V3_promet] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Policies]
Print 'Create Table [dbo].[Policies]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Policies] (
		[PolicyID]       [uniqueidentifier] NOT NULL,
		[PolicyFlag]     [tinyint] NULL,
		CONSTRAINT [PK_Policies]
		PRIMARY KEY
		CLUSTERED
		([PolicyID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Policies] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Roles]
Print 'Create Table [dbo].[Roles]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Roles] (
		[RoleID]          [uniqueidentifier] NOT NULL,
		[RoleName]        [nvarchar](260) NOT NULL,
		[Description]     [nvarchar](512) NULL,
		[TaskMask]        [nvarchar](32) NOT NULL,
		[RoleFlags]       [tinyint] NOT NULL,
		CONSTRAINT [PK_Roles]
		PRIMARY KEY
		NONCLUSTERED
		([RoleID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE CLUSTERED INDEX [IX_Roles]
	ON [dbo].[Roles] ([RoleName])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Roles] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[RunningJobs]
Print 'Create Table [dbo].[RunningJobs]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[RunningJobs] (
		[JobID]            [nvarchar](32) NOT NULL,
		[StartDate]        [datetime] NOT NULL,
		[ComputerName]     [nvarchar](32) NOT NULL,
		[RequestName]      [nvarchar](425) NOT NULL,
		[RequestPath]      [nvarchar](425) NOT NULL,
		[UserId]           [uniqueidentifier] NOT NULL,
		[Description]      [ntext] NULL,
		[Timeout]          [int] NOT NULL,
		[JobAction]        [smallint] NOT NULL,
		[JobType]          [smallint] NOT NULL,
		[JobStatus]        [smallint] NOT NULL,
		CONSTRAINT [PK_RunningJobs]
		PRIMARY KEY
		CLUSTERED
		([JobID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_RunningJobsStatus]
	ON [dbo].[RunningJobs] ([ComputerName], [JobType])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[RunningJobs] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Segment]
Print 'Create Table [dbo].[Segment]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Segment] (
		[SegmentId]     [uniqueidentifier] NOT NULL,
		[Content]       [varbinary](max) NULL,
		CONSTRAINT [PK_Segment]
		PRIMARY KEY
		CLUSTERED
		([SegmentId])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Segment]
	ADD
	CONSTRAINT [DF_Segment_SegmentId]
	DEFAULT (newsequentialid()) FOR [SegmentId]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SegmentMetadata]
	ON [dbo].[Segment] ([SegmentId])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Segment] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[SegmentedChunk]
Print 'Create Table [dbo].[SegmentedChunk]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[SegmentedChunk] (
		[ChunkId]              [uniqueidentifier] NOT NULL,
		[SnapshotDataId]       [uniqueidentifier] NOT NULL,
		[ChunkFlags]           [tinyint] NOT NULL,
		[ChunkName]            [nvarchar](260) NOT NULL,
		[ChunkType]            [int] NOT NULL,
		[Version]              [smallint] NOT NULL,
		[MimeType]             [nvarchar](260) NULL,
		[SegmentedChunkId]     [bigint] IDENTITY(1, 1) NOT NULL,
		CONSTRAINT [PK_SegmentedChunk]
		PRIMARY KEY
		CLUSTERED
		([SegmentedChunkId])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[SegmentedChunk]
	ADD
	CONSTRAINT [DF_SegmentedChunk_ChunkId]
	DEFAULT (newsequentialid()) FOR [ChunkId]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_ChunkId_SnapshotDataId]
	ON [dbo].[SegmentedChunk] ([ChunkId], [SnapshotDataId])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [UNIQ_SnapshotChunkMapping]
	ON [dbo].[SegmentedChunk] ([SnapshotDataId], [ChunkType], [ChunkName])
	INCLUDE ([ChunkId], [ChunkFlags])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[SegmentedChunk] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[ServerParametersInstance]
Print 'Create Table [dbo].[ServerParametersInstance]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[ServerParametersInstance] (
		[ServerParametersID]     [nvarchar](32) NOT NULL,
		[ParentID]               [nvarchar](32) NULL,
		[Path]                   [nvarchar](425) NOT NULL,
		[CreateDate]             [datetime] NOT NULL,
		[ModifiedDate]           [datetime] NOT NULL,
		[Timeout]                [int] NOT NULL,
		[Expiration]             [datetime] NOT NULL,
		[ParametersValues]       [image] NOT NULL,
		CONSTRAINT [PK_ServerParametersInstance]
		PRIMARY KEY
		CLUSTERED
		([ServerParametersID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_ServerParametersInstanceExpiration]
	ON [dbo].[ServerParametersInstance] ([Expiration] DESC)
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[ServerParametersInstance] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[ServerUpgradeHistory]
Print 'Create Table [dbo].[ServerUpgradeHistory]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[ServerUpgradeHistory] (
		[UpgradeID]         [bigint] IDENTITY(1, 1) NOT NULL,
		[ServerVersion]     [nvarchar](25) NULL,
		[User]              [nvarchar](128) NULL,
		[DateTime]          [datetime] NULL,
		CONSTRAINT [PK_ServerUpgradeHistory]
		PRIMARY KEY
		CLUSTERED
		([UpgradeID] DESC)
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[ServerUpgradeHistory]
	ADD
	CONSTRAINT [DF__ServerUpg__DateT__1FEDB87C]
	DEFAULT (getdate()) FOR [DateTime]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[ServerUpgradeHistory]
	ADD
	CONSTRAINT [DF__ServerUpgr__User__1EF99443]
	DEFAULT (suser_sname()) FOR [User]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[ServerUpgradeHistory] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[SecData]
Print 'Create Table [dbo].[SecData]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[SecData] (
		[SecDataID]              [uniqueidentifier] NOT NULL,
		[PolicyID]               [uniqueidentifier] NOT NULL,
		[AuthType]               [int] NOT NULL,
		[XmlDescription]         [ntext] NOT NULL,
		[NtSecDescPrimary]       [image] NOT NULL,
		[NtSecDescSecondary]     [ntext] NULL,
		CONSTRAINT [PK_SecData]
		PRIMARY KEY
		NONCLUSTERED
		([SecDataID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE CLUSTERED INDEX [IX_SecData]
	ON [dbo].[SecData] ([PolicyID], [AuthType])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[SecData] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Foreign Key FK_SecDataPolicyID On SecData
Print 'Create Foreign Key FK_SecDataPolicyID On SecData'
GO
ALTER TABLE [dbo].[SecData]
	WITH NOCHECK
	ADD CONSTRAINT [FK_SecDataPolicyID]
	FOREIGN KEY ([PolicyID]) REFERENCES [dbo].[Policies] ([PolicyID])
	ON DELETE CASCADE
ALTER TABLE [dbo].[SecData]
	CHECK CONSTRAINT [FK_SecDataPolicyID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
