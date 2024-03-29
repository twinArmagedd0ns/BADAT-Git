USE [master]
GO
/****** Object:  Database [Cid_Colino_Rodrigo_Memes]    Script Date: 05/02/2024 10:30:51 ******/
CREATE DATABASE [Cid_Colino_Rodrigo_Memes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cid_Colino_Rodrigo_Memes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cid_Colino_Rodrigo_Memes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cid_Colino_Rodrigo_Memes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cid_Colino_Rodrigo_Memes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cid_Colino_Rodrigo_Memes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET  MULTI_USER 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET QUERY_STORE = OFF
GO
USE [Cid_Colino_Rodrigo_Memes]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 05/02/2024 10:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[AlumnoID] [int] NOT NULL,
	[NombreAlumno] [nchar](70) NOT NULL,
	[ApellidoAlumno] [nchar](70) NOT NULL,
	[EmailAlumno] [nchar](70) NOT NULL,
	[Usuario] [nchar](70) NOT NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[AlumnoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 05/02/2024 10:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[AsignaturaID] [int] NOT NULL,
	[NombreAsignatura] [varchar](70) NOT NULL,
	[ProfesorID] [int] NOT NULL,
	[Créditos] [float] NOT NULL,
	[Web] [varchar](70) NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[AsignaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matrícula]    Script Date: 05/02/2024 10:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matrícula](
	[MatrículaID] [int] NOT NULL,
	[AsignaturaID] [int] NOT NULL,
	[AlumnoID] [int] NOT NULL,
	[Convocatorias] [int] NOT NULL,
	[NotaFinal] [float] NULL,
 CONSTRAINT [PK_Matrícula] PRIMARY KEY CLUSTERED 
(
	[MatrículaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meme]    Script Date: 05/02/2024 10:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meme](
	[MemeID] [int] NOT NULL,
	[MatrículaID] [int] NOT NULL,
	[TítuloMeme] [varchar](70) NOT NULL,
	[Nota] [nchar](1) NOT NULL,
	[Rating] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 05/02/2024 10:30:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[ProfesorID] [int] NOT NULL,
	[NombreProfesor] [nchar](70) NOT NULL,
	[ApellidoProfesor] [nchar](70) NOT NULL,
	[EmailProfesor] [nchar](70) NOT NULL,
	[DireccionProfesor] [nchar](70) NOT NULL,
	[Antigüedad] [int] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (1, N'Gannon                                                                ', N'Shay                                                                  ', N'gshay0@odnoklassniki.ru                                               ', N'gshay0                                                                ', 28)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (2, N'Ros                                                                   ', N'Cobden                                                                ', N'rcobden1@blogtalkradio.com                                            ', N'rcobden1                                                              ', 26)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (3, N'Cordie                                                                ', N'Geere                                                                 ', N'cgeere2@joomla.org                                                    ', N'cgeere2                                                               ', 30)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (4, N'Belia                                                                 ', N'Goodhand                                                              ', N'bgoodhand3@senate.gov                                                 ', N'bgoodhand3                                                            ', 18)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (5, N'Edna                                                                  ', N'Creus                                                                 ', N'ecreus4@ted.com                                                       ', N'ecreus4                                                               ', 62)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (6, N'Letty                                                                 ', N'Unstead                                                               ', N'lunstead5@homestead.com                                               ', N'lunstead5                                                             ', 50)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (7, N'Tonnie                                                                ', N'Metrick                                                               ', N'tmetrick6@mashable.com                                                ', N'tmetrick6                                                             ', 32)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (8, N'Zorah                                                                 ', N'Ashlee                                                                ', N'zashlee7@nasa.gov                                                     ', N'zashlee7                                                              ', 25)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (9, N'Isadore                                                               ', N'Hadfield                                                              ', N'ihadfield8@feedburner.com                                             ', N'ihadfield8                                                            ', 40)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (10, N'Hollie                                                                ', N'Lorek                                                                 ', N'hlorek9@wordpress.org                                                 ', N'hlorek9                                                               ', 46)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (11, N'Fernando                                                              ', N'Alonso                                                                ', N'datos@fernandoalonso.com                                              ', N'elnano33                                                              ', 41)
INSERT [dbo].[Alumno] ([AlumnoID], [NombreAlumno], [ApellidoAlumno], [EmailAlumno], [Usuario], [Edad]) VALUES (12, N'Terry                                                                 ', N'Pratchet                                                              ', N'footnote                                                              ', N'@discworld@penguinrandomhouse.uk                                      ', 66)
GO
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (301, N'Introduction to Memeology', 2, 4.5, N'https://jeffw.xyz/~wang/mem301/')
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (302, N'Memes en castellano', 11, 6, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (303, N'Meme Appreciation', 5, 3, N'https://jeffw.xyz/~wang/mem303/')
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (304, N'Memes en la España visigoda', 12, 10, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (321, N'History of Memes to 2012', 6, 1.5, N'https://jeffw.xyz/~wang/mem321/')
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (322, N'History of Memes since 2012', 3, 2, N'https://jeffw.xyz/~wang/mem322/')
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (331, N'Meme Economics', 10, 5, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (332, N'Meme Epidemiology', 9, 7.5, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (333, N'Meme Evolution', 1, 8, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (334, N'Meme Psychology', 4, 5, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (341, N'Advanced Meme Economics', 7, 3.5, NULL)
INSERT [dbo].[Asignatura] ([AsignaturaID], [NombreAsignatura], [ProfesorID], [Créditos], [Web]) VALUES (358, N'Ethics and Morality in Memeology', 8, 6, NULL)
GO
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (1, 301, 4, 1, 8)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (2, 358, 3, 1, 7.2)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (3, 303, 5, 2, NULL)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (4, 321, 1, 2, 5.3)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (5, 331, 10, 1, 8.7)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (6, 334, 9, 2, 6.7)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (7, 333, 6, 2, 9.3)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (8, 332, 2, 1, 9.5)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (9, 341, 7, 2, NULL)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (10, 322, 8, 3, 5)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (11, 302, 11, 1, NULL)
INSERT [dbo].[Matrícula] ([MatrículaID], [AsignaturaID], [AlumnoID], [Convocatorias], [NotaFinal]) VALUES (12, 304, 12, 1, NULL)
GO
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (1, 10, N'Programadores revisando código', N'F', 9.2)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (2, 9, N'Padres programadores', N'D', 8.5)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (3, 3, N'Diseñadores vs programadores', N'C', 6.3)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (4, 7, N'Estoy probando mi código o él me pone a prueba', N'B', 5.2)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (5, 5, N'Ella no quería estar en mi JOIN', N'F', 8.5)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (6, 6, N'Este código no tiene sentido', N'A', 9.7)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (7, 4, N'Disfraz de servidor web', N'D', 8.8)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (8, 2, N'6 horas de debugging te ahorran 5 minutos de documentación', N'B', 6.32)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (9, 1, N'"1" == 1 es cierto, "1" === 1 es falso', N'A', 5)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (10, 8, N'Junior developer vs Senior developer', N'C', 2.3)
INSERT [dbo].[Meme] ([MemeID], [MatrículaID], [TítuloMeme], [Nota], [Rating]) VALUES (11, 11, N'Ándate por lo segao', N'A', 8.2)
GO
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (1, N'Helene                                                                ', N'Twiddy                                                                ', N'htwiddy0@livejournal.com                                              ', N'93051 Stuart Lane                                                     ', 1)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (2, N'Far                                                                   ', N'MacLaughlin                                                           ', N'fmaclaughlin1@techcrunch.com                                          ', N'8017 Gale Crossing                                                    ', 2)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (3, N'Rudolph                                                               ', N'Hallen                                                                ', N'rhallen2@discovery.com                                                ', N'810 Springs Hill                                                      ', 1)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (4, N'Kathrine                                                              ', N'Towhey                                                                ', N'ktowhey3@globo.com                                                    ', N'0 Fairview Court                                                      ', 3)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (5, N'Wolfie                                                                ', N'Vesty                                                                 ', N'wvesty4@macromedia.com                                                ', N'7 Longview Avenue                                                     ', 1)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (6, N'Jarrid                                                                ', N'Lawn                                                                  ', N'jlawn5@time.com                                                       ', N'4 Melrose Alley                                                       ', 2)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (7, N'Tabby                                                                 ', N'Saby                                                                  ', N'tsaby6@phoca.cz                                                       ', N'09672 Bunker Hill Lane                                                ', 1)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (8, N'Viva                                                                  ', N'Teanby                                                                ', N'vteanby7@dedecms.com                                                  ', N'12 Walton Street                                                      ', 3)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (9, N'Julie                                                                 ', N'Jeffries                                                              ', N'jjeffries8@ucsd.edu                                                   ', N'18 Pennsylvania Street                                                ', 2)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (10, N'Dionysus                                                              ', N'Gosland                                                               ', N'dgosland9@japanpost.jp                                                ', N'023 Butterfield Court                                                 ', 1)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (11, N'Jose                                                                  ', N'Coronado                                                              ', N'josecoronita@birra.es                                                 ', N'Cra de S. Jerónimo, s/n, 28071 Madrid                                 ', 3)
INSERT [dbo].[Profesor] ([ProfesorID], [NombreProfesor], [ApellidoProfesor], [EmailProfesor], [DireccionProfesor], [Antigüedad]) VALUES (12, N'Chindasvinto                                                          ', N'García                                                                ', N'chindasvinto@visi.tol                                                 ', N'Toledo                                                                ', 50)
GO
ALTER TABLE [dbo].[Matrícula] ADD  CONSTRAINT [DF_Matrícula_Convocatorias]  DEFAULT ((1)) FOR [Convocatorias]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Profesor_ProfesorID] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesor] ([ProfesorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Profesor_ProfesorID]
GO
ALTER TABLE [dbo].[Matrícula]  WITH CHECK ADD  CONSTRAINT [FK_Matrícula_Alumno_AlumnoID] FOREIGN KEY([AlumnoID])
REFERENCES [dbo].[Alumno] ([AlumnoID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matrícula] CHECK CONSTRAINT [FK_Matrícula_Alumno_AlumnoID]
GO
ALTER TABLE [dbo].[Matrícula]  WITH CHECK ADD  CONSTRAINT [FK_Matrícula_Asignatura_AsignaturaID] FOREIGN KEY([AsignaturaID])
REFERENCES [dbo].[Asignatura] ([AsignaturaID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matrícula] CHECK CONSTRAINT [FK_Matrícula_Asignatura_AsignaturaID]
GO
ALTER TABLE [dbo].[Meme]  WITH CHECK ADD  CONSTRAINT [FK_Meme_Matrícula_MatrículaID] FOREIGN KEY([MatrículaID])
REFERENCES [dbo].[Matrícula] ([MatrículaID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meme] CHECK CONSTRAINT [FK_Meme_Matrícula_MatrículaID]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [CK_Alumno_AlumnoID] CHECK  (([AlumnoID]>(0)))
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [CK_Alumno_AlumnoID]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [CK_Alumno_Edad] CHECK  (([Edad]>=(16) AND [Edad]<=(100)))
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [CK_Alumno_Edad]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [CK_Asignatura_AsignaturaID] CHECK  (([AsignaturaID]>(0)))
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [CK_Asignatura_AsignaturaID]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [CK_Asignatura_Créditos] CHECK  (([Créditos]>(0)))
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [CK_Asignatura_Créditos]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [CK_Asignatura_NombreAsignatura] CHECK  (([NombreAsignatura] like '%Meme%'))
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [CK_Asignatura_NombreAsignatura]
GO
ALTER TABLE [dbo].[Matrícula]  WITH CHECK ADD  CONSTRAINT [CK_Matrícula_Convocatorias] CHECK  (([Convocatorias]>(0)))
GO
ALTER TABLE [dbo].[Matrícula] CHECK CONSTRAINT [CK_Matrícula_Convocatorias]
GO
ALTER TABLE [dbo].[Matrícula]  WITH CHECK ADD  CONSTRAINT [CK_Matrícula_MatrículaID] CHECK  (([MatrículaID]>(0)))
GO
ALTER TABLE [dbo].[Matrícula] CHECK CONSTRAINT [CK_Matrícula_MatrículaID]
GO
ALTER TABLE [dbo].[Matrícula]  WITH CHECK ADD  CONSTRAINT [CK_Matrícula_NotaFinal] CHECK  (([NotaFinal]>=(0) AND [NotaFinal]<=(10)))
GO
ALTER TABLE [dbo].[Matrícula] CHECK CONSTRAINT [CK_Matrícula_NotaFinal]
GO
ALTER TABLE [dbo].[Meme]  WITH CHECK ADD  CONSTRAINT [CK_Meme_MemeID] CHECK  (([MemeID]>(0)))
GO
ALTER TABLE [dbo].[Meme] CHECK CONSTRAINT [CK_Meme_MemeID]
GO
ALTER TABLE [dbo].[Meme]  WITH CHECK ADD  CONSTRAINT [CK_Meme_Nota] CHECK  (([Nota] like '[ABCDEF]'))
GO
ALTER TABLE [dbo].[Meme] CHECK CONSTRAINT [CK_Meme_Nota]
GO
ALTER TABLE [dbo].[Meme]  WITH CHECK ADD  CONSTRAINT [CK_Meme_Rating] CHECK  (([Rating]>=(0) AND [Rating]<=(10)))
GO
ALTER TABLE [dbo].[Meme] CHECK CONSTRAINT [CK_Meme_Rating]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [CK_Profesor_Antigüedad] CHECK  (([Antigüedad]>(0)))
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [CK_Profesor_Antigüedad]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [CK_Profesor_ProfesorID] CHECK  (([ProfesorID]>(0)))
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [CK_Profesor_ProfesorID]
GO
USE [master]
GO
ALTER DATABASE [Cid_Colino_Rodrigo_Memes] SET  READ_WRITE 
GO
