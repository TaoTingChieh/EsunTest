USE [master]
GO
/****** Object:  Database [esunbank]    Script Date: 2025/5/13 下午 09:02:40 ******/
CREATE DATABASE [esunbank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'esunbank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\esunbank.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'esunbank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\esunbank_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [esunbank] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [esunbank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [esunbank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [esunbank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [esunbank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [esunbank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [esunbank] SET ARITHABORT OFF 
GO
ALTER DATABASE [esunbank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [esunbank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [esunbank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [esunbank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [esunbank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [esunbank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [esunbank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [esunbank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [esunbank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [esunbank] SET  DISABLE_BROKER 
GO
ALTER DATABASE [esunbank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [esunbank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [esunbank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [esunbank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [esunbank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [esunbank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [esunbank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [esunbank] SET RECOVERY FULL 
GO
ALTER DATABASE [esunbank] SET  MULTI_USER 
GO
ALTER DATABASE [esunbank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [esunbank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [esunbank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [esunbank] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [esunbank] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [esunbank] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'esunbank', N'ON'
GO
ALTER DATABASE [esunbank] SET QUERY_STORE = ON
GO
ALTER DATABASE [esunbank] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [esunbank]
GO
/****** Object:  Table [dbo].[LikeList]    Script Date: 2025/5/13 下午 09:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikeList](
	[LikeListNo] [int] IDENTITY(1,1) NOT NULL,
	[ProductNo] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductCount] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Account] [nvarchar](20) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[FeeRate] [decimal](10, 4) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[TotalFee] [decimal](10, 4) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[CreateId] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateID] [int] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_LikeList_1] PRIMARY KEY CLUSTERED 
(
	[LikeListNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2025/5/13 下午 09:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductNo] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[FeeRate] [decimal](10, 4) NOT NULL,
	[CreateID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateID] [int] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK__Products__B40D3A36933E61BC] PRIMARY KEY CLUSTERED 
(
	[ProductNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2025/5/13 下午 09:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[No] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Account] [nvarchar](20) NOT NULL,
	[CreateID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateID] [int] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜好清單流水號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'LikeListNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品流水號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'ProductNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'ProductCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扣款帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品價格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手續費率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'FeeRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'總產品價錢' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'TotalPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'總手續費用(台幣計價)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'TotalFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'預計扣款總金額' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'TotalAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'UpdateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LikeList', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary Key 產品流水號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品價格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手續費率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'FeeRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UpdateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'CreateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UpdateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
USE [master]
GO
ALTER DATABASE [esunbank] SET  READ_WRITE 
GO
