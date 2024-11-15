USE [master]
GO
/****** Object:  Database [KAKTUS]    Script Date: 15.11.2024 8:59:49 ******/
CREATE DATABASE [KAKTUS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KAKTUS', FILENAME = N'C:\Users\User\OneDrive\Рабочий стол\Базы данных\KAKTUS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KAKTUS_log', FILENAME = N'C:\Users\User\OneDrive\Рабочий стол\Базы данных\KAKTUS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KAKTUS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KAKTUS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KAKTUS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KAKTUS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KAKTUS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KAKTUS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KAKTUS] SET ARITHABORT OFF 
GO
ALTER DATABASE [KAKTUS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KAKTUS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KAKTUS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KAKTUS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KAKTUS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KAKTUS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KAKTUS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KAKTUS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KAKTUS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KAKTUS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KAKTUS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KAKTUS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KAKTUS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KAKTUS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KAKTUS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KAKTUS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KAKTUS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KAKTUS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KAKTUS] SET  MULTI_USER 
GO
ALTER DATABASE [KAKTUS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KAKTUS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KAKTUS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KAKTUS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KAKTUS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KAKTUS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KAKTUS] SET QUERY_STORE = ON
GO
ALTER DATABASE [KAKTUS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KAKTUS]
GO
/****** Object:  Table [dbo].[Cactus]    Script Date: 15.11.2024 8:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cactus](
	[Cactus_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vid] [nvarchar](50) NULL,
	[Proishozhdenie] [nvarchar](50) NULL,
	[Vozrast] [int] NULL,
	[Stoimost] [int] NULL,
	[Instrukciya] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cactus] PRIMARY KEY CLUSTERED 
(
	[Cactus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vistavka]    Script Date: 15.11.2024 8:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vistavka](
	[Vistavka_ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NULL,
	[Mesto] [nvarchar](50) NULL,
	[Nagrada] [nvarchar](50) NULL,
	[Koment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vistavka] PRIMARY KEY CLUSTERED 
(
	[Vistavka_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vistavka_Caktusov]    Script Date: 15.11.2024 8:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vistavka_Caktusov](
	[Id_Vistavka_Cactusov] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cactus] [int] NOT NULL,
	[ID_Vistavka] [int] NOT NULL,
 CONSTRAINT [PK_Vistavka_Caktusov] PRIMARY KEY CLUSTERED 
(
	[Id_Vistavka_Cactusov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cactus] ON 

INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (2, N'Astrophytum asterias', N'Мексика', 5, 1500, N'Полив раз в 10 дней, любит солнце')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (3, N'Echinopsis pachanoi', N'Перу', 8, 2000, N'Регулярный полив, держать на свету')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (4, N'Lophophora williamsii', N'США', 3, 3000, N'Минимум воды зимой, много света')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (5, N'Ariocarpus retusus', N'Мексика', 15, 5000, N'Редкий полив, любит сухой климат')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (6, N'Mammillaria hahniana', N'Мексика', 10, 1800, N'Поливать умеренно, много света')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (7, N'Gymnocalycium mihanovichii', N'Аргентина', 4, 2200, N'Неприхотлив, полив раз в 7 дней')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (8, N'Opuntia microdasys', N'Мексика', 6, 900, N'Минимум воды, предпочитает сухой климат')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (9, N'Parodia magnifica', N'Бразилия', 7, 1100, N'Умеренный полив, хороший дренаж почвы')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (10, N'Rebutia heliosa', N'Боливия', 12, 2400, N'Редкий полив, любит солнце')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (15, N'hghcg', N' nbnb', 9999, 99, N'mvhm')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (19, N'уколм', N'всдылс', 55, 55, N'фвывв')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (22, N'jhvhjv', N'vvvjh', 55, 666, N'hbh')
INSERT [dbo].[Cactus] ([Cactus_ID], [Vid], [Proishozhdenie], [Vozrast], [Stoimost], [Instrukciya]) VALUES (24, N'hhvfvhj', N'ncdcd', 55, 66, N'hvh')
SET IDENTITY_INSERT [dbo].[Cactus] OFF
GO
SET IDENTITY_INSERT [dbo].[Vistavka] ON 

INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (2, CAST(N'2023-05-20' AS Date), N'Мехико, Мексика', N'Лучший редкий кактус', N'Отличная организация')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (3, CAST(N'2022-11-10' AS Date), N'Лос-Анджелес, США', N'Первое место в категории экзотических', N'Много участников')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (4, CAST(N'2021-09-15' AS Date), N'Феникс, США', N'Награда за оригинальность', N'Интересные экспонаты')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (5, CAST(N'2020-07-18' AS Date), N'Берлин, Германия', N'Лучший старый кактус', N'Много коллекционеров')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (6, CAST(N'2019-03-12' AS Date), N'Буэнос-Айрес, Аргентина', N'Специальный приз жюри', N'Хороший уровень выставки')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (7, CAST(N'2023-06-02' AS Date), N'Токио, Япония', N'Лучший кактус новичка', N'Первая выставка коллекции')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (8, CAST(N'2021-10-22' AS Date), N'Лондон, Великобритани', N'Специальный приз за уход', N'Прекрасное оформление')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (9, CAST(N'2022-04-15' AS Date), N'Прага, Чехия', N'Награда за экзотический кактус', N'Великолепное мероприятие')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (10, CAST(N'2020-12-11' AS Date), N'Сан-Паулу, Бразилия', N'Лучший кактус Южной Америки', N'Отличный уровень коллекций')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (12, CAST(N'2024-09-05' AS Date), N'ц', N'олиыбчои', N'лчыт')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (14, CAST(N'2024-09-06' AS Date), N'лооув', N'ьир', N'ьт ьт ')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (15, CAST(N'2024-09-12' AS Date), N'kbjh', N'hjh', N'jkbkjhb')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (16, CAST(N'2024-09-06' AS Date), N'jbkj', N'nbmjggggggggggg', N'mhvhj')
INSERT [dbo].[Vistavka] ([Vistavka_ID], [Data], [Mesto], [Nagrada], [Koment]) VALUES (17, CAST(N'2024-09-12' AS Date), N'gchg', N'ncgn', N'nbng')
SET IDENTITY_INSERT [dbo].[Vistavka] OFF
GO
SET IDENTITY_INSERT [dbo].[Vistavka_Caktusov] ON 

INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (2, 2, 3)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (4, 4, 3)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (5, 5, 4)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (6, 6, 5)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (7, 7, 6)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (8, 8, 7)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (13, 2, 5)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (15, 2, 9)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (16, 2, 2)
INSERT [dbo].[Vistavka_Caktusov] ([Id_Vistavka_Cactusov], [ID_Cactus], [ID_Vistavka]) VALUES (18, 24, 17)
SET IDENTITY_INSERT [dbo].[Vistavka_Caktusov] OFF
GO
ALTER TABLE [dbo].[Vistavka_Caktusov]  WITH CHECK ADD  CONSTRAINT [FK_Vistavka_Caktusov_Cactus] FOREIGN KEY([ID_Cactus])
REFERENCES [dbo].[Cactus] ([Cactus_ID])
GO
ALTER TABLE [dbo].[Vistavka_Caktusov] CHECK CONSTRAINT [FK_Vistavka_Caktusov_Cactus]
GO
ALTER TABLE [dbo].[Vistavka_Caktusov]  WITH CHECK ADD  CONSTRAINT [FK_Vistavka_Caktusov_Vistavka] FOREIGN KEY([ID_Vistavka])
REFERENCES [dbo].[Vistavka] ([Vistavka_ID])
GO
ALTER TABLE [dbo].[Vistavka_Caktusov] CHECK CONSTRAINT [FK_Vistavka_Caktusov_Vistavka]
GO
USE [master]
GO
ALTER DATABASE [KAKTUS] SET  READ_WRITE 
GO
