USE [master]
GO
/****** Object:  Database [KokaarCisDev]    Script Date: 08/10/2021 23:45:56 ******/
CREATE DATABASE [KokaarCisDev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KokaarCisDev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KokaarCisDev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KokaarCisDev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KokaarCisDev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KokaarCisDev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KokaarCisDev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KokaarCisDev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KokaarCisDev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KokaarCisDev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KokaarCisDev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KokaarCisDev] SET ARITHABORT OFF 
GO
ALTER DATABASE [KokaarCisDev] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KokaarCisDev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KokaarCisDev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KokaarCisDev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KokaarCisDev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KokaarCisDev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KokaarCisDev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KokaarCisDev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KokaarCisDev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KokaarCisDev] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KokaarCisDev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KokaarCisDev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KokaarCisDev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KokaarCisDev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KokaarCisDev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KokaarCisDev] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KokaarCisDev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KokaarCisDev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KokaarCisDev] SET  MULTI_USER 
GO
ALTER DATABASE [KokaarCisDev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KokaarCisDev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KokaarCisDev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KokaarCisDev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KokaarCisDev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KokaarCisDev] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KokaarCisDev] SET QUERY_STORE = OFF
GO
USE [KokaarCisDev]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessPartners]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessPartners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[AccountBalance] [float] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_BusinessPartners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommissionPayments]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmountPaid] [float] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TransactionNumber] [nvarchar](450) NULL,
	[InvoiceHeaderId] [int] NOT NULL,
	[PaymentModeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_CommissionPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDocuments]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentUrl] [nvarchar](450) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_CustomerDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[AccountBalance] [float] NOT NULL,
	[MaximumCreditAuthorized] [float] NULL,
	[Comment] [nvarchar](max) NULL,
	[IdentityDocumentNumber] [nvarchar](450) NOT NULL,
	[IdentityDocumentTypeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTypes]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_DocumentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityDocumentTypes]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityDocumentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_IdentityDocumentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Surface] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[InvoiceHeaderId] [int] NOT NULL,
	[ParcelId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceHeaders]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NULL,
	[ParcellingCosts] [float] NOT NULL,
	[TechnicalFileCosts] [float] NOT NULL,
	[BoundaryCosts] [float] NOT NULL,
	[TotalSaleAmount] [float] NOT NULL,
	[NetAmountToPay] [float] NOT NULL,
	[AdvancedAmount] [float] NOT NULL,
	[RemainingAmountToPay] [float] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[CommissionType] [nvarchar](max) NOT NULL,
	[CommissionUnitValue] [float] NOT NULL,
	[CommissionToPay] [float] NOT NULL,
	[CommissionPaid] [float] NOT NULL,
	[CommissionRemainingToPay] [float] NOT NULL,
	[CommissionStatus] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[CustomerId] [int] NOT NULL,
	[BusinessPartnerId] [int] NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_InvoiceHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoicePayments]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoicePayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmountPaid] [float] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TransactionNumber] [nvarchar](450) NULL,
	[InvoiceHeaderId] [int] NOT NULL,
	[PaymentModeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_InvoicePayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandTitleDocuments]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandTitleDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentUrl] [nvarchar](450) NOT NULL,
	[LandTitleId] [int] NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_LandTitleDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandTitles]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](450) NOT NULL,
	[Owner] [nvarchar](max) NOT NULL,
	[Surface] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LocalityId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_LandTitles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localities]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CityId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Localities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParcelDocuments]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParcelDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentUrl] [nvarchar](max) NOT NULL,
	[ParcelId] [int] NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_ParcelDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parcels]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](450) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[MinimumUnitPrice] [float] NOT NULL,
	[Surface] [float] NOT NULL,
	[BlocNumber] [nvarchar](max) NULL,
	[LandType] [nvarchar](max) NULL,
	[RoadType] [nvarchar](max) NULL,
	[AreaMarking] [nvarchar](max) NULL,
	[HasWater] [nvarchar](max) NULL,
	[HasElectrilocality] [nvarchar](max) NULL,
	[HasTechnicalFile] [nvarchar](max) NULL,
	[HasImages] [nvarchar](max) NULL,
	[HasVideos] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[LandTitleId] [int] NULL,
	[LocalityId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Parcels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentModes]    Script Date: 08/10/2021 23:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentModes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime2](7) NULL,
	[LastModificationUser] [nvarchar](max) NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelationReason] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_PaymentModes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211003223436_Initial', N'5.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'01b168fe-810b-432d-9010-233ba0b380e9', N'Simple user', N'SIMPLE USER', N'02b61689-69c2-41b6-8ac0-9d974a6d54fb')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'78a7570f-3ce5-48ba-9461-80283ed1d94d', N'Administrator', N'ADMINISTRATOR', N'bb4f1ada-264b-4063-8b40-39e3626f6f9f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7d9b7113-a8f8-4035-99a7-a20dd400f6a3', N'Super administrator', N'SUPER ADMINISTRATOR', N'2dad87da-e462-4b7a-a7cb-4621018dc253')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'936da01f-9abd-4d9d-80c7-02af85c822a8', N'01b168fe-810b-432d-9010-233ba0b380e9', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'b22698b8-42a2-4115-9631-1c2d1e2ac5f7', N'7d9b7113-a8f8-4035-99a7-a20dd400f6a3', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'7c9e6679-7425-40de-944b-e07fc1f90ae7', N'78a7570f-3ce5-48ba-9461-80283ed1d94d', N'ApplicationUserRole')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'936da01f-9abd-4d9d-80c7-02af85c822a8', N'Simple User', N'user', N'USER', N'kokaar.user@gmail.com', N'KOKAAR.USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPNgSn1f3QZR/dP5qqwxO+L/1pBhBkVlRQNbAxExGngCPSTxm1XgWCN0MjnotPUaPA==', N'e4fa7e7d-e7c5-4f9e-9e68-35ea7a53db85', N'28964c74-f160-4a78-8f35-3ed5210ec444', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b22698b8-42a2-4115-9631-1c2d1e2ac5f7', N'Super administrator', N'super.admin', N'SUPER.ADMIN', N'kokaar.super.admin@gmail.com', N'KOKAAR.SUPER.ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOP15aGroHOZTV1Vq9pVAkpk9wl5o5KizAdvPdflr1ol8JWCeS3R18xsKuDnV/SiDQ==', N'6f0930c6-d746-4e83-89c5-d03b465af8ed', N'a47fa097-b1ae-44d3-a654-ded34b94c01f', NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c9e6679-7425-40de-944b-e07fc1f90ae7', N'Administrator', N'admin', N'ADMIN', N'kokaar.admin@gmail.com', N'KOKAAR.ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOoI6bV9T79H/y0cCIW3KqJJNdxbltnXRRbnHs9kscaeHDtO6XrmKXeTIV/71bAo9w==', N'8057acaf-9e1f-46f2-a054-a0110b48e3c5', N'2f1d3312-ee41-482a-b148-55bdab2ffdab', NULL, 1, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[BusinessPartners] ON 

