USE [master]
GO
/****** Object:  Database [BolsaTrabajo]    Script Date: 09/01/2013 10:12:01 ******/
CREATE DATABASE [BolsaTrabajo] ON  PRIMARY 
( NAME = N'BolsaTrabajo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BolsaTrabajo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BolsaTrabajo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BolsaTrabajo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BolsaTrabajo] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BolsaTrabajo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ARITHABORT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BolsaTrabajo] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BolsaTrabajo] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BolsaTrabajo] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BolsaTrabajo] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET  DISABLE_BROKER
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BolsaTrabajo] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BolsaTrabajo] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BolsaTrabajo] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BolsaTrabajo] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BolsaTrabajo] SET  READ_WRITE
GO
ALTER DATABASE [BolsaTrabajo] SET RECOVERY FULL
GO
ALTER DATABASE [BolsaTrabajo] SET  MULTI_USER
GO
ALTER DATABASE [BolsaTrabajo] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BolsaTrabajo] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BolsaTrabajo', N'ON'
GO
USE [BolsaTrabajo]
GO
/****** Object:  Table [dbo].[IATTipoUsuario]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoUsuario](
	[Id_TipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoUsuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IATTipoUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_TipoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoTrabajo]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoTrabajo](
	[Id_TipoTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoTrabajo] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TipoServicio] PRIMARY KEY CLUSTERED 
(
	[Id_TipoTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoGuiaUso]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoGuiaUso](
	[Id_TipoGuiaUso] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoGuiaUso] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IATTipoGuiaUso] PRIMARY KEY CLUSTERED 
(
	[Id_TipoGuiaUso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoContacto]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoContacto](
	[Id_TipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoContacto] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATTipoContacto] PRIMARY KEY CLUSTERED 
(
	[Id_TipoContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATProvincia]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATProvincia](
	[Id_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Provincia] [varchar](30) NOT NULL,
 CONSTRAINT [PK_IATProvincia] PRIMARY KEY CLUSTERED 
(
	[Id_Provincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATNoticia]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATNoticia](
	[Id_Noticia] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[Dsc_Noticia] [varchar](500) NOT NULL,
 CONSTRAINT [PK_IATNoticia] PRIMARY KEY CLUSTERED 
(
	[Id_Noticia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATIdioma]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATIdioma](
	[Id_Idioma] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Idioma] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATIdioma] PRIMARY KEY CLUSTERED 
(
	[Id_Idioma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATCategoriaTrabajo]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCategoriaTrabajo](
	[Id_CategoriaTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_CategoriaTrabajo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CategoriaServicio] PRIMARY KEY CLUSTERED 
(
	[Id_CategoriaTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATArticulo]    Script Date: 09/01/2013 10:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATArticulo](
	[Id_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[RutaArticulo] [varchar](200) NOT NULL,
 CONSTRAINT [PK_IATArticulo] PRIMARY KEY CLUSTERED 
(
	[Id_Articulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATNoticia'
-- basado en la llave primaria.
-- Recibe: @iId_Noticia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_SeleccionarUno]
	@iId_Noticia int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATNoticia]
WHERE
	[Id_Noticia] = @iId_Noticia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATNoticia'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATNoticia]
ORDER BY 
	[Id_Noticia] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATNoticia'
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sDsc_Noticia varchar(500)
-- Retorna: @iId_Noticia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_Insertar]
	@sTitulo varchar(100),
	@sDsc_Noticia varchar(500),
	@iId_Noticia int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATNoticia]
(
	[Titulo],
	[Dsc_Noticia]
)
VALUES
(
	@sTitulo,
	@sDsc_Noticia
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Noticia=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATNoticia'
-- utilizando la llave primaria. 
-- Recibe: @iId_Noticia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_Eliminar]
	@iId_Noticia int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATNoticia]
WHERE
	[Id_Noticia] = @iId_Noticia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATNoticia'
-- Recibe: @iId_Noticia int
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sDsc_Noticia varchar(500)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_Buscar]
	@iId_Noticia int,
	@sTitulo varchar(100),
	@sDsc_Noticia varchar(500),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATNoticia] 
 WHERE 
	(@iId_Noticia IS NULL OR [Id_Noticia] = @iId_Noticia) AND 
	(@sTitulo IS NULL OR [Titulo] LIKE @sTitulo) AND 
	(@sDsc_Noticia IS NULL OR [Dsc_Noticia] LIKE @sDsc_Noticia)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATNoticia_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATNoticia'
-- Recibe: @iId_Noticia int
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sDsc_Noticia varchar(500)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATNoticia_Actualizar]
	@iId_Noticia int,
	@sTitulo varchar(100),
	@sDsc_Noticia varchar(500),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATNoticia]
SET 
	[Titulo] = @sTitulo,
	[Dsc_Noticia] = @sDsc_Noticia
WHERE
	[Id_Noticia] = @iId_Noticia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATProvincia'
-- basado en la llave primaria.
-- Recibe: @iId_Provincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_SeleccionarUno]
	@iId_Provincia int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATProvincia]
WHERE
	[Id_Provincia] = @iId_Provincia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATProvincia'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATProvincia]
ORDER BY 
	[Id_Provincia] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATProvincia'
-- Recibe: @sNom_Provincia varchar(30)
-- Retorna: @iId_Provincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_Insertar]
	@sNom_Provincia varchar(30),
	@iId_Provincia int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATProvincia]
(
	[Nom_Provincia]
)
VALUES
(
	@sNom_Provincia
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Provincia=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATProvincia'
-- utilizando la llave primaria. 
-- Recibe: @iId_Provincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_Eliminar]
	@iId_Provincia int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATProvincia]
WHERE
	[Id_Provincia] = @iId_Provincia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATProvincia'
-- Recibe: @iId_Provincia int
-- Recibe: @sNom_Provincia varchar(30)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_Buscar]
	@iId_Provincia int,
	@sNom_Provincia varchar(30),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATProvincia] 
 WHERE 
	(@iId_Provincia IS NULL OR [Id_Provincia] = @iId_Provincia) AND 
	(@sNom_Provincia IS NULL OR [Nom_Provincia] LIKE @sNom_Provincia)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATProvincia_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATProvincia'
-- Recibe: @iId_Provincia int
-- Recibe: @sNom_Provincia varchar(30)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATProvincia_Actualizar]
	@iId_Provincia int,
	@sNom_Provincia varchar(30),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATProvincia]
SET 
	[Nom_Provincia] = @sNom_Provincia
WHERE
	[Id_Provincia] = @iId_Provincia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATTipoUsuario'
-- basado en la llave primaria.
-- Recibe: @iId_TipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_SeleccionarUno]
	@iId_TipoUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATTipoUsuario]
WHERE
	[Id_TipoUsuario] = @iId_TipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATTipoUsuario'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATTipoUsuario]
ORDER BY 
	[Id_TipoUsuario] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATTipoUsuario'
-- Recibe: @sNom_TipoUsuario varchar(20)
-- Retorna: @iId_TipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_Insertar]
	@sNom_TipoUsuario varchar(20),
	@iId_TipoUsuario int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATTipoUsuario]
(
	[Nom_TipoUsuario]
)
VALUES
(
	@sNom_TipoUsuario
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_TipoUsuario=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATTipoUsuario'
-- utilizando la llave primaria. 
-- Recibe: @iId_TipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_Eliminar]
	@iId_TipoUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATTipoUsuario]
WHERE
	[Id_TipoUsuario] = @iId_TipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATTipoUsuario'
-- Recibe: @iId_TipoUsuario int
-- Recibe: @sNom_TipoUsuario varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_Buscar]
	@iId_TipoUsuario int,
	@sNom_TipoUsuario varchar(20),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATTipoUsuario] 
 WHERE 
	(@iId_TipoUsuario IS NULL OR [Id_TipoUsuario] = @iId_TipoUsuario) AND 
	(@sNom_TipoUsuario IS NULL OR [Nom_TipoUsuario] LIKE @sNom_TipoUsuario)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoUsuario_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATTipoUsuario'
-- Recibe: @iId_TipoUsuario int
-- Recibe: @sNom_TipoUsuario varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoUsuario_Actualizar]
	@iId_TipoUsuario int,
	@sNom_TipoUsuario varchar(20),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATTipoUsuario]
SET 
	[Nom_TipoUsuario] = @sNom_TipoUsuario
WHERE
	[Id_TipoUsuario] = @iId_TipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATTipoTrabajo'
-- basado en la llave primaria.
-- Recibe: @iId_TipoTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_SeleccionarUno]
	@iId_TipoTrabajo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATTipoTrabajo]
WHERE
	[Id_TipoTrabajo] = @iId_TipoTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATTipoTrabajo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATTipoTrabajo]
ORDER BY 
	[Id_TipoTrabajo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATTipoTrabajo'
-- Recibe: @sNom_TipoTrabajo varchar(15)
-- Retorna: @iId_TipoTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_Insertar]
	@sNom_TipoTrabajo varchar(15),
	@iId_TipoTrabajo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATTipoTrabajo]
(
	[Nom_TipoTrabajo]
)
VALUES
(
	@sNom_TipoTrabajo
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_TipoTrabajo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATTipoTrabajo'
-- utilizando la llave primaria. 
-- Recibe: @iId_TipoTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_Eliminar]
	@iId_TipoTrabajo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATTipoTrabajo]
WHERE
	[Id_TipoTrabajo] = @iId_TipoTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATTipoTrabajo'
-- Recibe: @iId_TipoTrabajo int
-- Recibe: @sNom_TipoTrabajo varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_Buscar]
	@iId_TipoTrabajo int,
	@sNom_TipoTrabajo varchar(15),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATTipoTrabajo] 
 WHERE 
	(@iId_TipoTrabajo IS NULL OR [Id_TipoTrabajo] = @iId_TipoTrabajo) AND 
	(@sNom_TipoTrabajo IS NULL OR [Nom_TipoTrabajo] LIKE @sNom_TipoTrabajo)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoTrabajo_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATTipoTrabajo'
-- Recibe: @iId_TipoTrabajo int
-- Recibe: @sNom_TipoTrabajo varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoTrabajo_Actualizar]
	@iId_TipoTrabajo int,
	@sNom_TipoTrabajo varchar(15),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATTipoTrabajo]
SET 
	[Nom_TipoTrabajo] = @sNom_TipoTrabajo
WHERE
	[Id_TipoTrabajo] = @iId_TipoTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATTipoGuiaUso'
-- basado en la llave primaria.
-- Recibe: @iId_TipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_SeleccionarUno]
	@iId_TipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATTipoGuiaUso]
WHERE
	[Id_TipoGuiaUso] = @iId_TipoGuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATTipoGuiaUso'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATTipoGuiaUso]
ORDER BY 
	[Id_TipoGuiaUso] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATTipoGuiaUso'
-- Recibe: @sNom_TipoGuiaUso varchar(20)
-- Retorna: @iId_TipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_Insertar]
	@sNom_TipoGuiaUso varchar(20),
	@iId_TipoGuiaUso int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATTipoGuiaUso]
(
	[Nom_TipoGuiaUso]
)
VALUES
(
	@sNom_TipoGuiaUso
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_TipoGuiaUso=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATTipoGuiaUso'
-- utilizando la llave primaria. 
-- Recibe: @iId_TipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_Eliminar]
	@iId_TipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATTipoGuiaUso]
WHERE
	[Id_TipoGuiaUso] = @iId_TipoGuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATTipoGuiaUso'
-- Recibe: @iId_TipoGuiaUso int
-- Recibe: @sNom_TipoGuiaUso varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_Buscar]
	@iId_TipoGuiaUso int,
	@sNom_TipoGuiaUso varchar(20),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATTipoGuiaUso] 
 WHERE 
	(@iId_TipoGuiaUso IS NULL OR [Id_TipoGuiaUso] = @iId_TipoGuiaUso) AND 
	(@sNom_TipoGuiaUso IS NULL OR [Nom_TipoGuiaUso] LIKE @sNom_TipoGuiaUso)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoGuiaUso_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATTipoGuiaUso'
-- Recibe: @iId_TipoGuiaUso int
-- Recibe: @sNom_TipoGuiaUso varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoGuiaUso_Actualizar]
	@iId_TipoGuiaUso int,
	@sNom_TipoGuiaUso varchar(20),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATTipoGuiaUso]
SET 
	[Nom_TipoGuiaUso] = @sNom_TipoGuiaUso
WHERE
	[Id_TipoGuiaUso] = @iId_TipoGuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATTipoContacto'
-- basado en la llave primaria.
-- Recibe: @iId_TipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_SeleccionarUno]
	@iId_TipoContacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATTipoContacto]
WHERE
	[Id_TipoContacto] = @iId_TipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATTipoContacto'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATTipoContacto]
ORDER BY 
	[Id_TipoContacto] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATTipoContacto'
-- Recibe: @sNom_TipoContacto varchar(15)
-- Retorna: @iId_TipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_Insertar]
	@sNom_TipoContacto varchar(15),
	@iId_TipoContacto int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATTipoContacto]
(
	[Nom_TipoContacto]
)
VALUES
(
	@sNom_TipoContacto
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_TipoContacto=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATTipoContacto'
-- utilizando la llave primaria. 
-- Recibe: @iId_TipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_Eliminar]
	@iId_TipoContacto int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATTipoContacto]
WHERE
	[Id_TipoContacto] = @iId_TipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATTipoContacto'
-- Recibe: @iId_TipoContacto int
-- Recibe: @sNom_TipoContacto varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_Buscar]
	@iId_TipoContacto int,
	@sNom_TipoContacto varchar(15),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATTipoContacto] 
 WHERE 
	(@iId_TipoContacto IS NULL OR [Id_TipoContacto] = @iId_TipoContacto) AND 
	(@sNom_TipoContacto IS NULL OR [Nom_TipoContacto] LIKE @sNom_TipoContacto)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATTipoContacto_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATTipoContacto'
-- Recibe: @iId_TipoContacto int
-- Recibe: @sNom_TipoContacto varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATTipoContacto_Actualizar]
	@iId_TipoContacto int,
	@sNom_TipoContacto varchar(15),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATTipoContacto]
SET 
	[Nom_TipoContacto] = @sNom_TipoContacto
WHERE
	[Id_TipoContacto] = @iId_TipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATCanton]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCanton](
	[Id_Canton] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Canton] [varchar](30) NOT NULL,
	[FK_IdProvincia] [int] NOT NULL,
 CONSTRAINT [PK_IATCanton] PRIMARY KEY CLUSTERED 
(
	[Id_Canton] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATGuiaUso]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATGuiaUso](
	[Id_GuiaUso] [int] IDENTITY(1,1) NOT NULL,
	[RutaGuia] [varchar](200) NOT NULL,
	[FK_IdTipoGuiaUso] [int] NOT NULL,
 CONSTRAINT [PK_IATGuiaUso] PRIMARY KEY CLUSTERED 
(
	[Id_GuiaUso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATArticulo'
-- basado en la llave primaria.
-- Recibe: @iId_Articulo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_SeleccionarUno]
	@iId_Articulo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATArticulo]
WHERE
	[Id_Articulo] = @iId_Articulo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATArticulo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATArticulo]
ORDER BY 
	[Id_Articulo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATArticulo'
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sRutaArticulo varchar(200)
-- Retorna: @iId_Articulo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_Insertar]
	@sTitulo varchar(100),
	@sRutaArticulo varchar(200),
	@iId_Articulo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATArticulo]
(
	[Titulo],
	[RutaArticulo]
)
VALUES
(
	@sTitulo,
	@sRutaArticulo
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Articulo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATArticulo'
-- utilizando la llave primaria. 
-- Recibe: @iId_Articulo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_Eliminar]
	@iId_Articulo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATArticulo]
WHERE
	[Id_Articulo] = @iId_Articulo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATArticulo'
-- Recibe: @iId_Articulo int
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sRutaArticulo varchar(200)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_Buscar]
	@iId_Articulo int,
	@sTitulo varchar(100),
	@sRutaArticulo varchar(200),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATArticulo] 
 WHERE 
	(@iId_Articulo IS NULL OR [Id_Articulo] = @iId_Articulo) AND 
	(@sTitulo IS NULL OR [Titulo] LIKE @sTitulo) AND 
	(@sRutaArticulo IS NULL OR [RutaArticulo] LIKE @sRutaArticulo)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATArticulo_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATArticulo'
-- Recibe: @iId_Articulo int
-- Recibe: @sTitulo varchar(100)
-- Recibe: @sRutaArticulo varchar(200)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATArticulo_Actualizar]
	@iId_Articulo int,
	@sTitulo varchar(100),
	@sRutaArticulo varchar(200),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATArticulo]
SET 
	[Titulo] = @sTitulo,
	[RutaArticulo] = @sRutaArticulo
WHERE
	[Id_Articulo] = @iId_Articulo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATUsuario]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATUsuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Usuario] [varchar](30) NOT NULL,
	[Contrasenna] [varchar](50) NOT NULL,
	[Indicio_Contrasenna] [varchar](50) NOT NULL,
	[FK_IdTipoUsuario] [int] NOT NULL,
	[Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_IATUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATCategoriaTrabajo'
-- basado en la llave primaria.
-- Recibe: @iId_CategoriaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_SeleccionarUno]
	@iId_CategoriaTrabajo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATCategoriaTrabajo]
WHERE
	[Id_CategoriaTrabajo] = @iId_CategoriaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATCategoriaTrabajo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATCategoriaTrabajo]
ORDER BY 
	[Id_CategoriaTrabajo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATCategoriaTrabajo'
-- Recibe: @sNom_CategoriaTrabajo varchar(20)
-- Retorna: @iId_CategoriaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_Insertar]
	@sNom_CategoriaTrabajo varchar(20),
	@iId_CategoriaTrabajo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATCategoriaTrabajo]
(
	[Nom_CategoriaTrabajo]
)
VALUES
(
	@sNom_CategoriaTrabajo
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_CategoriaTrabajo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATCategoriaTrabajo'
-- utilizando la llave primaria. 
-- Recibe: @iId_CategoriaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_Eliminar]
	@iId_CategoriaTrabajo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATCategoriaTrabajo]
WHERE
	[Id_CategoriaTrabajo] = @iId_CategoriaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATCategoriaTrabajo'
-- Recibe: @iId_CategoriaTrabajo int
-- Recibe: @sNom_CategoriaTrabajo varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_Buscar]
	@iId_CategoriaTrabajo int,
	@sNom_CategoriaTrabajo varchar(20),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATCategoriaTrabajo] 
 WHERE 
	(@iId_CategoriaTrabajo IS NULL OR [Id_CategoriaTrabajo] = @iId_CategoriaTrabajo) AND 
	(@sNom_CategoriaTrabajo IS NULL OR [Nom_CategoriaTrabajo] LIKE @sNom_CategoriaTrabajo)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCategoriaTrabajo_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATCategoriaTrabajo'
-- Recibe: @iId_CategoriaTrabajo int
-- Recibe: @sNom_CategoriaTrabajo varchar(20)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCategoriaTrabajo_Actualizar]
	@iId_CategoriaTrabajo int,
	@sNom_CategoriaTrabajo varchar(20),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCategoriaTrabajo]
SET 
	[Nom_CategoriaTrabajo] = @sNom_CategoriaTrabajo
WHERE
	[Id_CategoriaTrabajo] = @iId_CategoriaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATIdioma'
-- basado en la llave primaria.
-- Recibe: @iId_Idioma int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_SeleccionarUno]
	@iId_Idioma int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATIdioma]
WHERE
	[Id_Idioma] = @iId_Idioma


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATIdioma'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATIdioma]
ORDER BY 
	[Id_Idioma] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATIdioma'
-- Recibe: @sNom_Idioma varchar(15)
-- Retorna: @iId_Idioma int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_Insertar]
	@sNom_Idioma varchar(15),
	@iId_Idioma int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATIdioma]
(
	[Nom_Idioma]
)
VALUES
(
	@sNom_Idioma
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Idioma=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATIdioma'
-- utilizando la llave primaria. 
-- Recibe: @iId_Idioma int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_Eliminar]
	@iId_Idioma int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATIdioma]
WHERE
	[Id_Idioma] = @iId_Idioma


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATIdioma'
-- Recibe: @iId_Idioma int
-- Recibe: @sNom_Idioma varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_Buscar]
	@iId_Idioma int,
	@sNom_Idioma varchar(15),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATIdioma] 
 WHERE 
	(@iId_Idioma IS NULL OR [Id_Idioma] = @iId_Idioma) AND 
	(@sNom_Idioma IS NULL OR [Nom_Idioma] LIKE @sNom_Idioma)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdioma_Actualizar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATIdioma'
-- Recibe: @iId_Idioma int
-- Recibe: @sNom_Idioma varchar(15)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdioma_Actualizar]
	@iId_Idioma int,
	@sNom_Idioma varchar(15),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATIdioma]
SET 
	[Nom_Idioma] = @sNom_Idioma
WHERE
	[Id_Idioma] = @iId_Idioma


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_SeleccionarUno]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATGuiaUso'
-- basado en la llave primaria.
-- Recibe: @iId_GuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_SeleccionarUno]
	@iId_GuiaUso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATGuiaUso]
WHERE
	[Id_GuiaUso] = @iId_GuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_SeleccionarTodos_Con_FK_IdTipoGuiaUso_FK]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATGuiaUso'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_SeleccionarTodos_Con_FK_IdTipoGuiaUso_FK]
	@iFK_IdTipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATGuiaUso]
WHERE
	[FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_SeleccionarTodos]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATGuiaUso'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATGuiaUso]
ORDER BY 
	[Id_GuiaUso] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_Insertar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATGuiaUso'
-- Recibe: @sRutaGuia varchar(200)
-- Recibe: @iFK_IdTipoGuiaUso int
-- Retorna: @iId_GuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_Insertar]
	@sRutaGuia varchar(200),
	@iFK_IdTipoGuiaUso int,
	@iId_GuiaUso int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATGuiaUso]
(
	[RutaGuia],
	[FK_IdTipoGuiaUso]
)
VALUES
(
	@sRutaGuia,
	@iFK_IdTipoGuiaUso
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_GuiaUso=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_EliminarTodo_FK_FK_IdTipoGuiaUso]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATGuiaUso'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_EliminarTodo_FK_FK_IdTipoGuiaUso]
	@iFK_IdTipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATGuiaUso]
WHERE
	[FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_Eliminar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATGuiaUso'
-- utilizando la llave primaria. 
-- Recibe: @iId_GuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_Eliminar]
	@iId_GuiaUso int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATGuiaUso]
WHERE
	[Id_GuiaUso] = @iId_GuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_Buscar]    Script Date: 09/01/2013 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATGuiaUso'
-- Recibe: @iId_GuiaUso int
-- Recibe: @sRutaGuia varchar(200)
-- Recibe: @iFK_IdTipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_Buscar]
	@iId_GuiaUso int,
	@sRutaGuia varchar(200),
	@iFK_IdTipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATGuiaUso] 
 WHERE 
	(@iId_GuiaUso IS NULL OR [Id_GuiaUso] = @iId_GuiaUso) AND 
	(@sRutaGuia IS NULL OR [RutaGuia] LIKE @sRutaGuia) AND 
	(@iFK_IdTipoGuiaUso IS NULL OR [FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUso)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_ActualizarTodos_Con_FK_IdTipoGuiaUso_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATGuiaUso'.
-- Actualiza el campo [FK_IdTipoGuiaUso] con el valor anterior de@iFK_IdTipoGuiaUso  al valor @iFK_IdTipoGuiaUso
-- Recibe: @iFK_IdTipoGuiaUso int
-- Recibe: @iFK_IdTipoGuiaUsoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_ActualizarTodos_Con_FK_IdTipoGuiaUso_FK]
	@iFK_IdTipoGuiaUso int,
	@iFK_IdTipoGuiaUsoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATGuiaUso]
SET
	[FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUso
WHERE
	[FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUsoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATGuiaUso_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATGuiaUso'
-- Recibe: @iId_GuiaUso int
-- Recibe: @sRutaGuia varchar(200)
-- Recibe: @iFK_IdTipoGuiaUso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATGuiaUso_Actualizar]
	@iId_GuiaUso int,
	@sRutaGuia varchar(200),
	@iFK_IdTipoGuiaUso int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATGuiaUso]
SET 
	[RutaGuia] = @sRutaGuia,
	[FK_IdTipoGuiaUso] = @iFK_IdTipoGuiaUso
WHERE
	[Id_GuiaUso] = @iId_GuiaUso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATCanton'
-- basado en la llave primaria.
-- Recibe: @iId_Canton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_SeleccionarUno]
	@iId_Canton int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATCanton]
WHERE
	[Id_Canton] = @iId_Canton


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_SeleccionarTodos_Con_FK_IdProvincia_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATCanton'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdProvincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_SeleccionarTodos_Con_FK_IdProvincia_FK]
	@iFK_IdProvincia int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATCanton]
WHERE
	[FK_IdProvincia] = @iFK_IdProvincia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATCanton'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATCanton]
ORDER BY 
	[Id_Canton] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATCanton'
-- Recibe: @sNom_Canton varchar(30)
-- Recibe: @iFK_IdProvincia int
-- Retorna: @iId_Canton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_Insertar]
	@sNom_Canton varchar(30),
	@iFK_IdProvincia int,
	@iId_Canton int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATCanton]
(
	[Nom_Canton],
	[FK_IdProvincia]
)
VALUES
(
	@sNom_Canton,
	@iFK_IdProvincia
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Canton=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_EliminarTodo_FK_FK_IdProvincia]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATCanton'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdProvincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_EliminarTodo_FK_FK_IdProvincia]
	@iFK_IdProvincia int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATCanton]
WHERE
	[FK_IdProvincia] = @iFK_IdProvincia


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATCanton'
-- utilizando la llave primaria. 
-- Recibe: @iId_Canton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_Eliminar]
	@iId_Canton int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATCanton]
WHERE
	[Id_Canton] = @iId_Canton


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATCanton'
-- Recibe: @iId_Canton int
-- Recibe: @sNom_Canton varchar(30)
-- Recibe: @iFK_IdProvincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_Buscar]
	@iId_Canton int,
	@sNom_Canton varchar(30),
	@iFK_IdProvincia int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATCanton] 
 WHERE 
	(@iId_Canton IS NULL OR [Id_Canton] = @iId_Canton) AND 
	(@sNom_Canton IS NULL OR [Nom_Canton] LIKE @sNom_Canton) AND 
	(@iFK_IdProvincia IS NULL OR [FK_IdProvincia] = @iFK_IdProvincia)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_ActualizarTodos_Con_FK_IdProvincia_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATCanton'.
-- Actualiza el campo [FK_IdProvincia] con el valor anterior de@iFK_IdProvincia  al valor @iFK_IdProvincia
-- Recibe: @iFK_IdProvincia int
-- Recibe: @iFK_IdProvinciaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_ActualizarTodos_Con_FK_IdProvincia_FK]
	@iFK_IdProvincia int,
	@iFK_IdProvinciaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCanton]
SET
	[FK_IdProvincia] = @iFK_IdProvincia
WHERE
	[FK_IdProvincia] = @iFK_IdProvinciaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCanton_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATCanton'
-- Recibe: @iId_Canton int
-- Recibe: @sNom_Canton varchar(30)
-- Recibe: @iFK_IdProvincia int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCanton_Actualizar]
	@iId_Canton int,
	@sNom_Canton varchar(30),
	@iFK_IdProvincia int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCanton]
SET 
	[Nom_Canton] = @sNom_Canton,
	[FK_IdProvincia] = @iFK_IdProvincia
WHERE
	[Id_Canton] = @iId_Canton


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATOpinion]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATOpinion](
	[Id_Opinion] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](400) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATOpinion] PRIMARY KEY CLUSTERED 
(
	[Id_Opinion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATDistrito]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATDistrito](
	[Id_Distrito] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Distrito] [varchar](30) NOT NULL,
	[FK_IdCanton] [int] NOT NULL,
 CONSTRAINT [PK_IATDistrito] PRIMARY KEY CLUSTERED 
(
	[Id_Distrito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATContacto]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATContacto](
	[Id_Contacto] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](80) NOT NULL,
	[FK_IdTipoContacto] [int] NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATContacto] PRIMARY KEY CLUSTERED 
(
	[Id_Contacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATUsuario'
-- basado en la llave primaria.
-- Recibe: @iId_Usuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_SeleccionarUno]
	@iId_Usuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATUsuario]
WHERE
	[Id_Usuario] = @iId_Usuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_SeleccionarTodos_Con_FK_IdTipoUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATUsuario'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_SeleccionarTodos_Con_FK_IdTipoUsuario_FK]
	@iFK_IdTipoUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATUsuario]
WHERE
	[FK_IdTipoUsuario] = @iFK_IdTipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATUsuario'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATUsuario]
ORDER BY 
	[Id_Usuario] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATUsuario'
-- Recibe: @sNom_Usuario varchar(30)
-- Recibe: @sContrasenna varchar(50)
-- Recibe: @sIndicio_Contrasenna varchar(50)
-- Recibe: @iFK_IdTipoUsuario int
-- Recibe: @byEstado tinyint
-- Retorna: @iId_Usuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_Insertar]
	@sNom_Usuario varchar(30),
	@sContrasenna varchar(50),
	@sIndicio_Contrasenna varchar(50),
	@iFK_IdTipoUsuario int,
	@byEstado tinyint,
	@iId_Usuario int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATUsuario]
(
	[Nom_Usuario],
	[Contrasenna],
	[Indicio_Contrasenna],
	[FK_IdTipoUsuario],
	[Estado]
)
VALUES
(
	@sNom_Usuario,
	@sContrasenna,
	@sIndicio_Contrasenna,
	@iFK_IdTipoUsuario,
	@byEstado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Usuario=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_EliminarTodo_FK_FK_IdTipoUsuario]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATUsuario'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_EliminarTodo_FK_FK_IdTipoUsuario]
	@iFK_IdTipoUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATUsuario]
WHERE
	[FK_IdTipoUsuario] = @iFK_IdTipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATUsuario'
-- utilizando la llave primaria. 
-- Recibe: @iId_Usuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_Eliminar]
	@iId_Usuario int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATUsuario]
WHERE
	[Id_Usuario] = @iId_Usuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATUsuario'
-- Recibe: @iId_Usuario int
-- Recibe: @sNom_Usuario varchar(30)
-- Recibe: @sContrasenna varchar(50)
-- Recibe: @sIndicio_Contrasenna varchar(50)
-- Recibe: @iFK_IdTipoUsuario int
-- Recibe: @byEstado tinyint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_Buscar]
	@iId_Usuario int,
	@sNom_Usuario varchar(30),
	@sContrasenna varchar(50),
	@sIndicio_Contrasenna varchar(50),
	@iFK_IdTipoUsuario int,
	@byEstado tinyint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATUsuario] 
 WHERE 
	(@iId_Usuario IS NULL OR [Id_Usuario] = @iId_Usuario) AND 
	(@sNom_Usuario IS NULL OR [Nom_Usuario] LIKE @sNom_Usuario) AND 
	(@sContrasenna IS NULL OR [Contrasenna] LIKE @sContrasenna) AND 
	(@sIndicio_Contrasenna IS NULL OR [Indicio_Contrasenna] LIKE @sIndicio_Contrasenna) AND 
	(@iFK_IdTipoUsuario IS NULL OR [FK_IdTipoUsuario] = @iFK_IdTipoUsuario) AND 
	(@byEstado IS NULL OR [Estado] = @byEstado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_ActualizarTodos_Con_FK_IdTipoUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATUsuario'.
-- Actualiza el campo [FK_IdTipoUsuario] con el valor anterior de@iFK_IdTipoUsuario  al valor @iFK_IdTipoUsuario
-- Recibe: @iFK_IdTipoUsuario int
-- Recibe: @iFK_IdTipoUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_ActualizarTodos_Con_FK_IdTipoUsuario_FK]
	@iFK_IdTipoUsuario int,
	@iFK_IdTipoUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATUsuario]
SET
	[FK_IdTipoUsuario] = @iFK_IdTipoUsuario
WHERE
	[FK_IdTipoUsuario] = @iFK_IdTipoUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATUsuario_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATUsuario'
-- Recibe: @iId_Usuario int
-- Recibe: @sNom_Usuario varchar(30)
-- Recibe: @sContrasenna varchar(50)
-- Recibe: @sIndicio_Contrasenna varchar(50)
-- Recibe: @iFK_IdTipoUsuario int
-- Recibe: @byEstado tinyint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATUsuario_Actualizar]
	@iId_Usuario int,
	@sNom_Usuario varchar(30),
	@sContrasenna varchar(50),
	@sIndicio_Contrasenna varchar(50),
	@iFK_IdTipoUsuario int,
	@byEstado tinyint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATUsuario]
SET 
	[Nom_Usuario] = @sNom_Usuario,
	[Contrasenna] = @sContrasenna,
	[Indicio_Contrasenna] = @sIndicio_Contrasenna,
	[FK_IdTipoUsuario] = @iFK_IdTipoUsuario,
	[Estado] = @byEstado
WHERE
	[Id_Usuario] = @iId_Usuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATOpinion'
-- basado en la llave primaria.
-- Recibe: @iId_Opinion int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_SeleccionarUno]
	@iId_Opinion int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATOpinion]
WHERE
	[Id_Opinion] = @iId_Opinion


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_SeleccionarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATOpinion'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_SeleccionarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATOpinion]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATOpinion'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATOpinion]
ORDER BY 
	[Id_Opinion] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATOpinion'
-- Recibe: @sDetalle varchar(400)
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iId_Opinion int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_Insertar]
	@sDetalle varchar(400),
	@iFK_IdUsuario int,
	@iId_Opinion int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATOpinion]
(
	[Detalle],
	[FK_IdUsuario]
)
VALUES
(
	@sDetalle,
	@iFK_IdUsuario
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Opinion=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_EliminarTodo_FK_FK_IdUsuario]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATOpinion'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_EliminarTodo_FK_FK_IdUsuario]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATOpinion]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATOpinion'
-- utilizando la llave primaria. 
-- Recibe: @iId_Opinion int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_Eliminar]
	@iId_Opinion int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATOpinion]
WHERE
	[Id_Opinion] = @iId_Opinion


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATOpinion'
-- Recibe: @iId_Opinion int
-- Recibe: @sDetalle varchar(400)
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_Buscar]
	@iId_Opinion int,
	@sDetalle varchar(400),
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATOpinion] 
 WHERE 
	(@iId_Opinion IS NULL OR [Id_Opinion] = @iId_Opinion) AND 
	(@sDetalle IS NULL OR [Detalle] LIKE @sDetalle) AND 
	(@iFK_IdUsuario IS NULL OR [FK_IdUsuario] = @iFK_IdUsuario)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_ActualizarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATOpinion'.
-- Actualiza el campo [FK_IdUsuario] con el valor anterior de@iFK_IdUsuario  al valor @iFK_IdUsuario
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_ActualizarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iFK_IdUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOpinion]
SET
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[FK_IdUsuario] = @iFK_IdUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOpinion_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATOpinion'
-- Recibe: @iId_Opinion int
-- Recibe: @sDetalle varchar(400)
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOpinion_Actualizar]
	@iId_Opinion int,
	@sDetalle varchar(400),
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOpinion]
SET 
	[Detalle] = @sDetalle,
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[Id_Opinion] = @iId_Opinion


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATContacto'
-- basado en la llave primaria.
-- Recibe: @iId_Contacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_SeleccionarUno]
	@iId_Contacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATContacto]
WHERE
	[Id_Contacto] = @iId_Contacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_SeleccionarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATContacto'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_SeleccionarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATContacto]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_SeleccionarTodos_Con_FK_IdTipoContacto_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATContacto'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_SeleccionarTodos_Con_FK_IdTipoContacto_FK]
	@iFK_IdTipoContacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATContacto]
WHERE
	[FK_IdTipoContacto] = @iFK_IdTipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATContacto'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATContacto]
ORDER BY 
	[Id_Contacto] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATContacto'
-- Recibe: @sDetalle varchar(80)
-- Recibe: @iFK_IdTipoContacto int
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iId_Contacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_Insertar]
	@sDetalle varchar(80),
	@iFK_IdTipoContacto int,
	@iFK_IdUsuario int,
	@iId_Contacto int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATContacto]
(
	[Detalle],
	[FK_IdTipoContacto],
	[FK_IdUsuario]
)
VALUES
(
	@sDetalle,
	@iFK_IdTipoContacto,
	@iFK_IdUsuario
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Contacto=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_EliminarTodo_FK_FK_IdUsuario]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATContacto'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_EliminarTodo_FK_FK_IdUsuario]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATContacto]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_EliminarTodo_FK_FK_IdTipoContacto]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATContacto'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_EliminarTodo_FK_FK_IdTipoContacto]
	@iFK_IdTipoContacto int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATContacto]
WHERE
	[FK_IdTipoContacto] = @iFK_IdTipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATContacto'
-- utilizando la llave primaria. 
-- Recibe: @iId_Contacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_Eliminar]
	@iId_Contacto int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATContacto]
WHERE
	[Id_Contacto] = @iId_Contacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATContacto'
-- Recibe: @iId_Contacto int
-- Recibe: @sDetalle varchar(80)
-- Recibe: @iFK_IdTipoContacto int
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_Buscar]
	@iId_Contacto int,
	@sDetalle varchar(80),
	@iFK_IdTipoContacto int,
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATContacto] 
 WHERE 
	(@iId_Contacto IS NULL OR [Id_Contacto] = @iId_Contacto) AND 
	(@sDetalle IS NULL OR [Detalle] LIKE @sDetalle) AND 
	(@iFK_IdTipoContacto IS NULL OR [FK_IdTipoContacto] = @iFK_IdTipoContacto) AND 
	(@iFK_IdUsuario IS NULL OR [FK_IdUsuario] = @iFK_IdUsuario)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_ActualizarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATContacto'.
-- Actualiza el campo [FK_IdUsuario] con el valor anterior de@iFK_IdUsuario  al valor @iFK_IdUsuario
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_ActualizarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iFK_IdUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATContacto]
SET
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[FK_IdUsuario] = @iFK_IdUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_ActualizarTodos_Con_FK_IdTipoContacto_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATContacto'.
-- Actualiza el campo [FK_IdTipoContacto] con el valor anterior de@iFK_IdTipoContacto  al valor @iFK_IdTipoContacto
-- Recibe: @iFK_IdTipoContacto int
-- Recibe: @iFK_IdTipoContactoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_ActualizarTodos_Con_FK_IdTipoContacto_FK]
	@iFK_IdTipoContacto int,
	@iFK_IdTipoContactoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATContacto]
SET
	[FK_IdTipoContacto] = @iFK_IdTipoContacto
WHERE
	[FK_IdTipoContacto] = @iFK_IdTipoContactoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATContacto_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATContacto'
-- Recibe: @iId_Contacto int
-- Recibe: @sDetalle varchar(80)
-- Recibe: @iFK_IdTipoContacto int
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATContacto_Actualizar]
	@iId_Contacto int,
	@sDetalle varchar(80),
	@iFK_IdTipoContacto int,
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATContacto]
SET 
	[Detalle] = @sDetalle,
	[FK_IdTipoContacto] = @iFK_IdTipoContacto,
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[Id_Contacto] = @iId_Contacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATEmpresa]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATEmpresa](
	[Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Empresa] [varchar](60) NOT NULL,
	[Num_CedulaJuridica] [varchar](50) NOT NULL,
	[Dsc_Empresa] [varchar](300) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
	[PuntajePromedio] [float] NOT NULL,
	[FK_IdDistrito] [int] NOT NULL,
 CONSTRAINT [PK_IATEmpresa] PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATDistrito'
-- basado en la llave primaria.
-- Recibe: @iId_Distrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_SeleccionarUno]
	@iId_Distrito int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATDistrito]
WHERE
	[Id_Distrito] = @iId_Distrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_SeleccionarTodos_Con_FK_IdCanton_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATDistrito'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCanton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_SeleccionarTodos_Con_FK_IdCanton_FK]
	@iFK_IdCanton int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATDistrito]
WHERE
	[FK_IdCanton] = @iFK_IdCanton


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATDistrito'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATDistrito]
ORDER BY 
	[Id_Distrito] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATDistrito'
-- Recibe: @sNom_Distrito varchar(30)
-- Recibe: @iFK_IdCanton int
-- Retorna: @iId_Distrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_Insertar]
	@sNom_Distrito varchar(30),
	@iFK_IdCanton int,
	@iId_Distrito int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATDistrito]
(
	[Nom_Distrito],
	[FK_IdCanton]
)
VALUES
(
	@sNom_Distrito,
	@iFK_IdCanton
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Distrito=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_EliminarTodo_FK_FK_IdCanton]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATDistrito'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCanton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_EliminarTodo_FK_FK_IdCanton]
	@iFK_IdCanton int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATDistrito]
WHERE
	[FK_IdCanton] = @iFK_IdCanton


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATDistrito'
-- utilizando la llave primaria. 
-- Recibe: @iId_Distrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_Eliminar]
	@iId_Distrito int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATDistrito]
WHERE
	[Id_Distrito] = @iId_Distrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATDistrito'
-- Recibe: @iId_Distrito int
-- Recibe: @sNom_Distrito varchar(30)
-- Recibe: @iFK_IdCanton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_Buscar]
	@iId_Distrito int,
	@sNom_Distrito varchar(30),
	@iFK_IdCanton int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATDistrito] 
 WHERE 
	(@iId_Distrito IS NULL OR [Id_Distrito] = @iId_Distrito) AND 
	(@sNom_Distrito IS NULL OR [Nom_Distrito] LIKE @sNom_Distrito) AND 
	(@iFK_IdCanton IS NULL OR [FK_IdCanton] = @iFK_IdCanton)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_ActualizarTodos_Con_FK_IdCanton_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATDistrito'.
-- Actualiza el campo [FK_IdCanton] con el valor anterior de@iFK_IdCanton  al valor @iFK_IdCanton
-- Recibe: @iFK_IdCanton int
-- Recibe: @iFK_IdCantonOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_ActualizarTodos_Con_FK_IdCanton_FK]
	@iFK_IdCanton int,
	@iFK_IdCantonOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATDistrito]
SET
	[FK_IdCanton] = @iFK_IdCanton
WHERE
	[FK_IdCanton] = @iFK_IdCantonOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDistrito_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATDistrito'
-- Recibe: @iId_Distrito int
-- Recibe: @sNom_Distrito varchar(30)
-- Recibe: @iFK_IdCanton int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDistrito_Actualizar]
	@iId_Distrito int,
	@sNom_Distrito varchar(30),
	@iFK_IdCanton int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATDistrito]
SET 
	[Nom_Distrito] = @sNom_Distrito,
	[FK_IdCanton] = @iFK_IdCanton
WHERE
	[Id_Distrito] = @iId_Distrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATPersona](
	[Id_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Persona] [varchar](30) NOT NULL,
	[Apellido1] [varchar](30) NOT NULL,
	[Apellido2] [varchar](30) NOT NULL,
	[Num_Cedula] [varchar](20) NOT NULL,
	[Fec_Nacimiento] [date] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Pasatiempos] [varchar](300) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
	[FK_IdDistrito] [int] NOT NULL,
 CONSTRAINT [PK_IATPersona] PRIMARY KEY CLUSTERED 
(
	[Id_Persona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATServicio]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATServicio](
	[Id_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Servicio] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[FK_IdCategoriaServicio] [int] NOT NULL,
	[FK_IdTipoServicio] [int] NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATServicio] PRIMARY KEY CLUSTERED 
(
	[Id_Servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATOfertaTrabajo]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATOfertaTrabajo](
	[Id_OfertaTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Puesto] [varchar](50) NOT NULL,
	[Dsc_OfertaTrabajo] [varchar](200) NOT NULL,
	[Txt_Requisitos] [varchar](500) NOT NULL,
	[InformacionAdicional] [varchar](200) NULL,
	[Ind_Activa] [bit] NOT NULL,
	[FK_IdCategoriaOfertaTrabajo] [int] NOT NULL,
	[FK_IdTipoOfertaTrabajo] [int] NOT NULL,
	[FK_IdEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_IATOfertaTrabajo] PRIMARY KEY CLUSTERED 
(
	[Id_OfertaTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATIdiomaXPersona]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IATIdiomaXPersona](
	[Id_IdiomaXPersona] [int] IDENTITY(1,1) NOT NULL,
	[FK_IdIdioma] [int] NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATIdiomaXPersona] PRIMARY KEY CLUSTERED 
(
	[Id_IdiomaXPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IATExperienciaLaboral]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATExperienciaLaboral](
	[Id_ExperienciaLaboral] [int] IDENTITY(1,1) NOT NULL,
	[AnnoInicial] [int] NOT NULL,
	[AnnoFinal] [int] NOT NULL,
	[Empresa] [varchar](60) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATExperienciaLaboral] PRIMARY KEY CLUSTERED 
(
	[Id_ExperienciaLaboral] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATEstudio]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATEstudio](
	[Id_Estudio] [int] IDENTITY(1,1) NOT NULL,
	[AnnoInicial] [int] NOT NULL,
	[AnnoFinal] [int] NOT NULL,
	[Institucion] [varchar](60) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATEstudio] PRIMARY KEY CLUSTERED 
(
	[Id_Estudio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATCalificacionEmpresa]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCalificacionEmpresa](
	[Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Puntaje] [tinyint] NOT NULL,
	[Comentario] [varchar](300) NOT NULL,
	[FK_idPersona] [int] NOT NULL,
	[FK_idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_IATCalificacionEmpresa] PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATEmpresa'
-- basado en la llave primaria.
-- Recibe: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_SeleccionarUno]
	@iId_Empresa int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATEmpresa]
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_SeleccionarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_SeleccionarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATEmpresa]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_SeleccionarTodos_Con_FK_IdDistrito_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_SeleccionarTodos_Con_FK_IdDistrito_FK]
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATEmpresa]
WHERE
	[FK_IdDistrito] = @iFK_IdDistrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATEmpresa'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATEmpresa]
ORDER BY 
	[Id_Empresa] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATEmpresa'
-- Recibe: @sNom_Empresa varchar(60)
-- Recibe: @sNum_CedulaJuridica varchar(50)
-- Recibe: @sDsc_Empresa varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @fPuntajePromedio float(53)
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_Insertar]
	@sNom_Empresa varchar(60),
	@sNum_CedulaJuridica varchar(50),
	@sDsc_Empresa varchar(300),
	@iFK_IdUsuario int,
	@fPuntajePromedio float(53),
	@iFK_IdDistrito int,
	@iId_Empresa int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATEmpresa]
(
	[Nom_Empresa],
	[Num_CedulaJuridica],
	[Dsc_Empresa],
	[FK_IdUsuario],
	[PuntajePromedio],
	[FK_IdDistrito]
)
VALUES
(
	@sNom_Empresa,
	@sNum_CedulaJuridica,
	@sDsc_Empresa,
	@iFK_IdUsuario,
	@fPuntajePromedio,
	@iFK_IdDistrito
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Empresa=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_EliminarTodo_FK_FK_IdUsuario]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_EliminarTodo_FK_FK_IdUsuario]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATEmpresa]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_EliminarTodo_FK_FK_IdDistrito]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_EliminarTodo_FK_FK_IdDistrito]
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATEmpresa]
WHERE
	[FK_IdDistrito] = @iFK_IdDistrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATEmpresa'
-- utilizando la llave primaria. 
-- Recibe: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_Eliminar]
	@iId_Empresa int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATEmpresa]
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATEmpresa'
-- Recibe: @iId_Empresa int
-- Recibe: @sNom_Empresa varchar(60)
-- Recibe: @sNum_CedulaJuridica varchar(50)
-- Recibe: @sDsc_Empresa varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @fPuntajePromedio float(53)
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_Buscar]
	@iId_Empresa int,
	@sNom_Empresa varchar(60),
	@sNum_CedulaJuridica varchar(50),
	@sDsc_Empresa varchar(300),
	@iFK_IdUsuario int,
	@fPuntajePromedio float(53),
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATEmpresa] 
 WHERE 
	(@iId_Empresa IS NULL OR [Id_Empresa] = @iId_Empresa) AND 
	(@sNom_Empresa IS NULL OR [Nom_Empresa] LIKE @sNom_Empresa) AND 
	(@sNum_CedulaJuridica IS NULL OR [Num_CedulaJuridica] LIKE @sNum_CedulaJuridica) AND 
	(@sDsc_Empresa IS NULL OR [Dsc_Empresa] LIKE @sDsc_Empresa) AND 
	(@iFK_IdUsuario IS NULL OR [FK_IdUsuario] = @iFK_IdUsuario) AND 
	(@fPuntajePromedio IS NULL OR [PuntajePromedio] = @fPuntajePromedio) AND 
	(@iFK_IdDistrito IS NULL OR [FK_IdDistrito] = @iFK_IdDistrito)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_ActualizarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATEmpresa'.
-- Actualiza el campo [FK_IdUsuario] con el valor anterior de@iFK_IdUsuario  al valor @iFK_IdUsuario
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_ActualizarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iFK_IdUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEmpresa]
SET
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[FK_IdUsuario] = @iFK_IdUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_ActualizarTodos_Con_FK_IdDistrito_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATEmpresa'.
-- Actualiza el campo [FK_IdDistrito] con el valor anterior de@iFK_IdDistrito  al valor @iFK_IdDistrito
-- Recibe: @iFK_IdDistrito int
-- Recibe: @iFK_IdDistritoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_ActualizarTodos_Con_FK_IdDistrito_FK]
	@iFK_IdDistrito int,
	@iFK_IdDistritoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEmpresa]
SET
	[FK_IdDistrito] = @iFK_IdDistrito
WHERE
	[FK_IdDistrito] = @iFK_IdDistritoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEmpresa_Actualizar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATEmpresa'
-- Recibe: @iId_Empresa int
-- Recibe: @sNom_Empresa varchar(60)
-- Recibe: @sNum_CedulaJuridica varchar(50)
-- Recibe: @sDsc_Empresa varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @fPuntajePromedio float(53)
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEmpresa_Actualizar]
	@iId_Empresa int,
	@sNom_Empresa varchar(60),
	@sNum_CedulaJuridica varchar(50),
	@sDsc_Empresa varchar(300),
	@iFK_IdUsuario int,
	@fPuntajePromedio float(53),
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEmpresa]
SET 
	[Nom_Empresa] = @sNom_Empresa,
	[Num_CedulaJuridica] = @sNum_CedulaJuridica,
	[Dsc_Empresa] = @sDsc_Empresa,
	[FK_IdUsuario] = @iFK_IdUsuario,
	[PuntajePromedio] = @fPuntajePromedio,
	[FK_IdDistrito] = @iFK_IdDistrito
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_SeleccionarUno]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATPersona'
-- basado en la llave primaria.
-- Recibe: @iId_Persona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_SeleccionarUno]
	@iId_Persona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATPersona]
WHERE
	[Id_Persona] = @iId_Persona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_SeleccionarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_SeleccionarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATPersona]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_SeleccionarTodos_Con_FK_IdDistrito_FK]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_SeleccionarTodos_Con_FK_IdDistrito_FK]
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATPersona]
WHERE
	[FK_IdDistrito] = @iFK_IdDistrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_SeleccionarTodos]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATPersona'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATPersona]
ORDER BY 
	[Id_Persona] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_Insertar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATPersona'
-- Recibe: @sNom_Persona varchar(30)
-- Recibe: @sApellido1 varchar(30)
-- Recibe: @sApellido2 varchar(30)
-- Recibe: @sNum_Cedula varchar(20)
-- Recibe: @daFec_Nacimiento date
-- Recibe: @sSexo char(1)
-- Recibe: @sPasatiempos varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iId_Persona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_Insertar]
	@sNom_Persona varchar(30),
	@sApellido1 varchar(30),
	@sApellido2 varchar(30),
	@sNum_Cedula varchar(20),
	@daFec_Nacimiento date,
	@sSexo char(1),
	@sPasatiempos varchar(300),
	@iFK_IdUsuario int,
	@iFK_IdDistrito int,
	@iId_Persona int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATPersona]
(
	[Nom_Persona],
	[Apellido1],
	[Apellido2],
	[Num_Cedula],
	[Fec_Nacimiento],
	[Sexo],
	[Pasatiempos],
	[FK_IdUsuario],
	[FK_IdDistrito]
)
VALUES
(
	@sNom_Persona,
	@sApellido1,
	@sApellido2,
	@sNum_Cedula,
	@daFec_Nacimiento,
	@sSexo,
	@sPasatiempos,
	@iFK_IdUsuario,
	@iFK_IdDistrito
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Persona=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_EliminarTodo_FK_FK_IdUsuario]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_EliminarTodo_FK_FK_IdUsuario]
	@iFK_IdUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATPersona]
WHERE
	[FK_IdUsuario] = @iFK_IdUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_EliminarTodo_FK_FK_IdDistrito]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_EliminarTodo_FK_FK_IdDistrito]
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATPersona]
WHERE
	[FK_IdDistrito] = @iFK_IdDistrito


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_Eliminar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATPersona'
-- utilizando la llave primaria. 
-- Recibe: @iId_Persona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_Eliminar]
	@iId_Persona int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATPersona]
WHERE
	[Id_Persona] = @iId_Persona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_Buscar]    Script Date: 09/01/2013 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATPersona'
-- Recibe: @iId_Persona int
-- Recibe: @sNom_Persona varchar(30)
-- Recibe: @sApellido1 varchar(30)
-- Recibe: @sApellido2 varchar(30)
-- Recibe: @sNum_Cedula varchar(20)
-- Recibe: @daFec_Nacimiento date
-- Recibe: @sSexo char(1)
-- Recibe: @sPasatiempos varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_Buscar]
	@iId_Persona int,
	@sNom_Persona varchar(30),
	@sApellido1 varchar(30),
	@sApellido2 varchar(30),
	@sNum_Cedula varchar(20),
	@daFec_Nacimiento date,
	@sSexo char(1),
	@sPasatiempos varchar(300),
	@iFK_IdUsuario int,
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATPersona] 
 WHERE 
	(@iId_Persona IS NULL OR [Id_Persona] = @iId_Persona) AND 
	(@sNom_Persona IS NULL OR [Nom_Persona] LIKE @sNom_Persona) AND 
	(@sApellido1 IS NULL OR [Apellido1] LIKE @sApellido1) AND 
	(@sApellido2 IS NULL OR [Apellido2] LIKE @sApellido2) AND 
	(@sNum_Cedula IS NULL OR [Num_Cedula] LIKE @sNum_Cedula) AND 
	(@daFec_Nacimiento IS NULL OR [Fec_Nacimiento] >= @daFec_Nacimiento) AND 
	(@sSexo IS NULL OR [Sexo] LIKE @sSexo) AND 
	(@sPasatiempos IS NULL OR [Pasatiempos] LIKE @sPasatiempos) AND 
	(@iFK_IdUsuario IS NULL OR [FK_IdUsuario] = @iFK_IdUsuario) AND 
	(@iFK_IdDistrito IS NULL OR [FK_IdDistrito] = @iFK_IdDistrito)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_ActualizarTodos_Con_FK_IdUsuario_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATPersona'.
-- Actualiza el campo [FK_IdUsuario] con el valor anterior de@iFK_IdUsuario  al valor @iFK_IdUsuario
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_ActualizarTodos_Con_FK_IdUsuario_FK]
	@iFK_IdUsuario int,
	@iFK_IdUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATPersona]
SET
	[FK_IdUsuario] = @iFK_IdUsuario
WHERE
	[FK_IdUsuario] = @iFK_IdUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_ActualizarTodos_Con_FK_IdDistrito_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATPersona'.
-- Actualiza el campo [FK_IdDistrito] con el valor anterior de@iFK_IdDistrito  al valor @iFK_IdDistrito
-- Recibe: @iFK_IdDistrito int
-- Recibe: @iFK_IdDistritoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_ActualizarTodos_Con_FK_IdDistrito_FK]
	@iFK_IdDistrito int,
	@iFK_IdDistritoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATPersona]
SET
	[FK_IdDistrito] = @iFK_IdDistrito
WHERE
	[FK_IdDistrito] = @iFK_IdDistritoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATPersona_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATPersona'
-- Recibe: @iId_Persona int
-- Recibe: @sNom_Persona varchar(30)
-- Recibe: @sApellido1 varchar(30)
-- Recibe: @sApellido2 varchar(30)
-- Recibe: @sNum_Cedula varchar(20)
-- Recibe: @daFec_Nacimiento date
-- Recibe: @sSexo char(1)
-- Recibe: @sPasatiempos varchar(300)
-- Recibe: @iFK_IdUsuario int
-- Recibe: @iFK_IdDistrito int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATPersona_Actualizar]
	@iId_Persona int,
	@sNom_Persona varchar(30),
	@sApellido1 varchar(30),
	@sApellido2 varchar(30),
	@sNum_Cedula varchar(20),
	@daFec_Nacimiento date,
	@sSexo char(1),
	@sPasatiempos varchar(300),
	@iFK_IdUsuario int,
	@iFK_IdDistrito int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATPersona]
SET 
	[Nom_Persona] = @sNom_Persona,
	[Apellido1] = @sApellido1,
	[Apellido2] = @sApellido2,
	[Num_Cedula] = @sNum_Cedula,
	[Fec_Nacimiento] = @daFec_Nacimiento,
	[Sexo] = @sSexo,
	[Pasatiempos] = @sPasatiempos,
	[FK_IdUsuario] = @iFK_IdUsuario,
	[FK_IdDistrito] = @iFK_IdDistrito
WHERE
	[Id_Persona] = @iId_Persona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATServicio'
-- basado en la llave primaria.
-- Recibe: @iId_Servicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_SeleccionarUno]
	@iId_Servicio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATServicio]
WHERE
	[Id_Servicio] = @iId_Servicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdTipoServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdTipoServicio_FK]
	@iFK_IdTipoServicio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATServicio]
WHERE
	[FK_IdTipoServicio] = @iFK_IdTipoServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATServicio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdCategoriaServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCategoriaServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_SeleccionarTodos_Con_FK_IdCategoriaServicio_FK]
	@iFK_IdCategoriaServicio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATServicio]
WHERE
	[FK_IdCategoriaServicio] = @iFK_IdCategoriaServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATServicio'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATServicio]
ORDER BY 
	[Id_Servicio] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATServicio'
-- Recibe: @sNom_Servicio varchar(50)
-- Recibe: @sDescripcion varchar(200)
-- Recibe: @iFK_IdCategoriaServicio int
-- Recibe: @iFK_IdTipoServicio int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_Servicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_Insertar]
	@sNom_Servicio varchar(50),
	@sDescripcion varchar(200),
	@iFK_IdCategoriaServicio int,
	@iFK_IdTipoServicio int,
	@iFK_IdPersona int,
	@iId_Servicio int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATServicio]
(
	[Nom_Servicio],
	[Descripcion],
	[FK_IdCategoriaServicio],
	[FK_IdTipoServicio],
	[FK_IdPersona]
)
VALUES
(
	@sNom_Servicio,
	@sDescripcion,
	@iFK_IdCategoriaServicio,
	@iFK_IdTipoServicio,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Servicio=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdTipoServicio]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdTipoServicio]
	@iFK_IdTipoServicio int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATServicio]
WHERE
	[FK_IdTipoServicio] = @iFK_IdTipoServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdPersona]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATServicio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdCategoriaServicio]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCategoriaServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_EliminarTodo_FK_FK_IdCategoriaServicio]
	@iFK_IdCategoriaServicio int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATServicio]
WHERE
	[FK_IdCategoriaServicio] = @iFK_IdCategoriaServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATServicio'
-- utilizando la llave primaria. 
-- Recibe: @iId_Servicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_Eliminar]
	@iId_Servicio int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATServicio]
WHERE
	[Id_Servicio] = @iId_Servicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATServicio'
-- Recibe: @iId_Servicio int
-- Recibe: @sNom_Servicio varchar(50)
-- Recibe: @sDescripcion varchar(200)
-- Recibe: @iFK_IdCategoriaServicio int
-- Recibe: @iFK_IdTipoServicio int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_Buscar]
	@iId_Servicio int,
	@sNom_Servicio varchar(50),
	@sDescripcion varchar(200),
	@iFK_IdCategoriaServicio int,
	@iFK_IdTipoServicio int,
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATServicio] 
 WHERE 
	(@iId_Servicio IS NULL OR [Id_Servicio] = @iId_Servicio) AND 
	(@sNom_Servicio IS NULL OR [Nom_Servicio] LIKE @sNom_Servicio) AND 
	(@sDescripcion IS NULL OR [Descripcion] LIKE @sDescripcion) AND 
	(@iFK_IdCategoriaServicio IS NULL OR [FK_IdCategoriaServicio] = @iFK_IdCategoriaServicio) AND 
	(@iFK_IdTipoServicio IS NULL OR [FK_IdTipoServicio] = @iFK_IdTipoServicio) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdTipoServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATServicio'.
-- Actualiza el campo [FK_IdTipoServicio] con el valor anterior de@iFK_IdTipoServicio  al valor @iFK_IdTipoServicio
-- Recibe: @iFK_IdTipoServicio int
-- Recibe: @iFK_IdTipoServicioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdTipoServicio_FK]
	@iFK_IdTipoServicio int,
	@iFK_IdTipoServicioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATServicio]
SET
	[FK_IdTipoServicio] = @iFK_IdTipoServicio
WHERE
	[FK_IdTipoServicio] = @iFK_IdTipoServicioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATServicio'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATServicio]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdCategoriaServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATServicio'.
-- Actualiza el campo [FK_IdCategoriaServicio] con el valor anterior de@iFK_IdCategoriaServicio  al valor @iFK_IdCategoriaServicio
-- Recibe: @iFK_IdCategoriaServicio int
-- Recibe: @iFK_IdCategoriaServicioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_ActualizarTodos_Con_FK_IdCategoriaServicio_FK]
	@iFK_IdCategoriaServicio int,
	@iFK_IdCategoriaServicioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATServicio]
SET
	[FK_IdCategoriaServicio] = @iFK_IdCategoriaServicio
WHERE
	[FK_IdCategoriaServicio] = @iFK_IdCategoriaServicioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATServicio_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATServicio'
-- Recibe: @iId_Servicio int
-- Recibe: @sNom_Servicio varchar(50)
-- Recibe: @sDescripcion varchar(200)
-- Recibe: @iFK_IdCategoriaServicio int
-- Recibe: @iFK_IdTipoServicio int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATServicio_Actualizar]
	@iId_Servicio int,
	@sNom_Servicio varchar(50),
	@sDescripcion varchar(200),
	@iFK_IdCategoriaServicio int,
	@iFK_IdTipoServicio int,
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATServicio]
SET 
	[Nom_Servicio] = @sNom_Servicio,
	[Descripcion] = @sDescripcion,
	[FK_IdCategoriaServicio] = @iFK_IdCategoriaServicio,
	[FK_IdTipoServicio] = @iFK_IdTipoServicio,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_Servicio] = @iId_Servicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATOfertaTrabajo'
-- basado en la llave primaria.
-- Recibe: @iId_OfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_SeleccionarUno]
	@iId_OfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo]
WHERE
	[Id_OfertaTrabajo] = @iId_OfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdTipoOfertaTrabajo_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdTipoOfertaTrabajo_FK]
	@iFK_IdTipoOfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdEmpresa_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdEmpresa_FK]
	@iFK_IdEmpresa int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdEmpresa] = @iFK_IdEmpresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdCategoriaOfertaTrabajo_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos_Con_FK_IdCategoriaOfertaTrabajo_FK]
	@iFK_IdCategoriaOfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATOfertaTrabajo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo]
ORDER BY 
	[Id_OfertaTrabajo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATOfertaTrabajo'
-- Recibe: @sNom_Puesto varchar(50)
-- Recibe: @sDsc_OfertaTrabajo varchar(200)
-- Recibe: @sTxt_Requisitos varchar(500)
-- Recibe: @sInformacionAdicional varchar(200)
-- Recibe: @bInd_Activa bit
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Recibe: @iFK_IdEmpresa int
-- Retorna: @iId_OfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_Insertar]
	@sNom_Puesto varchar(50),
	@sDsc_OfertaTrabajo varchar(200),
	@sTxt_Requisitos varchar(500),
	@sInformacionAdicional varchar(200),
	@bInd_Activa bit,
	@iFK_IdCategoriaOfertaTrabajo int,
	@iFK_IdTipoOfertaTrabajo int,
	@iFK_IdEmpresa int,
	@iId_OfertaTrabajo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATOfertaTrabajo]
(
	[Nom_Puesto],
	[Dsc_OfertaTrabajo],
	[Txt_Requisitos],
	[InformacionAdicional],
	[Ind_Activa],
	[FK_IdCategoriaOfertaTrabajo],
	[FK_IdTipoOfertaTrabajo],
	[FK_IdEmpresa]
)
VALUES
(
	@sNom_Puesto,
	@sDsc_OfertaTrabajo,
	@sTxt_Requisitos,
	@sInformacionAdicional,
	@bInd_Activa,
	@iFK_IdCategoriaOfertaTrabajo,
	@iFK_IdTipoOfertaTrabajo,
	@iFK_IdEmpresa
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_OfertaTrabajo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdTipoOfertaTrabajo]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdTipoOfertaTrabajo]
	@iFK_IdTipoOfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdEmpresa]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdEmpresa]
	@iFK_IdEmpresa int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdEmpresa] = @iFK_IdEmpresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdCategoriaOfertaTrabajo]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATOfertaTrabajo'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_EliminarTodo_FK_FK_IdCategoriaOfertaTrabajo]
	@iFK_IdCategoriaOfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATOfertaTrabajo]
WHERE
	[FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATOfertaTrabajo'
-- utilizando la llave primaria. 
-- Recibe: @iId_OfertaTrabajo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_Eliminar]
	@iId_OfertaTrabajo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATOfertaTrabajo]
WHERE
	[Id_OfertaTrabajo] = @iId_OfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATOfertaTrabajo'
-- Recibe: @iId_OfertaTrabajo int
-- Recibe: @sNom_Puesto varchar(50)
-- Recibe: @sDsc_OfertaTrabajo varchar(200)
-- Recibe: @sTxt_Requisitos varchar(500)
-- Recibe: @sInformacionAdicional varchar(200)
-- Recibe: @bInd_Activa bit
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Recibe: @iFK_IdEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_Buscar]
	@iId_OfertaTrabajo int,
	@sNom_Puesto varchar(50),
	@sDsc_OfertaTrabajo varchar(200),
	@sTxt_Requisitos varchar(500),
	@sInformacionAdicional varchar(200),
	@bInd_Activa bit,
	@iFK_IdCategoriaOfertaTrabajo int,
	@iFK_IdTipoOfertaTrabajo int,
	@iFK_IdEmpresa int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATOfertaTrabajo] 
 WHERE 
	(@iId_OfertaTrabajo IS NULL OR [Id_OfertaTrabajo] = @iId_OfertaTrabajo) AND 
	(@sNom_Puesto IS NULL OR [Nom_Puesto] LIKE @sNom_Puesto) AND 
	(@sDsc_OfertaTrabajo IS NULL OR [Dsc_OfertaTrabajo] LIKE @sDsc_OfertaTrabajo) AND 
	(@sTxt_Requisitos IS NULL OR [Txt_Requisitos] LIKE @sTxt_Requisitos) AND 
	(@sInformacionAdicional IS NULL OR [InformacionAdicional] LIKE @sInformacionAdicional) AND 
	(@bInd_Activa IS NULL OR [Ind_Activa] = @bInd_Activa) AND 
	(@iFK_IdCategoriaOfertaTrabajo IS NULL OR [FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajo) AND 
	(@iFK_IdTipoOfertaTrabajo IS NULL OR [FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajo) AND 
	(@iFK_IdEmpresa IS NULL OR [FK_IdEmpresa] = @iFK_IdEmpresa)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdTipoOfertaTrabajo_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATOfertaTrabajo'.
-- Actualiza el campo [FK_IdTipoOfertaTrabajo] con el valor anterior de@iFK_IdTipoOfertaTrabajo  al valor @iFK_IdTipoOfertaTrabajo
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Recibe: @iFK_IdTipoOfertaTrabajoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdTipoOfertaTrabajo_FK]
	@iFK_IdTipoOfertaTrabajo int,
	@iFK_IdTipoOfertaTrabajoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOfertaTrabajo]
SET
	[FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajo
WHERE
	[FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdEmpresa_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATOfertaTrabajo'.
-- Actualiza el campo [FK_IdEmpresa] con el valor anterior de@iFK_IdEmpresa  al valor @iFK_IdEmpresa
-- Recibe: @iFK_IdEmpresa int
-- Recibe: @iFK_IdEmpresaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdEmpresa_FK]
	@iFK_IdEmpresa int,
	@iFK_IdEmpresaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOfertaTrabajo]
SET
	[FK_IdEmpresa] = @iFK_IdEmpresa
WHERE
	[FK_IdEmpresa] = @iFK_IdEmpresaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdCategoriaOfertaTrabajo_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATOfertaTrabajo'.
-- Actualiza el campo [FK_IdCategoriaOfertaTrabajo] con el valor anterior de@iFK_IdCategoriaOfertaTrabajo  al valor @iFK_IdCategoriaOfertaTrabajo
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Recibe: @iFK_IdCategoriaOfertaTrabajoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_ActualizarTodos_Con_FK_IdCategoriaOfertaTrabajo_FK]
	@iFK_IdCategoriaOfertaTrabajo int,
	@iFK_IdCategoriaOfertaTrabajoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOfertaTrabajo]
SET
	[FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajo
WHERE
	[FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATOfertaTrabajo_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATOfertaTrabajo'
-- Recibe: @iId_OfertaTrabajo int
-- Recibe: @sNom_Puesto varchar(50)
-- Recibe: @sDsc_OfertaTrabajo varchar(200)
-- Recibe: @sTxt_Requisitos varchar(500)
-- Recibe: @sInformacionAdicional varchar(200)
-- Recibe: @bInd_Activa bit
-- Recibe: @iFK_IdCategoriaOfertaTrabajo int
-- Recibe: @iFK_IdTipoOfertaTrabajo int
-- Recibe: @iFK_IdEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATOfertaTrabajo_Actualizar]
	@iId_OfertaTrabajo int,
	@sNom_Puesto varchar(50),
	@sDsc_OfertaTrabajo varchar(200),
	@sTxt_Requisitos varchar(500),
	@sInformacionAdicional varchar(200),
	@bInd_Activa bit,
	@iFK_IdCategoriaOfertaTrabajo int,
	@iFK_IdTipoOfertaTrabajo int,
	@iFK_IdEmpresa int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATOfertaTrabajo]
SET 
	[Nom_Puesto] = @sNom_Puesto,
	[Dsc_OfertaTrabajo] = @sDsc_OfertaTrabajo,
	[Txt_Requisitos] = @sTxt_Requisitos,
	[InformacionAdicional] = @sInformacionAdicional,
	[Ind_Activa] = @bInd_Activa,
	[FK_IdCategoriaOfertaTrabajo] = @iFK_IdCategoriaOfertaTrabajo,
	[FK_IdTipoOfertaTrabajo] = @iFK_IdTipoOfertaTrabajo,
	[FK_IdEmpresa] = @iFK_IdEmpresa
WHERE
	[Id_OfertaTrabajo] = @iId_OfertaTrabajo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATIdiomaXPersona'
-- basado en la llave primaria.
-- Recibe: @iId_IdiomaXPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_SeleccionarUno]
	@iId_IdiomaXPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATIdiomaXPersona]
WHERE
	[Id_IdiomaXPersona] = @iId_IdiomaXPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATIdiomaXPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATIdiomaXPersona]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos_Con_FK_IdIdioma_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATIdiomaXPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdIdioma int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos_Con_FK_IdIdioma_FK]
	@iFK_IdIdioma int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATIdiomaXPersona]
WHERE
	[FK_IdIdioma] = @iFK_IdIdioma


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATIdiomaXPersona'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATIdiomaXPersona]
ORDER BY 
	[Id_IdiomaXPersona] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATIdiomaXPersona'
-- Recibe: @iFK_IdIdioma int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_IdiomaXPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_Insertar]
	@iFK_IdIdioma int,
	@iFK_IdPersona int,
	@iId_IdiomaXPersona int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATIdiomaXPersona]
(
	[FK_IdIdioma],
	[FK_IdPersona]
)
VALUES
(
	@iFK_IdIdioma,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_IdiomaXPersona=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_EliminarTodo_FK_FK_IdPersona]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATIdiomaXPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATIdiomaXPersona]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_EliminarTodo_FK_FK_IdIdioma]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATIdiomaXPersona'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdIdioma int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_EliminarTodo_FK_FK_IdIdioma]
	@iFK_IdIdioma int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATIdiomaXPersona]
WHERE
	[FK_IdIdioma] = @iFK_IdIdioma


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATIdiomaXPersona'
-- utilizando la llave primaria. 
-- Recibe: @iId_IdiomaXPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_Eliminar]
	@iId_IdiomaXPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATIdiomaXPersona]
WHERE
	[Id_IdiomaXPersona] = @iId_IdiomaXPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATIdiomaXPersona'
-- Recibe: @iId_IdiomaXPersona int
-- Recibe: @iFK_IdIdioma int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_Buscar]
	@iId_IdiomaXPersona int,
	@iFK_IdIdioma int,
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATIdiomaXPersona] 
 WHERE 
	(@iId_IdiomaXPersona IS NULL OR [Id_IdiomaXPersona] = @iId_IdiomaXPersona) AND 
	(@iFK_IdIdioma IS NULL OR [FK_IdIdioma] = @iFK_IdIdioma) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_ActualizarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATIdiomaXPersona'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATIdiomaXPersona]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_ActualizarTodos_Con_FK_IdIdioma_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATIdiomaXPersona'.
-- Actualiza el campo [FK_IdIdioma] con el valor anterior de@iFK_IdIdioma  al valor @iFK_IdIdioma
-- Recibe: @iFK_IdIdioma int
-- Recibe: @iFK_IdIdiomaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_ActualizarTodos_Con_FK_IdIdioma_FK]
	@iFK_IdIdioma int,
	@iFK_IdIdiomaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATIdiomaXPersona]
SET
	[FK_IdIdioma] = @iFK_IdIdioma
WHERE
	[FK_IdIdioma] = @iFK_IdIdiomaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATIdiomaXPersona_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATIdiomaXPersona'
-- Recibe: @iId_IdiomaXPersona int
-- Recibe: @iFK_IdIdioma int
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATIdiomaXPersona_Actualizar]
	@iId_IdiomaXPersona int,
	@iFK_IdIdioma int,
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATIdiomaXPersona]
SET 
	[FK_IdIdioma] = @iFK_IdIdioma,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_IdiomaXPersona] = @iId_IdiomaXPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[IATDiaServicio]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATDiaServicio](
	[Id_DiaServicio] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Dia] [char](1) NOT NULL,
	[Can_Horas] [tinyint] NOT NULL,
	[FK_IdServicio] [int] NOT NULL,
 CONSTRAINT [PK_DiaServicio] PRIMARY KEY CLUSTERED 
(
	[Id_DiaServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATExperienciaLaboral'
-- basado en la llave primaria.
-- Recibe: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarUno]
	@iId_ExperienciaLaboral int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATExperienciaLaboral'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATExperienciaLaboral'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
ORDER BY 
	[Id_ExperienciaLaboral] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATExperienciaLaboral'
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Insertar]
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iId_ExperienciaLaboral int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATExperienciaLaboral]
(
	[AnnoInicial],
	[AnnoFinal],
	[Empresa],
	[Puesto],
	[FK_IdPersona]
)
VALUES
(
	@iAnnoInicial,
	@iAnnoFinal,
	@sEmpresa,
	@sPuesto,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_ExperienciaLaboral=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_EliminarTodo_FK_FK_IdPersona]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATExperienciaLaboral'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATExperienciaLaboral]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATExperienciaLaboral'
-- utilizando la llave primaria. 
-- Recibe: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Eliminar]
	@iId_ExperienciaLaboral int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATExperienciaLaboral]
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATExperienciaLaboral'
-- Recibe: @iId_ExperienciaLaboral int
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Buscar]
	@iId_ExperienciaLaboral int,
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral] 
 WHERE 
	(@iId_ExperienciaLaboral IS NULL OR [Id_ExperienciaLaboral] = @iId_ExperienciaLaboral) AND 
	(@iAnnoInicial IS NULL OR [AnnoInicial] = @iAnnoInicial) AND 
	(@iAnnoFinal IS NULL OR [AnnoFinal] = @iAnnoFinal) AND 
	(@sEmpresa IS NULL OR [Empresa] LIKE @sEmpresa) AND 
	(@sPuesto IS NULL OR [Puesto] LIKE @sPuesto) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_ActualizarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATExperienciaLaboral'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATExperienciaLaboral]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATExperienciaLaboral_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATExperienciaLaboral'
-- Recibe: @iId_ExperienciaLaboral int
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Actualizar]
	@iId_ExperienciaLaboral int,
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATExperienciaLaboral]
SET 
	[AnnoInicial] = @iAnnoInicial,
	[AnnoFinal] = @iAnnoFinal,
	[Empresa] = @sEmpresa,
	[Puesto] = @sPuesto,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATEstudio'
-- basado en la llave primaria.
-- Recibe: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarUno]
	@iId_Estudio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATEstudio]
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_SeleccionarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATEstudio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATEstudio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATEstudio'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATEstudio]
ORDER BY 
	[Id_Estudio] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATEstudio'
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Insertar]
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iId_Estudio int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATEstudio]
(
	[AnnoInicial],
	[AnnoFinal],
	[Institucion],
	[Titulo],
	[FK_IdPersona]
)
VALUES
(
	@iAnnoInicial,
	@iAnnoFinal,
	@sInstitucion,
	@sTitulo,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Estudio=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_EliminarTodo_FK_FK_IdPersona]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATEstudio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATEstudio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATEstudio'
-- utilizando la llave primaria. 
-- Recibe: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Eliminar]
	@iId_Estudio int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATEstudio]
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATEstudio'
-- Recibe: @iId_Estudio int
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Buscar]
	@iId_Estudio int,
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATEstudio] 
 WHERE 
	(@iId_Estudio IS NULL OR [Id_Estudio] = @iId_Estudio) AND 
	(@iAnnoInicial IS NULL OR [AnnoInicial] = @iAnnoInicial) AND 
	(@iAnnoFinal IS NULL OR [AnnoFinal] = @iAnnoFinal) AND 
	(@sInstitucion IS NULL OR [Institucion] LIKE @sInstitucion) AND 
	(@sTitulo IS NULL OR [Titulo] LIKE @sTitulo) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_ActualizarTodos_Con_FK_IdPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATEstudio'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEstudio]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATEstudio_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATEstudio'
-- Recibe: @iId_Estudio int
-- Recibe: @iAnnoInicial int
-- Recibe: @iAnnoFinal int
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Actualizar]
	@iId_Estudio int,
	@iAnnoInicial int,
	@iAnnoFinal int,
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEstudio]
SET 
	[AnnoInicial] = @iAnnoInicial,
	[AnnoFinal] = @iAnnoFinal,
	[Institucion] = @sInstitucion,
	[Titulo] = @sTitulo,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATCalificacionEmpresa'
-- basado en la llave primaria.
-- Recibe: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_SeleccionarUno]
	@iId_Empresa int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATCalificacionEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_idPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idPersona_FK]
	@iFK_idPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[FK_idPersona] = @iFK_idPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idEmpresa_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATCalificacionEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_idEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idEmpresa_FK]
	@iFK_idEmpresa int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[FK_idEmpresa] = @iFK_idEmpresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATCalificacionEmpresa'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATCalificacionEmpresa]
ORDER BY 
	[Id_Empresa] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATCalificacionEmpresa'
-- Recibe: @byPuntaje tinyint
-- Recibe: @sComentario varchar(300)
-- Recibe: @iFK_idPersona int
-- Recibe: @iFK_idEmpresa int
-- Retorna: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_Insertar]
	@byPuntaje tinyint,
	@sComentario varchar(300),
	@iFK_idPersona int,
	@iFK_idEmpresa int,
	@iId_Empresa int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATCalificacionEmpresa]
(
	[Puntaje],
	[Comentario],
	[FK_idPersona],
	[FK_idEmpresa]
)
VALUES
(
	@byPuntaje,
	@sComentario,
	@iFK_idPersona,
	@iFK_idEmpresa
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Empresa=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_EliminarTodo_FK_FK_idPersona]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATCalificacionEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_idPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_EliminarTodo_FK_FK_idPersona]
	@iFK_idPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[FK_idPersona] = @iFK_idPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_EliminarTodo_FK_FK_idEmpresa]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATCalificacionEmpresa'
-- basado en un campo llave primaria.
-- Recibe: @iFK_idEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_EliminarTodo_FK_FK_idEmpresa]
	@iFK_idEmpresa int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[FK_idEmpresa] = @iFK_idEmpresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATCalificacionEmpresa'
-- utilizando la llave primaria. 
-- Recibe: @iId_Empresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_Eliminar]
	@iId_Empresa int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATCalificacionEmpresa]
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATCalificacionEmpresa'
-- Recibe: @iId_Empresa int
-- Recibe: @byPuntaje tinyint
-- Recibe: @sComentario varchar(300)
-- Recibe: @iFK_idPersona int
-- Recibe: @iFK_idEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_Buscar]
	@iId_Empresa int,
	@byPuntaje tinyint,
	@sComentario varchar(300),
	@iFK_idPersona int,
	@iFK_idEmpresa int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATCalificacionEmpresa] 
 WHERE 
	(@iId_Empresa IS NULL OR [Id_Empresa] = @iId_Empresa) AND 
	(@byPuntaje IS NULL OR [Puntaje] = @byPuntaje) AND 
	(@sComentario IS NULL OR [Comentario] LIKE @sComentario) AND 
	(@iFK_idPersona IS NULL OR [FK_idPersona] = @iFK_idPersona) AND 
	(@iFK_idEmpresa IS NULL OR [FK_idEmpresa] = @iFK_idEmpresa)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idPersona_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATCalificacionEmpresa'.
-- Actualiza el campo [FK_idPersona] con el valor anterior de@iFK_idPersona  al valor @iFK_idPersona
-- Recibe: @iFK_idPersona int
-- Recibe: @iFK_idPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idPersona_FK]
	@iFK_idPersona int,
	@iFK_idPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCalificacionEmpresa]
SET
	[FK_idPersona] = @iFK_idPersona
WHERE
	[FK_idPersona] = @iFK_idPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idEmpresa_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATCalificacionEmpresa'.
-- Actualiza el campo [FK_idEmpresa] con el valor anterior de@iFK_idEmpresa  al valor @iFK_idEmpresa
-- Recibe: @iFK_idEmpresa int
-- Recibe: @iFK_idEmpresaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idEmpresa_FK]
	@iFK_idEmpresa int,
	@iFK_idEmpresaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCalificacionEmpresa]
SET
	[FK_idEmpresa] = @iFK_idEmpresa
WHERE
	[FK_idEmpresa] = @iFK_idEmpresaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATCalificacionEmpresa_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATCalificacionEmpresa'
-- Recibe: @iId_Empresa int
-- Recibe: @byPuntaje tinyint
-- Recibe: @sComentario varchar(300)
-- Recibe: @iFK_idPersona int
-- Recibe: @iFK_idEmpresa int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATCalificacionEmpresa_Actualizar]
	@iId_Empresa int,
	@byPuntaje tinyint,
	@sComentario varchar(300),
	@iFK_idPersona int,
	@iFK_idEmpresa int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATCalificacionEmpresa]
SET 
	[Puntaje] = @byPuntaje,
	[Comentario] = @sComentario,
	[FK_idPersona] = @iFK_idPersona,
	[FK_idEmpresa] = @iFK_idEmpresa
WHERE
	[Id_Empresa] = @iId_Empresa


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_SeleccionarUno]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATDiaServicio'
-- basado en la llave primaria.
-- Recibe: @iId_DiaServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_SeleccionarUno]
	@iId_DiaServicio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATDiaServicio]
WHERE
	[Id_DiaServicio] = @iId_DiaServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_SeleccionarTodos_Con_FK_IdServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATDiaServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_SeleccionarTodos_Con_FK_IdServicio_FK]
	@iFK_IdServicio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATDiaServicio]
WHERE
	[FK_IdServicio] = @iFK_IdServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_SeleccionarTodos]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATDiaServicio'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATDiaServicio]
ORDER BY 
	[Id_DiaServicio] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_Insertar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATDiaServicio'
-- Recibe: @sNom_Dia char(1)
-- Recibe: @byCan_Horas tinyint
-- Recibe: @iFK_IdServicio int
-- Retorna: @iId_DiaServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_Insertar]
	@sNom_Dia char(1),
	@byCan_Horas tinyint,
	@iFK_IdServicio int,
	@iId_DiaServicio int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATDiaServicio]
(
	[Nom_Dia],
	[Can_Horas],
	[FK_IdServicio]
)
VALUES
(
	@sNom_Dia,
	@byCan_Horas,
	@iFK_IdServicio
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_DiaServicio=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_EliminarTodo_FK_FK_IdServicio]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATDiaServicio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_EliminarTodo_FK_FK_IdServicio]
	@iFK_IdServicio int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATDiaServicio]
WHERE
	[FK_IdServicio] = @iFK_IdServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_Eliminar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATDiaServicio'
-- utilizando la llave primaria. 
-- Recibe: @iId_DiaServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_Eliminar]
	@iId_DiaServicio int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATDiaServicio]
WHERE
	[Id_DiaServicio] = @iId_DiaServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_Buscar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATDiaServicio'
-- Recibe: @iId_DiaServicio int
-- Recibe: @sNom_Dia char(1)
-- Recibe: @byCan_Horas tinyint
-- Recibe: @iFK_IdServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_Buscar]
	@iId_DiaServicio int,
	@sNom_Dia char(1),
	@byCan_Horas tinyint,
	@iFK_IdServicio int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATDiaServicio] 
 WHERE 
	(@iId_DiaServicio IS NULL OR [Id_DiaServicio] = @iId_DiaServicio) AND 
	(@sNom_Dia IS NULL OR [Nom_Dia] LIKE @sNom_Dia) AND 
	(@byCan_Horas IS NULL OR [Can_Horas] = @byCan_Horas) AND 
	(@iFK_IdServicio IS NULL OR [FK_IdServicio] = @iFK_IdServicio)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_ActualizarTodos_Con_FK_IdServicio_FK]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATDiaServicio'.
-- Actualiza el campo [FK_IdServicio] con el valor anterior de@iFK_IdServicio  al valor @iFK_IdServicio
-- Recibe: @iFK_IdServicio int
-- Recibe: @iFK_IdServicioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_ActualizarTodos_Con_FK_IdServicio_FK]
	@iFK_IdServicio int,
	@iFK_IdServicioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATDiaServicio]
SET
	[FK_IdServicio] = @iFK_IdServicio
WHERE
	[FK_IdServicio] = @iFK_IdServicioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_IATDiaServicio_Actualizar]    Script Date: 09/01/2013 10:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATDiaServicio'
-- Recibe: @iId_DiaServicio int
-- Recibe: @sNom_Dia char(1)
-- Recibe: @byCan_Horas tinyint
-- Recibe: @iFK_IdServicio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATDiaServicio_Actualizar]
	@iId_DiaServicio int,
	@sNom_Dia char(1),
	@byCan_Horas tinyint,
	@iFK_IdServicio int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATDiaServicio]
SET 
	[Nom_Dia] = @sNom_Dia,
	[Can_Horas] = @byCan_Horas,
	[FK_IdServicio] = @iFK_IdServicio
WHERE
	[Id_DiaServicio] = @iId_DiaServicio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  ForeignKey [FK_IATCanton_IATProvincia]    Script Date: 09/01/2013 10:12:08 ******/
