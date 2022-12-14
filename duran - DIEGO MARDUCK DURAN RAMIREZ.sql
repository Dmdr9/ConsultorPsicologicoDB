USE [master]
GO
/****** Object:  Database [ConsultorPsicologicoDB]    Script Date: 2/09/2022 11:58:43 ******/
CREATE DATABASE [ConsultorPsicologicoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConsultorPsicologicoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ConsultorPsicologicoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ConsultorPsicologicoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ConsultorPsicologicoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConsultorPsicologicoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET  MULTI_USER 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ConsultorPsicologicoDB', N'ON'
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET QUERY_STORE = OFF
GO
USE [ConsultorPsicologicoDB]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 2/09/2022 11:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Apellidos] [varchar](255) NULL,
	[EstadoCivil] [varchar](255) NULL,
	[Edad] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 2/09/2022 11:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IDEmpleados] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Apellidos] [varchar](255) NULL,
	[Ocupacion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informes]    Script Date: 2/09/2022 11:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informes](
	[IDInforme] [int] IDENTITY(1,1) NOT NULL,
	[NomPsicologo] [varchar](255) NULL,
	[ApePsicologo] [varchar](255) NULL,
	[NomCliente] [varchar](255) NULL,
	[Fecha] [date] NULL,
	[Observaciones] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDInforme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nuevosEmpleados]    Script Date: 2/09/2022 11:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nuevosEmpleados](
	[IDNuevoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Apellidos] [varchar](255) NULL,
	[FechaNacimiento] [date] NULL,
	[Edad] [nvarchar](50) NULL,
	[Curriculum] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNuevoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Psicologo]    Script Date: 2/09/2022 11:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Psicologo](
	[IDPsicologo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Apellidos] [varchar](255) NULL,
	[Edad] [varchar](50) NULL,
	[Genero] [varchar](255) NULL,
	[AreaDeEspecializacion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPsicologo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IDCliente], [Nombre], [Apellidos], [EstadoCivil], [Edad]) VALUES (1, N'Diego', N'Duran Ramirez', N'Soltero', N'18')
INSERT [dbo].[Cliente] ([IDCliente], [Nombre], [Apellidos], [EstadoCivil], [Edad]) VALUES (2, N'Claudia', N'Ramos', N'Soltera', N'19')
INSERT [dbo].[Cliente] ([IDCliente], [Nombre], [Apellidos], [EstadoCivil], [Edad]) VALUES (3, N'Jean', N'Zuñiga', N'Casado', N'18')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IDEmpleados], [Nombre], [Apellidos], [Ocupacion]) VALUES (1, N'Elias', N'Barrientos', N'Seguridad')
INSERT [dbo].[Empleado] ([IDEmpleados], [Nombre], [Apellidos], [Ocupacion]) VALUES (2, N'Jorge', N'Ulario', N'Limpieza')
INSERT [dbo].[Empleado] ([IDEmpleados], [Nombre], [Apellidos], [Ocupacion]) VALUES (3, N'Misshelle', N'Chavez', N'Secretaria')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Informes] ON 

INSERT [dbo].[Informes] ([IDInforme], [NomPsicologo], [ApePsicologo], [NomCliente], [Fecha], [Observaciones]) VALUES (1, N'Eloy', N'Ramirez', N'Diego', CAST(N'2022-08-10' AS Date), N'Observaciones.txt')
INSERT [dbo].[Informes] ([IDInforme], [NomPsicologo], [ApePsicologo], [NomCliente], [Fecha], [Observaciones]) VALUES (2, N'Janet', N'Torres', N'Claudia', CAST(N'2023-12-12' AS Date), N'Observaciones.txt')
INSERT [dbo].[Informes] ([IDInforme], [NomPsicologo], [ApePsicologo], [NomCliente], [Fecha], [Observaciones]) VALUES (3, N'Connie', N'Acosta', N'Jean', CAST(N'2023-10-14' AS Date), N'Observaciones.txt')
SET IDENTITY_INSERT [dbo].[Informes] OFF
GO
SET IDENTITY_INSERT [dbo].[nuevosEmpleados] ON 

INSERT [dbo].[nuevosEmpleados] ([IDNuevoEmpleado], [Nombre], [Apellidos], [FechaNacimiento], [Edad], [Curriculum]) VALUES (1, N'Jhoam', N'Martinez', CAST(N'2002-10-11' AS Date), N'20', N'CV.pdf')
INSERT [dbo].[nuevosEmpleados] ([IDNuevoEmpleado], [Nombre], [Apellidos], [FechaNacimiento], [Edad], [Curriculum]) VALUES (2, N'Juan', N'Rivera', CAST(N'2002-08-15' AS Date), N'20', N'CV.pdf')
INSERT [dbo].[nuevosEmpleados] ([IDNuevoEmpleado], [Nombre], [Apellidos], [FechaNacimiento], [Edad], [Curriculum]) VALUES (3, N'Soll', N'Salazar', CAST(N'2000-09-09' AS Date), N'22', N'CV.pdf')
SET IDENTITY_INSERT [dbo].[nuevosEmpleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Psicologo] ON 

INSERT [dbo].[Psicologo] ([IDPsicologo], [Nombre], [Apellidos], [Edad], [Genero], [AreaDeEspecializacion]) VALUES (1, N'Eloy ', N'Ramirez', N'30', N'Masculino', N'Educativa')
INSERT [dbo].[Psicologo] ([IDPsicologo], [Nombre], [Apellidos], [Edad], [Genero], [AreaDeEspecializacion]) VALUES (2, N'Janet ', N'Torres', N'32', N'Femenino', N'Forense')
INSERT [dbo].[Psicologo] ([IDPsicologo], [Nombre], [Apellidos], [Edad], [Genero], [AreaDeEspecializacion]) VALUES (3, N'Connie', N'Acosta', N'34', N'Femenino', N'Clinica')
SET IDENTITY_INSERT [dbo].[Psicologo] OFF
GO
USE [master]
GO
ALTER DATABASE [ConsultorPsicologicoDB] SET  READ_WRITE 
GO
