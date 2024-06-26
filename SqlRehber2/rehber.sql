USE [master]
GO
/****** Object:  Database [rehberim]    Script Date: 6.12.2022 14:01:12 ******/
CREATE DATABASE [rehberim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rehberim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\rehberim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'rehberim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\rehberim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [rehberim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rehberim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rehberim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rehberim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rehberim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rehberim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rehberim] SET ARITHABORT OFF 
GO
ALTER DATABASE [rehberim] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [rehberim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rehberim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rehberim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rehberim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rehberim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rehberim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rehberim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rehberim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rehberim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [rehberim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rehberim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rehberim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rehberim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rehberim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rehberim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rehberim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rehberim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [rehberim] SET  MULTI_USER 
GO
ALTER DATABASE [rehberim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rehberim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rehberim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rehberim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [rehberim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [rehberim] SET QUERY_STORE = OFF
GO
USE [rehberim]
GO
/****** Object:  Table [dbo].[kisi]    Script Date: 6.12.2022 14:01:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisi](
	[TcNo] [int] NULL,
	[AdSoyad] [varchar](20) NULL,
	[Sehir] [varchar](20) NULL,
	[Adres] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[kisi] ([TcNo], [AdSoyad], [Sehir], [Adres]) VALUES (123, N'a', N'b', N'c')
GO
USE [master]
GO
ALTER DATABASE [rehberim] SET  READ_WRITE 
GO