ALTER TABLE [dbo].[IATCanton]  WITH CHECK ADD  CONSTRAINT [FK_IATCanton_IATProvincia] FOREIGN KEY([FK_IdProvincia])
REFERENCES [dbo].[IATProvincia] ([Id_Provincia])
GO
ALTER TABLE [dbo].[IATCanton] CHECK CONSTRAINT [FK_IATCanton_IATProvincia]
GO
/****** Object:  ForeignKey [FK_IATGuiaUso_IATTipoGuiaUso]    Script Date: 09/01/2013 10:12:08 ******/
ALTER TABLE [dbo].[IATGuiaUso]  WITH CHECK ADD  CONSTRAINT [FK_IATGuiaUso_IATTipoGuiaUso] FOREIGN KEY([FK_IdTipoGuiaUso])
REFERENCES [dbo].[IATTipoGuiaUso] ([Id_TipoGuiaUso])
GO
ALTER TABLE [dbo].[IATGuiaUso] CHECK CONSTRAINT [FK_IATGuiaUso_IATTipoGuiaUso]
GO
/****** Object:  ForeignKey [FK_IATUsuario_IATTipoUsuario]    Script Date: 09/01/2013 10:12:08 ******/
ALTER TABLE [dbo].[IATUsuario]  WITH CHECK ADD  CONSTRAINT [FK_IATUsuario_IATTipoUsuario] FOREIGN KEY([FK_IdTipoUsuario])
REFERENCES [dbo].[IATTipoUsuario] ([Id_TipoUsuario])
GO
ALTER TABLE [dbo].[IATUsuario] CHECK CONSTRAINT [FK_IATUsuario_IATTipoUsuario]
GO
/****** Object:  ForeignKey [FK_IATOpinion_IATUsuario]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATOpinion]  WITH CHECK ADD  CONSTRAINT [FK_IATOpinion_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATOpinion] CHECK CONSTRAINT [FK_IATOpinion_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATDistrito_IATCanton]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATDistrito]  WITH CHECK ADD  CONSTRAINT [FK_IATDistrito_IATCanton] FOREIGN KEY([FK_IdCanton])
REFERENCES [dbo].[IATCanton] ([Id_Canton])
GO
ALTER TABLE [dbo].[IATDistrito] CHECK CONSTRAINT [FK_IATDistrito_IATCanton]
GO
/****** Object:  ForeignKey [FK_IATContacto_IATTipoContacto1]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATContacto]  WITH CHECK ADD  CONSTRAINT [FK_IATContacto_IATTipoContacto1] FOREIGN KEY([FK_IdTipoContacto])
REFERENCES [dbo].[IATTipoContacto] ([Id_TipoContacto])
GO
ALTER TABLE [dbo].[IATContacto] CHECK CONSTRAINT [FK_IATContacto_IATTipoContacto1]
GO
/****** Object:  ForeignKey [FK_IATContacto_IATUsuario]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATContacto]  WITH CHECK ADD  CONSTRAINT [FK_IATContacto_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATContacto] CHECK CONSTRAINT [FK_IATContacto_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATEmpresa_IATDistrito]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATEmpresa_IATDistrito] FOREIGN KEY([FK_IdDistrito])
REFERENCES [dbo].[IATDistrito] ([Id_Distrito])
GO
ALTER TABLE [dbo].[IATEmpresa] CHECK CONSTRAINT [FK_IATEmpresa_IATDistrito]
GO
/****** Object:  ForeignKey [FK_IATEmpresa_IATUsuario]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATEmpresa_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATEmpresa] CHECK CONSTRAINT [FK_IATEmpresa_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATPersona_IATDistrito]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATPersona_IATDistrito] FOREIGN KEY([FK_IdDistrito])
REFERENCES [dbo].[IATDistrito] ([Id_Distrito])
GO
ALTER TABLE [dbo].[IATPersona] CHECK CONSTRAINT [FK_IATPersona_IATDistrito]
GO
/****** Object:  ForeignKey [FK_IATPersona_IATUsuario]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATPersona_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATPersona] CHECK CONSTRAINT [FK_IATPersona_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATCategoriaTrabajo]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATCategoriaTrabajo] FOREIGN KEY([FK_IdCategoriaServicio])
REFERENCES [dbo].[IATCategoriaTrabajo] ([Id_CategoriaTrabajo])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATCategoriaTrabajo]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATTipoTrabajo]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATTipoTrabajo] FOREIGN KEY([FK_IdTipoServicio])
REFERENCES [dbo].[IATTipoTrabajo] ([Id_TipoTrabajo])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATTipoTrabajo]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATCategoriaTrabajo]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATCategoriaTrabajo] FOREIGN KEY([FK_IdCategoriaOfertaTrabajo])
REFERENCES [dbo].[IATCategoriaTrabajo] ([Id_CategoriaTrabajo])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATCategoriaTrabajo]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATEmpresa]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATEmpresa] FOREIGN KEY([FK_IdEmpresa])
REFERENCES [dbo].[IATEmpresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATEmpresa]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATTipoTrabajo]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATTipoTrabajo] FOREIGN KEY([FK_IdTipoOfertaTrabajo])
REFERENCES [dbo].[IATTipoTrabajo] ([Id_TipoTrabajo])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATTipoTrabajo]
GO
/****** Object:  ForeignKey [FK_IATIdiomaXPersona_IATIdioma]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATIdiomaXPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATIdiomaXPersona_IATIdioma] FOREIGN KEY([FK_IdIdioma])
REFERENCES [dbo].[IATIdioma] ([Id_Idioma])
GO
ALTER TABLE [dbo].[IATIdiomaXPersona] CHECK CONSTRAINT [FK_IATIdiomaXPersona_IATIdioma]
GO
/****** Object:  ForeignKey [FK_IATIdiomaXPersona_IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATIdiomaXPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATIdiomaXPersona_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATIdiomaXPersona] CHECK CONSTRAINT [FK_IATIdiomaXPersona_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATExperienciaLaboral_IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATExperienciaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_IATExperienciaLaboral_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATExperienciaLaboral] CHECK CONSTRAINT [FK_IATExperienciaLaboral_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATEstudio_IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATEstudio]  WITH CHECK ADD  CONSTRAINT [FK_IATEstudio_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATEstudio] CHECK CONSTRAINT [FK_IATEstudio_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATCalificacionEmpresa_IATEmpresa]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATCalificacionEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATCalificacionEmpresa_IATEmpresa] FOREIGN KEY([FK_idEmpresa])
REFERENCES [dbo].[IATEmpresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[IATCalificacionEmpresa] CHECK CONSTRAINT [FK_IATCalificacionEmpresa_IATEmpresa]
GO
/****** Object:  ForeignKey [FK_IATCalificacionEmpresa_IATPersona]    Script Date: 09/01/2013 10:12:09 ******/
ALTER TABLE [dbo].[IATCalificacionEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATCalificacionEmpresa_IATPersona] FOREIGN KEY([FK_idPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATCalificacionEmpresa] CHECK CONSTRAINT [FK_IATCalificacionEmpresa_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATDiaServicio_IATServicio]    Script Date: 09/01/2013 10:12:10 ******/
ALTER TABLE [dbo].[IATDiaServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATDiaServicio_IATServicio] FOREIGN KEY([FK_IdServicio])
REFERENCES [dbo].[IATServicio] ([Id_Servicio])
GO
ALTER TABLE [dbo].[IATDiaServicio] CHECK CONSTRAINT [FK_IATDiaServicio_IATServicio]
GO