INSERT [dbo].[BusinessPartners] ([Id], [Name], [PhoneNumber], [AccountBalance], [Comment], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Guy Merlin', N'698785265', 0, NULL, CAST(N'2021-10-04T22:28:00.6172004' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[BusinessPartners] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Nanga-Eboko', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (2, N'Muyuka', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (3, N'Mora', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (4, N'Mokolo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (5, N'Melong', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (6, N'Meiganga', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (7, N'Mbouda', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (8, N'Mbalmayo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (9, N'Mbandjock', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (10, N'Ndop', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (11, N'Manjo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (12, N'Mamfé', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (13, N'Makénéné', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (14, N'Magba', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (15, N'Maga', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (16, N'Mbanga', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (17, N'Ngaoundal', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (18, N'Nkongsamba', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (19, N'Nkambé', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (20, N'Yokadouma', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (21, N'Yaoundé', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (22, N'Yagoua', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (23, N'Yabassi', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (24, N'Wum', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (25, N'Touboro', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (26, N'Tonga', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (27, N'Ngaoundéré', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (28, N'Tombel', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (29, N'Tibati', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (30, N'Tcholliré', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (31, N'Sangmélima', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (32, N'Pitoa', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (33, N'Obala', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (34, N'Nkoteng', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (35, N'Loum', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (36, N'Tiko', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (37, N'Limbé', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (38, N'Maroua', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (39, N'Kumba', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (40, N'Buea', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (41, N'Bogo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (42, N'Blangoua', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (43, N'Bertoua', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (44, N'Bélabo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (45, N'Batouri', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (46, N'Batibo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (47, N'Douala', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (48, N'Kumbo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (49, N'Bamenda', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (50, N'Bali', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (51, N'Bafoussam', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (52, N'Bafia', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (53, N'Bafang', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (54, N'Akonolinga', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (55, N'Abong-Mbang', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (56, N'Bangangté', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (57, N'Dschang', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (58, N'Banyo', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (59, N'Edéa', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (60, N'Ebolowa', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (61, N'Kribi', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (62, N'Koutaba', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (63, N'Kousséri', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (64, N'Kékem', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (65, N'Kaélé', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (66, N'Guider', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (67, N'Gazawa', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (68, N'Guidiguis', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (69, N'Garoua', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (70, N'Fundong', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (71, N'Foumbot', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (72, N'Foumban', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (73, N'Fontem', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (74, N'Figuil', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (75, N'Eséka', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Cities] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (76, N'Garoua-Boulaï', NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [PhoneNumber], [Address], [Email], [AccountBalance], [MaximumCreditAuthorized], [Comment], [IdentityDocumentNumber], [IdentityDocumentTypeId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Armand Kamdem', N'699655906', NULL, NULL, 0, NULL, NULL, N'109618191', 4, CAST(N'2021-10-03T23:41:00.5182662' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DocumentTypes] ON 

INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Titre foncier', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (2, N'Permis de conduire', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (3, N'Titre de séjour', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (4, N'Procuration', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (5, N'Procès verbale de morcellement', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (6, N'Plan de masse', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (7, N'Plan de lotissement', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (8, N'Passeport', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (9, N'Autres', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (10, N'Dossier technique', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (11, N'CNI', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (12, N'Certificat de propriété', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (13, N'Carte de séjour', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (14, N'Carte consulaire', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (15, N'Acte de vente', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (16, N'Fiche technique d''information', NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[DocumentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityDocumentTypes] ON 

INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Permis de conduire', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (2, N'Carte consulaire', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (3, N'Carte de séjour', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (4, N'CNI', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (5, N'Passeport', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[IdentityDocumentTypes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (6, N'Titre de séjour', NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[IdentityDocumentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON 

INSERT [dbo].[InvoiceDetails] ([Id], [UnitPrice], [Surface], [Total], [InvoiceHeaderId], [ParcelId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1010, 2000, 600, 1200000, 1009, 2, CAST(N'2021-10-06T00:18:26.4428112' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[InvoiceDetails] ([Id], [UnitPrice], [Surface], [Total], [InvoiceHeaderId], [ParcelId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1023, 5000, 700, 3500000, 1022, 1, CAST(N'2021-10-06T01:09:51.7866132' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceHeaders] ON 

INSERT [dbo].[InvoiceHeaders] ([Id], [Date], [PaymentDueDate], [ParcellingCosts], [TechnicalFileCosts], [BoundaryCosts], [TotalSaleAmount], [NetAmountToPay], [AdvancedAmount], [RemainingAmountToPay], [Status], [CommissionType], [CommissionUnitValue], [CommissionToPay], [CommissionPaid], [CommissionRemainingToPay], [CommissionStatus], [Comment], [CustomerId], [BusinessPartnerId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, CAST(N'2021-10-03T00:00:00.0000000' AS DateTime2), NULL, 200000, 200000, 50000, 0, 450000, 0, 450000, N'Impayé', N'Aucune', 0, 0, 0, 0, N'Impayé', NULL, 1, NULL, CAST(N'2021-10-03T23:41:20.8537604' AS DateTime2), N'super.admin', NULL, NULL, 1, N'teste ')
INSERT [dbo].[InvoiceHeaders] ([Id], [Date], [PaymentDueDate], [ParcellingCosts], [TechnicalFileCosts], [BoundaryCosts], [TotalSaleAmount], [NetAmountToPay], [AdvancedAmount], [RemainingAmountToPay], [Status], [CommissionType], [CommissionUnitValue], [CommissionToPay], [CommissionPaid], [CommissionRemainingToPay], [CommissionStatus], [Comment], [CustomerId], [BusinessPartnerId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (3, CAST(N'2021-10-04T00:00:00.0000000' AS DateTime2), NULL, 200000, 200000, 50000, 0, 450000, 0, 450000, N'Impayé', N'Aucune', 0, 0, 0, 0, N'Impayé', NULL, 1, NULL, CAST(N'2021-10-04T02:46:26.4795389' AS DateTime2), N'super.admin', NULL, NULL, 1, N'Erreur')
INSERT [dbo].[InvoiceHeaders] ([Id], [Date], [PaymentDueDate], [ParcellingCosts], [TechnicalFileCosts], [BoundaryCosts], [TotalSaleAmount], [NetAmountToPay], [AdvancedAmount], [RemainingAmountToPay], [Status], [CommissionType], [CommissionUnitValue], [CommissionToPay], [CommissionPaid], [CommissionRemainingToPay], [CommissionStatus], [Comment], [CustomerId], [BusinessPartnerId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (4, CAST(N'2021-10-04T00:00:00.0000000' AS DateTime2), NULL, 200000, 200000, 100000, 0, 500000, 0, 500000, N'Impayé', N'Aucune', 0, 0, 0, 0, N'Impayé', NULL, 1, NULL, CAST(N'2021-10-04T02:55:49.0016933' AS DateTime2), N'super.admin', CAST(N'2021-10-04T03:01:09.5720260' AS DateTime2), N'super.admin', 1, N'Erreur')
INSERT [dbo].[InvoiceHeaders] ([Id], [Date], [PaymentDueDate], [ParcellingCosts], [TechnicalFileCosts], [BoundaryCosts], [TotalSaleAmount], [NetAmountToPay], [AdvancedAmount], [RemainingAmountToPay], [Status], [CommissionType], [CommissionUnitValue], [CommissionToPay], [CommissionPaid], [CommissionRemainingToPay], [CommissionStatus], [Comment], [CustomerId], [BusinessPartnerId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1009, CAST(N'2021-10-06T00:00:00.0000000' AS DateTime2), NULL, 200000, 200000, 50000, 1200000, 1650000, 1650000, 0, N'Payé', N'Aucune', 0, 0, 0, 0, N'Impayé', NULL, 1, NULL, CAST(N'2021-10-06T00:18:26.3108340' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[InvoiceHeaders] ([Id], [Date], [PaymentDueDate], [ParcellingCosts], [TechnicalFileCosts], [BoundaryCosts], [TotalSaleAmount], [NetAmountToPay], [AdvancedAmount], [RemainingAmountToPay], [Status], [CommissionType], [CommissionUnitValue], [CommissionToPay], [CommissionPaid], [CommissionRemainingToPay], [CommissionStatus], [Comment], [CustomerId], [BusinessPartnerId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1022, CAST(N'2021-10-06T00:00:00.0000000' AS DateTime2), NULL, 200000, 200000, 50000, 3500000, 3950000, 2000000, 1950000, N'Avancé', N'Aucune', 0, 0, 0, 0, N'Impayé', NULL, 1, NULL, CAST(N'2021-10-06T01:09:51.6411267' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[InvoiceHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoicePayments] ON 

INSERT [dbo].[InvoicePayments] ([Id], [AmountPaid], [Date], [TransactionNumber], [InvoiceHeaderId], [PaymentModeId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (7, 1650000, CAST(N'2021-10-06T00:00:00.0000000' AS DateTime2), NULL, 1009, 1, CAST(N'2021-10-06T00:41:08.0720256' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[InvoicePayments] ([Id], [AmountPaid], [Date], [TransactionNumber], [InvoiceHeaderId], [PaymentModeId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (8, 2000000, CAST(N'2021-10-06T00:00:00.0000000' AS DateTime2), NULL, 1022, 1, CAST(N'2021-10-06T09:21:19.6593694' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[InvoicePayments] OFF
GO
SET IDENTITY_INSERT [dbo].[LandTitles] ON 

INSERT [dbo].[LandTitles] ([Id], [Number], [Owner], [Surface], [Description], [LocalityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'1048', N'Ebanda', 11000, NULL, 1, CAST(N'2021-10-03T23:40:08.0377636' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[LandTitles] OFF
GO
SET IDENTITY_INSERT [dbo].[Localities] ON 

INSERT [dbo].[Localities] ([Id], [Name], [Description], [CityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Lendi', NULL, 47, CAST(N'2021-10-03T23:36:25.5988855' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[Localities] ([Id], [Name], [Description], [CityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (2, N'Ngombé', N'Test', 40, CAST(N'2021-10-04T21:33:31.6583950' AS DateTime2), N'super.admin', CAST(N'2021-10-04T21:33:38.3613267' AS DateTime2), N'super.admin', 0, NULL)
SET IDENTITY_INSERT [dbo].[Localities] OFF
GO
SET IDENTITY_INSERT [dbo].[Parcels] ON 

INSERT [dbo].[Parcels] ([Id], [Number], [UnitPrice], [MinimumUnitPrice], [Surface], [BlocNumber], [LandType], [RoadType], [AreaMarking], [HasWater], [HasElectrilocality], [HasTechnicalFile], [HasImages], [HasVideos], [Description], [Status], [LandTitleId], [LocalityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'1', 5000, 5000, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Indisponible', 1, 1, CAST(N'2021-10-03T23:40:33.0601293' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[Parcels] ([Id], [Number], [UnitPrice], [MinimumUnitPrice], [Surface], [BlocNumber], [LandType], [RoadType], [AreaMarking], [HasWater], [HasElectrilocality], [HasTechnicalFile], [HasImages], [HasVideos], [Description], [Status], [LandTitleId], [LocalityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (2, N'2', 2000, 2000, 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Indisponible', 1, 1, CAST(N'2021-10-04T02:46:07.7654307' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
INSERT [dbo].[Parcels] ([Id], [Number], [UnitPrice], [MinimumUnitPrice], [Surface], [BlocNumber], [LandType], [RoadType], [AreaMarking], [HasWater], [HasElectrilocality], [HasTechnicalFile], [HasImages], [HasVideos], [Description], [Status], [LandTitleId], [LocalityId], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1002, N'3', 6000, 5000, 600, NULL, NULL, NULL, NULL, NULL, N'Oui', NULL, N'Non', N'Oui', NULL, N'Disponible', 1, 1, CAST(N'2021-10-04T21:34:28.4977956' AS DateTime2), N'super.admin', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Parcels] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentModes] ON 

INSERT [dbo].[PaymentModes] ([Id], [Name], [CreationDate], [CreationUser], [LastModificationDate], [LastModificationUser], [IsCanceled], [CancelationReason]) VALUES (1, N'Cash', CAST(N'2021-10-03T00:00:00.0000000' AS DateTime2), N'application', NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[PaymentModes] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionPayments_InvoiceHeaderId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_CommissionPayments_InvoiceHeaderId] ON [dbo].[CommissionPayments]
(
	[InvoiceHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionPayments_PaymentModeId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_CommissionPayments_PaymentModeId] ON [dbo].[CommissionPayments]
(
	[PaymentModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CommissionPayments_TransactionNumber]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CommissionPayments_TransactionNumber] ON [dbo].[CommissionPayments]
(
	[TransactionNumber] ASC
)
WHERE ([TransactionNumber] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CustomerDocuments_CustomerId_DocumentTypeId_DocumentUrl]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CustomerDocuments_CustomerId_DocumentTypeId_DocumentUrl] ON [dbo].[CustomerDocuments]
(
	[CustomerId] ASC,
	[DocumentTypeId] ASC,
	[DocumentUrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerDocuments_DocumentTypeId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_CustomerDocuments_DocumentTypeId] ON [dbo].[CustomerDocuments]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customers_IdentityDocumentTypeId_IdentityDocumentNumber]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customers_IdentityDocumentTypeId_IdentityDocumentNumber] ON [dbo].[Customers]
(
	[IdentityDocumentTypeId] ASC,
	[IdentityDocumentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DocumentTypes_Name]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DocumentTypes_Name] ON [dbo].[DocumentTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_IdentityDocumentTypes_Name]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityDocumentTypes_Name] ON [dbo].[IdentityDocumentTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceDetails_InvoiceHeaderId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceDetails_InvoiceHeaderId] ON [dbo].[InvoiceDetails]
(
	[InvoiceHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceDetails_ParcelId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_InvoiceDetails_ParcelId] ON [dbo].[InvoiceDetails]
(
	[ParcelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceHeaders_BusinessPartnerId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceHeaders_BusinessPartnerId] ON [dbo].[InvoiceHeaders]
(
	[BusinessPartnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceHeaders_CustomerId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceHeaders_CustomerId] ON [dbo].[InvoiceHeaders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoicePayments_InvoiceHeaderId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_InvoicePayments_InvoiceHeaderId] ON [dbo].[InvoicePayments]
(
	[InvoiceHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoicePayments_PaymentModeId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_InvoicePayments_PaymentModeId] ON [dbo].[InvoicePayments]
(
	[PaymentModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_InvoicePayments_TransactionNumber]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_InvoicePayments_TransactionNumber] ON [dbo].[InvoicePayments]
(
	[TransactionNumber] ASC
)
WHERE ([TransactionNumber] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LandTitleDocuments_DocumentTypeId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_LandTitleDocuments_DocumentTypeId] ON [dbo].[LandTitleDocuments]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LandTitleDocuments_LandTitleId_DocumentTypeId_DocumentUrl]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LandTitleDocuments_LandTitleId_DocumentTypeId_DocumentUrl] ON [dbo].[LandTitleDocuments]
(
	[LandTitleId] ASC,
	[DocumentTypeId] ASC,
	[DocumentUrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LandTitles_LocalityId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_LandTitles_LocalityId] ON [dbo].[LandTitles]
(
	[LocalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LandTitles_Number]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LandTitles_Number] ON [dbo].[LandTitles]
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Localities_CityId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Localities_CityId] ON [dbo].[Localities]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Localities_Name_CityId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Localities_Name_CityId] ON [dbo].[Localities]
(
	[Name] ASC,
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParcelDocuments_DocumentTypeId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_ParcelDocuments_DocumentTypeId] ON [dbo].[ParcelDocuments]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParcelDocuments_ParcelId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_ParcelDocuments_ParcelId] ON [dbo].[ParcelDocuments]
(
	[ParcelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Parcels_LandTitleId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Parcels_LandTitleId] ON [dbo].[Parcels]
(
	[LandTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Parcels_LocalityId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE NONCLUSTERED INDEX [IX_Parcels_LocalityId] ON [dbo].[Parcels]
(
	[LocalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Parcels_Number_LandTitleId]    Script Date: 08/10/2021 23:45:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Parcels_Number_LandTitleId] ON [dbo].[Parcels]
(
	[Number] ASC,
	[LandTitleId] ASC
)
WHERE ([LandTitleId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CommissionPayments]  WITH CHECK ADD  CONSTRAINT [FK_CommissionPayments_InvoiceHeaders_InvoiceHeaderId] FOREIGN KEY([InvoiceHeaderId])
REFERENCES [dbo].[InvoiceHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommissionPayments] CHECK CONSTRAINT [FK_CommissionPayments_InvoiceHeaders_InvoiceHeaderId]
GO
ALTER TABLE [dbo].[CommissionPayments]  WITH CHECK ADD  CONSTRAINT [FK_CommissionPayments_PaymentModes_PaymentModeId] FOREIGN KEY([PaymentModeId])
REFERENCES [dbo].[PaymentModes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommissionPayments] CHECK CONSTRAINT [FK_CommissionPayments_PaymentModes_PaymentModeId]
GO
ALTER TABLE [dbo].[CustomerDocuments]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDocuments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerDocuments] CHECK CONSTRAINT [FK_CustomerDocuments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[CustomerDocuments]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDocuments_DocumentTypes_DocumentTypeId] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerDocuments] CHECK CONSTRAINT [FK_CustomerDocuments_DocumentTypes_DocumentTypeId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_IdentityDocumentTypes_IdentityDocumentTypeId] FOREIGN KEY([IdentityDocumentTypeId])
REFERENCES [dbo].[IdentityDocumentTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_IdentityDocumentTypes_IdentityDocumentTypeId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_InvoiceHeaders_InvoiceHeaderId] FOREIGN KEY([InvoiceHeaderId])
REFERENCES [dbo].[InvoiceHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_InvoiceHeaders_InvoiceHeaderId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Parcels_ParcelId] FOREIGN KEY([ParcelId])
REFERENCES [dbo].[Parcels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Parcels_ParcelId]
GO
ALTER TABLE [dbo].[InvoiceHeaders]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceHeaders_BusinessPartners_BusinessPartnerId] FOREIGN KEY([BusinessPartnerId])
REFERENCES [dbo].[BusinessPartners] ([Id])
GO
ALTER TABLE [dbo].[InvoiceHeaders] CHECK CONSTRAINT [FK_InvoiceHeaders_BusinessPartners_BusinessPartnerId]
GO
ALTER TABLE [dbo].[InvoiceHeaders]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceHeaders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceHeaders] CHECK CONSTRAINT [FK_InvoiceHeaders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[InvoicePayments]  WITH CHECK ADD  CONSTRAINT [FK_InvoicePayments_InvoiceHeaders_InvoiceHeaderId] FOREIGN KEY([InvoiceHeaderId])
REFERENCES [dbo].[InvoiceHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoicePayments] CHECK CONSTRAINT [FK_InvoicePayments_InvoiceHeaders_InvoiceHeaderId]
GO
ALTER TABLE [dbo].[InvoicePayments]  WITH CHECK ADD  CONSTRAINT [FK_InvoicePayments_PaymentModes_PaymentModeId] FOREIGN KEY([PaymentModeId])
REFERENCES [dbo].[PaymentModes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoicePayments] CHECK CONSTRAINT [FK_InvoicePayments_PaymentModes_PaymentModeId]
GO
ALTER TABLE [dbo].[LandTitleDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LandTitleDocuments_DocumentTypes_DocumentTypeId] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LandTitleDocuments] CHECK CONSTRAINT [FK_LandTitleDocuments_DocumentTypes_DocumentTypeId]
GO
ALTER TABLE [dbo].[LandTitleDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LandTitleDocuments_LandTitles_LandTitleId] FOREIGN KEY([LandTitleId])
REFERENCES [dbo].[LandTitles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LandTitleDocuments] CHECK CONSTRAINT [FK_LandTitleDocuments_LandTitles_LandTitleId]
GO
ALTER TABLE [dbo].[LandTitles]  WITH CHECK ADD  CONSTRAINT [FK_LandTitles_Localities_LocalityId] FOREIGN KEY([LocalityId])
REFERENCES [dbo].[Localities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LandTitles] CHECK CONSTRAINT [FK_LandTitles_Localities_LocalityId]
GO
ALTER TABLE [dbo].[Localities]  WITH CHECK ADD  CONSTRAINT [FK_Localities_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localities] CHECK CONSTRAINT [FK_Localities_Cities_CityId]
GO
ALTER TABLE [dbo].[ParcelDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ParcelDocuments_DocumentTypes_DocumentTypeId] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParcelDocuments] CHECK CONSTRAINT [FK_ParcelDocuments_DocumentTypes_DocumentTypeId]
GO
ALTER TABLE [dbo].[ParcelDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ParcelDocuments_Parcels_ParcelId] FOREIGN KEY([ParcelId])
REFERENCES [dbo].[Parcels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParcelDocuments] CHECK CONSTRAINT [FK_ParcelDocuments_Parcels_ParcelId]
GO
ALTER TABLE [dbo].[Parcels]  WITH CHECK ADD  CONSTRAINT [FK_Parcels_LandTitles_LandTitleId] FOREIGN KEY([LandTitleId])
REFERENCES [dbo].[LandTitles] ([Id])
GO
ALTER TABLE [dbo].[Parcels] CHECK CONSTRAINT [FK_Parcels_LandTitles_LandTitleId]
GO
ALTER TABLE [dbo].[Parcels]  WITH CHECK ADD  CONSTRAINT [FK_Parcels_Localities_LocalityId] FOREIGN KEY([LocalityId])
REFERENCES [dbo].[Localities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Parcels] CHECK CONSTRAINT [FK_Parcels_Localities_LocalityId]
GO
USE [master]
GO
ALTER DATABASE [KokaarCisDev] SET  READ_WRITE 
GO
