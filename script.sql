USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Foto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Foto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] NOT NULL,
	[IdCategoria] [int] NULL,
	[IdDificultad] [int] NULL,
	[Enunciado] [varchar](255) NOT NULL,
	[Foto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] NOT NULL,
	[IdPregunta] [int] NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](255) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Macroeconomía', N'../Imagenes/1.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Microeconomía', N'../Imagenes/2.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Finanzas Personales', N'../Imagenes/3.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Finanzas Corporativas', N'../Imagenes/4.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Mercados Financieros:
', N'../Imagenes/5.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (6, N'Banca y Servicios Financieros', N'../Imagenes/6.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (7, N'Economía Internacional', N'../Imagenes/7.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (8, N'Política Económica', N'../Imagenes/8.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (9, N'Historia Económica', N'../Imagenes/9.webp')
GO
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre], [Foto]) VALUES (1, N'Fácil', N'../Imagenes/easy.webp')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre], [Foto]) VALUES (2, N'Intermedio', N'../Imagenes/medium.webp')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre], [Foto]) VALUES (3, N'Difícil', N'../Imagenes/hard.webp')
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Qué es el PIB?', N'../Imagenes/pib.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, 2, N'¿Qué es la inflación?', N'../Imagenes/inflacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 3, N'¿Qué es la política monetaria?', N'../Imagenes/politica_monetaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, 1, N'¿Qué es la demanda?', N'../Imagenes/demanda.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, 2, N'¿Qué es la oferta?', N'../Imagenes/oferta.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, 3, N'¿Qué es el equilibrio de mercado?', N'../Imagenes/equilibrio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 1, 1, N'¿Qué es la tasa de interés?', N'../Imagenes/tasa_interes.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 1, 2, N'¿Qué es la curva de Phillips?', N'../Imagenes/curva_phillips.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 1, 3, N'¿Qué es la teoría cuantitativa del dinero?', N'../Imagenes/teoria_cuantitativa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 2, 1, N'¿Qué es la elasticidad?', N'../Imagenes/elasticidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 2, N'¿Qué es el monopolio?', N'../Imagenes/monopolio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 2, 3, N'¿Qué es la teoría de juegos?', N'../Imagenes/teoria_juegos.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 1, 1, N'¿Qué es el Producto Interno Bruto?', N'../Imagenes/pib.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 1, 2, N'¿Qué es la inflación subyacente?', N'../Imagenes/inflacion_subyacente.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 1, 3, N'¿Qué es la curva de Laffer?', N'../Imagenes/curva_laffer.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 2, 1, N'¿Qué es un bien complementario?', N'../Imagenes/bien_complementario.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 2, 2, N'¿Qué es el costo marginal?', N'../Imagenes/costo_marginal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 2, 3, N'¿Qué es el equilibrio general?', N'../Imagenes/equilibrio_general.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 3, 1, N'¿Qué es un presupuesto personal?', N'../Imagenes/presupuesto_personal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 3, 2, N'¿Qué es el interés compuesto?', N'../Imagenes/interes_compuesto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 3, 3, N'¿Qué es la diversificación de inversiones?', N'../Imagenes/diversificacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 4, 1, N'¿Qué es el capital de trabajo?', N'../Imagenes/capital_trabajo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 4, 2, N'¿Qué es el apalancamiento financiero?', N'../Imagenes/apalancamiento.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 4, 3, N'¿Qué es la estructura de capital?', N'../Imagenes/estructura_capital.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 5, 1, N'¿Qué es una acción?', N'../Imagenes/accion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 5, 2, N'¿Qué es un bono?', N'../Imagenes/bono.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (27, 5, 3, N'¿Qué es un derivado financiero?', N'../Imagenes/derivado.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 6, 1, N'¿Qué es una cuenta de ahorro?', N'../Imagenes/cuenta_ahorro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (29, 6, 2, N'¿Qué es un préstamo personal?', N'../Imagenes/prestamo_personal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 6, 3, N'¿Qué es la tasa de interés interbancaria?', N'../Imagenes/tasa_interbancaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 7, 1, N'¿Qué es la balanza comercial?', N'../Imagenes/balanza_comercial.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 7, 2, N'¿Qué es un arancel?', N'../Imagenes/arancel.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 7, 3, N'¿Qué es el tipo de cambio flotante?', N'../Imagenes/tipo_cambio_flotante.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 8, 1, N'¿Qué es la política fiscal?', N'../Imagenes/politica_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 8, 2, N'¿Qué es la política monetaria?', N'../Imagenes/politica_monetaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 8, 3, N'¿Qué es el multiplicador keynesiano?', N'../Imagenes/multiplicador_keynesiano.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 9, 1, N'¿Qué fue la Gran Depresión?', N'../Imagenes/gran_depresion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 9, 2, N'¿Qué es el Bretton Woods?', N'../Imagenes/bretton_woods.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 9, 3, N'¿Qué fue el Pánico de 1907?', N'../Imagenes/panico_1907.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (40, 7, 1, N'¿Qué es un tipo de cambio fijo?', N'../Imagenes/tipo_cambio_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (41, 7, 2, N'¿Qué es la paridad de poder adquisitivo (PPA)?', N'../Imagenes/ppa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (42, 7, 3, N'¿Qué es el déficit por cuenta corriente?', N'../Imagenes/deficit_cuenta_corriente.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (43, 8, 1, N'¿Qué es un impuesto progresivo?', N'../Imagenes/impuesto_progresivo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (44, 8, 2, N'¿Qué es el control de precios?', N'../Imagenes/control_precios.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 8, 3, N'¿Qué es el crowding out?', N'../Imagenes/crowding_out.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (46, 9, 1, N'¿Qué fue el New Deal?', N'../Imagenes/new_deal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (47, 9, 2, N'¿Qué fue el Plan Marshall?', N'../Imagenes/plan_marshall.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (48, 9, 3, N'¿Qué fue la hiperinflación en Alemania de 1923?', N'../Imagenes/hiperinflacion_alemania.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1, 1, 1, N'Producto Interno Bruto', 1, N'../Imagenes/pib_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 1, 2, N'Precio de Bienes', 0, N'../Imagenes/pib_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (3, 1, 3, N'Tasa de Interés', 0, N'../Imagenes/pib_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 1, 4, N'Ingreso Per Cápita', 0, N'../Imagenes/pib_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 2, 1, N'Aumento generalizado de precios', 1, N'../Imagenes/inflacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 2, 2, N'Disminución del PIB', 0, N'../Imagenes/inflacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (7, 2, 3, N'Incremento de la oferta', 0, N'../Imagenes/inflacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 2, 4, N'Devaluación de la moneda', 0, N'../Imagenes/inflacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 7, 1, N'Costo del dinero', 1, N'../Imagenes/tasa_interes_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (10, 7, 2, N'Impuesto sobre ingresos', 0, N'../Imagenes/tasa_interes_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 7, 3, N'Valor de las exportaciones', 0, N'../Imagenes/tasa_interes_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 7, 4, N'Indicador de inflación', 0, N'../Imagenes/tasa_interes_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (13, 8, 1, N'Relación entre inflación y desempleo', 1, N'../Imagenes/curva_phillips_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 8, 2, N'Gráfica del crecimiento económico', 0, N'../Imagenes/curva_phillips_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 8, 3, N'Curva de la oferta y demanda', 0, N'../Imagenes/curva_phillips_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 8, 4, N'Indicador de política fiscal', 0, N'../Imagenes/curva_phillips_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 9, 1, N'Teoría que relaciona la cantidad de dinero con el nivel de precios', 1, N'../Imagenes/teoria_cuantitativa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 9, 2, N'Concepto que explica la balanza comercial', 0, N'../Imagenes/teoria_cuantitativa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 9, 3, N'Modelo que define la tasa de cambio', 0, N'../Imagenes/teoria_cuantitativa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 9, 4, N'Política que determina los tipos de interés', 0, N'../Imagenes/teoria_cuantitativa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 10, 1, N'Medida de la respuesta de la demanda ante cambios de precio', 1, N'../Imagenes/elasticidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 10, 2, N'Indicador de la oferta', 0, N'../Imagenes/elasticidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 10, 3, N'Valor de los bienes de consumo', 0, N'../Imagenes/elasticidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 10, 4, N'Costo marginal de producción', 0, N'../Imagenes/elasticidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 11, 1, N'Empresa que controla todo el mercado de un bien o servicio', 1, N'../Imagenes/monopolio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 11, 2, N'Mercado con muchos competidores', 0, N'../Imagenes/monopolio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 11, 3, N'Indicador de inflación', 0, N'../Imagenes/monopolio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 11, 4, N'Política de precios máximos', 0, N'../Imagenes/monopolio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 12, 1, N'Estudio matemático de la toma de decisiones en situaciones de competencia', 1, N'../Imagenes/teoria_juegos_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 12, 2, N'Modelo de política monetaria', 0, N'../Imagenes/teoria_juegos_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 12, 3, N'Indicador de la demanda agregada', 0, N'../Imagenes/teoria_juegos_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 12, 4, N'Análisis de los factores productivos', 0, N'../Imagenes/teoria_juegos_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 13, 1, N'Valor total de bienes y servicios producidos en un país', 1, N'../Imagenes/pib_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 13, 2, N'Ingreso promedio de la población', 0, N'../Imagenes/pib_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 13, 3, N'Tasa de crecimiento anual', 0, N'../Imagenes/pib_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 13, 4, N'Tasa de desempleo', 0, N'../Imagenes/pib_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 14, 1, N'Índice que mide la inflación excluyendo alimentos y energía', 1, N'../Imagenes/inflacion_subyacente_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 14, 2, N'Tasa de cambio en los precios', 0, N'../Imagenes/inflacion_subyacente_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 14, 3, N'Medida de la cantidad de dinero en circulación', 0, N'../Imagenes/inflacion_subyacente_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 14, 4, N'Política de control de precios', 0, N'../Imagenes/inflacion_subyacente_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 15, 1, N'Teoría que ilustra la relación entre tasas impositivas y recaudación fiscal', 1, N'../Imagenes/curva_laffer_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 15, 2, N'Indicador de la demanda agregada', 0, N'../Imagenes/curva_laffer_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 15, 3, N'Medida del gasto público', 0, N'../Imagenes/curva_laffer_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 15, 4, N'Modelo del comercio internacional', 0, N'../Imagenes/curva_laffer_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 16, 1, N'Un bien que se consume conjuntamente con otro', 1, N'../Imagenes/bien_complementario_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 16, 2, N'Un bien que reemplaza a otro', 0, N'../Imagenes/bien_complementario_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 16, 3, N'Un bien que no tiene sustitutos', 0, N'../Imagenes/bien_complementario_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 16, 4, N'Un bien con demanda perfectamente inelástica', 0, N'../Imagenes/bien_complementario_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 17, 1, N'Costo adicional de producir una unidad extra', 1, N'../Imagenes/costo_marginal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 17, 2, N'Costo total dividido por la cantidad producida', 0, N'../Imagenes/costo_marginal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 17, 3, N'Costo fijo promedio', 0, N'../Imagenes/costo_marginal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 17, 4, N'Costo de oportunidad', 0, N'../Imagenes/costo_marginal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 18, 1, N'Estado donde la oferta y la demanda están equilibradas en todos los mercados simultáneamente', 1, N'../Imagenes/equilibrio_general_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 18, 2, N'Equilibrio de la balanza comercial', 0, N'../Imagenes/equilibrio_general_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 18, 3, N'Modelo de competencia perfecta', 0, N'../Imagenes/equilibrio_general_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 18, 4, N'Equilibrio de mercado individual', 0, N'../Imagenes/equilibrio_general_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 19, 1, N'Plan de ingresos y gastos', 1, N'../Imagenes/presupuesto_personal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 19, 2, N'Ingreso total del hogar', 0, N'../Imagenes/presupuesto_personal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 19, 3, N'Lista de deudas', 0, N'../Imagenes/presupuesto_personal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 19, 4, N'Plan de inversiones', 0, N'../Imagenes/presupuesto_personal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 20, 1, N'Interés calculado sobre el capital inicial y los intereses acumulados', 1, N'../Imagenes/interes_compuesto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 20, 2, N'Interés calculado solo sobre el capital inicial', 0, N'../Imagenes/interes_compuesto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 20, 3, N'Interés pagado periódicamente', 0, N'../Imagenes/interes_compuesto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 20, 4, N'Tasa de interés fija', 0, N'../Imagenes/interes_compuesto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 21, 1, N'Estrategia para reducir el riesgo invirtiendo en diferentes activos', 1, N'../Imagenes/diversificacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 21, 2, N'Inversión en un solo tipo de activo', 0, N'../Imagenes/diversificacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 21, 3, N'Estrategia de ahorro a largo plazo', 0, N'../Imagenes/diversificacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 21, 4, N'Compra de acciones en una sola empresa', 0, N'../Imagenes/diversificacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 22, 1, N'Recursos que una empresa utiliza en sus operaciones diarias', 1, N'../Imagenes/capital_trabajo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (70, 22, 2, N'Inversiones a largo plazo', 0, N'../Imagenes/capital_trabajo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 22, 3, N'Tasa de interés de un préstamo', 0, N'../Imagenes/capital_trabajo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 22, 4, N'Valor de las acciones', 0, N'../Imagenes/capital_trabajo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 23, 1, N'Uso de deuda para aumentar el potencial de retorno de una inversión', 1, N'../Imagenes/apalancamiento_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 23, 2, N'Incremento del capital de trabajo', 0, N'../Imagenes/apalancamiento_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 23, 3, N'Financiación a corto plazo', 0, N'../Imagenes/apalancamiento_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 23, 4, N'Valor presente neto', 0, N'../Imagenes/apalancamiento_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 24, 1, N'Combinación de deuda y capital que una empresa utiliza para financiar sus operaciones', 1, N'../Imagenes/estructura_capital_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 24, 2, N'Tipo de inversiones de la empresa', 0, N'../Imagenes/estructura_capital_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 24, 3, N'Gastos operativos anuales', 0, N'../Imagenes/estructura_capital_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 24, 4, N'Cantidad de acciones emitidas', 0, N'../Imagenes/estructura_capital_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (81, 25, 1, N'Título que representa una parte proporcional del capital social de una empresa', 1, N'../Imagenes/accion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (82, 25, 2, N'Contrato de deuda emitido por el gobierno', 0, N'../Imagenes/accion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (83, 25, 3, N'Instrumento financiero utilizado para préstamos', 0, N'../Imagenes/accion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (84, 25, 4, N'Tasa de interés sobre un depósito bancario', 0, N'../Imagenes/accion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (85, 26, 1, N'Instrumento de deuda emitido por una entidad para financiarse', 1, N'../Imagenes/bono_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (86, 26, 2, N'Certificado de depósito a plazo fijo', 0, N'../Imagenes/bono_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (87, 26, 3, N'Tipo de acción en el mercado de valores', 0, N'../Imagenes/bono_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (88, 26, 4, N'Contrato de derivados financieros', 0, N'../Imagenes/bono_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (89, 27, 1, N'Contrato cuyo valor depende de un activo subyacente', 1, N'../Imagenes/derivado_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (90, 27, 2, N'Tipo de acción preferente', 0, N'../Imagenes/derivado_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (91, 27, 3, N'Instrumento utilizado en mercados de deuda', 0, N'../Imagenes/derivado_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (92, 27, 4, N'Título de propiedad de un activo tangible', 0, N'../Imagenes/derivado_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (93, 28, 1, N'Cuenta bancaria que genera intereses sobre el saldo', 1, N'../Imagenes/cuenta_ahorro_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (94, 28, 2, N'Cuenta utilizada para transacciones comerciales', 0, N'../Imagenes/cuenta_ahorro_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (95, 28, 3, N'Cuenta que permite sobregiros', 0, N'../Imagenes/cuenta_ahorro_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (96, 28, 4, N'Cuenta para inversiones en el mercado de valores', 0, N'../Imagenes/cuenta_ahorro_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (97, 29, 1, N'Préstamo otorgado por un banco a un individuo para uso personal', 1, N'../Imagenes/prestamo_personal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (98, 29, 2, N'Préstamo otorgado a empresas para capital de trabajo', 0, N'../Imagenes/prestamo_personal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (99, 29, 3, N'Préstamo para la compra de vivienda', 0, N'../Imagenes/prestamo_personal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (100, 29, 4, N'Financiación de proyectos de inversión', 0, N'../Imagenes/prestamo_personal_d.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (101, 30, 1, N'Tasa de interés que los bancos se cobran entre sí por préstamos a corto plazo', 1, N'../Imagenes/tasa_interbancaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (102, 30, 2, N'Tasa fija aplicada a préstamos hipotecarios', 0, N'../Imagenes/tasa_interbancaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (103, 30, 3, N'Tasa de interés aplicada a cuentas de ahorro', 0, N'../Imagenes/tasa_interbancaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (104, 30, 4, N'Tasa de cambio entre monedas extranjeras', 0, N'../Imagenes/tasa_interbancaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (105, 31, 1, N'Diferencia entre las exportaciones e importaciones de un país', 1, N'../Imagenes/balanza_comercial_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (106, 31, 2, N'Cantidad total de exportaciones de un país', 0, N'../Imagenes/balanza_comercial_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (107, 31, 3, N'Nivel de inversión extranjera directa', 0, N'../Imagenes/balanza_comercial_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (108, 31, 4, N'Indicador de crecimiento económico', 0, N'../Imagenes/balanza_comercial_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (109, 32, 1, N'Impuesto aplicado a los bienes importados', 1, N'../Imagenes/arancel_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (110, 32, 2, N'Tasa de cambio entre dos monedas', 0, N'../Imagenes/arancel_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (111, 32, 3, N'Tasa de interés aplicada a préstamos internacionales', 0, N'../Imagenes/arancel_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (112, 32, 4, N'Cantidad de bienes exportados', 0, N'../Imagenes/arancel_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (113, 33, 1, N'Sistema en el que el valor de la moneda es determinado por el mercado', 1, N'../Imagenes/tipo_cambio_flotante_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (114, 33, 2, N'Tipo de cambio fijado por el gobierno', 0, N'../Imagenes/tipo_cambio_flotante_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (115, 33, 3, N'Tipo de cambio basado en la paridad de poder adquisitivo', 0, N'../Imagenes/tipo_cambio_flotante_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (116, 33, 4, N'Valor de una moneda en términos de oro', 0, N'../Imagenes/tipo_cambio_flotante_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (117, 34, 1, N'Conjunto de medidas relacionadas con los ingresos y gastos del gobierno', 1, N'../Imagenes/politica_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (118, 34, 2, N'Acciones del banco central para controlar la oferta de dinero', 0, N'../Imagenes/politica_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (119, 34, 3, N'Regulaciones sobre el comercio internacional', 0, N'../Imagenes/politica_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (120, 34, 4, N'Tasas de interés aplicadas a préstamos bancarios', 0, N'../Imagenes/politica_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (121, 35, 1, N'Acciones del banco central para controlar la oferta de dinero y tasas de interés', 1, N'../Imagenes/politica_monetaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (122, 35, 2, N'Regulación de precios y salarios', 0, N'../Imagenes/politica_monetaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (123, 35, 3, N'Medidas relacionadas con el gasto público', 0, N'../Imagenes/politica_monetaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (124, 35, 4, N'Políticas para controlar el comercio exterior', 0, N'../Imagenes/politica_monetaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (125, 36, 1, N'Medida de cuánto se incrementa el ingreso total por un aumento en el gasto público', 1, N'../Imagenes/multiplicador_keynesiano_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (126, 36, 2, N'Indicador de la tasa de inflación', 0, N'../Imagenes/multiplicador_keynesiano_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (127, 36, 3, N'Medida de la productividad laboral', 0, N'../Imagenes/multiplicador_keynesiano_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (128, 36, 4, N'Tasa de retorno de las inversiones', 0, N'../Imagenes/multiplicador_keynesiano_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (129, 37, 1, N'Crisis económica mundial que tuvo lugar en la década de 1930', 1, N'../Imagenes/gran_depresion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (130, 37, 2, N'Evento que marcó el inicio de la Revolución Industrial', 0, N'../Imagenes/gran_depresion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (131, 37, 3, N'Era de crecimiento económico después de la Segunda Guerra Mundial', 0, N'../Imagenes/gran_depresion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (132, 37, 4, N'Periodo de inflación controlada en los años 1980', 0, N'../Imagenes/gran_depresion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (133, 38, 1, N'Acuerdo internacional de 1944 que estableció las bases del sistema monetario internacional', 1, N'../Imagenes/bretton_woods_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (134, 38, 2, N'Plan de recuperación económica para Europa después de la Segunda Guerra Mundial', 0, N'../Imagenes/bretton_woods_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (135, 38, 3, N'Trato comercial entre Estados Unidos y China en los años 1980', 0, N'../Imagenes/bretton_woods_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (136, 38, 4, N'Organización que promueve la cooperación en comercio internacional', 0, N'../Imagenes/bretton_woods_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (137, 39, 1, N'Crisis financiera en Estados Unidos que llevó a la creación de la Reserva Federal', 1, N'../Imagenes/panico_1907_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (138, 39, 2, N'Colapso del mercado de valores en 1929', 0, N'../Imagenes/panico_1907_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (139, 39, 3, N'Crisis del petróleo en los años 1970', 0, N'../Imagenes/panico_1907_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (140, 39, 4, N'Caída del sistema bancario en Europa en 2008', 0, N'../Imagenes/panico_1907_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (141, 40, 1, N'Sistema donde el valor de la moneda se fija en relación a otra moneda o bien', 1, N'../Imagenes/tipo_cambio_fijo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (142, 40, 2, N'Sistema donde la moneda fluctúa libremente en el mercado', 0, N'../Imagenes/tipo_cambio_fijo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (143, 40, 3, N'Valor de una moneda basado en su poder adquisitivo', 0, N'../Imagenes/tipo_cambio_fijo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (144, 40, 4, N'Valor de la moneda que cambia según la oferta y la demanda', 0, N'../Imagenes/tipo_cambio_fijo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (145, 41, 1, N'Teoría que establece que los tipos de cambio se ajustan para igualar el costo de un bien en diferentes países', 1, N'../Imagenes/ppa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (146, 41, 2, N'Valor fijo de una moneda en términos de oro', 0, N'../Imagenes/ppa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (147, 41, 3, N'Relación entre la oferta y la demanda de divisas', 0, N'../Imagenes/ppa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (148, 41, 4, N'Tasa de interés internacional', 0, N'../Imagenes/ppa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (149, 42, 1, N'Condición donde un país importa más bienes, servicios y capital de lo que exporta', 1, N'../Imagenes/deficit_cuenta_corriente_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (150, 42, 2, N'Exceso de ingresos sobre gastos públicos', 0, N'../Imagenes/deficit_cuenta_corriente_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (151, 42, 3, N'Aumento en las reservas de divisas', 0, N'../Imagenes/deficit_cuenta_corriente_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (152, 42, 4, N'Incremento de las exportaciones respecto a las importaciones', 0, N'../Imagenes/deficit_cuenta_corriente_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (153, 43, 1, N'Impuesto que aumenta a medida que el ingreso del contribuyente crece', 1, N'../Imagenes/impuesto_progresivo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (154, 43, 2, N'Impuesto que se mantiene constante sin importar el nivel de ingresos', 0, N'../Imagenes/impuesto_progresivo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (155, 43, 3, N'Impuesto aplicado solo a bienes de lujo', 0, N'../Imagenes/impuesto_progresivo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (156, 43, 4, N'Impuesto que se aplica a todos los individuos por igual', 0, N'../Imagenes/impuesto_progresivo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (157, 44, 1, N'Medida del gobierno para establecer límites máximos o mínimos en los precios de bienes y servicios', 1, N'../Imagenes/control_precios_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (158, 44, 2, N'Regulación de la cantidad de dinero en circulación', 0, N'../Imagenes/control_precios_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (159, 44, 3, N'Medida para controlar la tasa de interés', 0, N'../Imagenes/control_precios_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (160, 44, 4, N'Limitación de las importaciones y exportaciones', 0, N'../Imagenes/control_precios_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (161, 45, 1, N'Fenómeno donde el aumento del gasto público desplaza la inversión privada', 1, N'../Imagenes/crowding_out_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (162, 45, 2, N'Política de subsidios para empresas privadas', 0, N'../Imagenes/crowding_out_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (163, 45, 3, N'Incremento de la deuda pública', 0, N'../Imagenes/crowding_out_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (164, 45, 4, N'Disminución de las exportaciones', 0, N'../Imagenes/crowding_out_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (165, 46, 1, N'Conjunto de programas y políticas implementadas en los Estados Unidos para combatir la Gran Depresión', 1, N'../Imagenes/new_deal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (166, 46, 2, N'Acuerdo comercial entre Estados Unidos y Europa', 0, N'../Imagenes/new_deal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (167, 46, 3, N'Plan de reconstrucción de Europa después de la Segunda Guerra Mundial', 0, N'../Imagenes/new_deal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (168, 46, 4, N'Política monetaria para controlar la inflación', 0, N'../Imagenes/new_deal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (169, 47, 1, N'Programa de ayuda económica de Estados Unidos para la reconstrucción de Europa después de la Segunda Guerra Mundial', 1, N'../Imagenes/plan_marshall_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (170, 47, 2, N'Plan de expansión comercial en Asia', 0, N'../Imagenes/plan_marshall_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (171, 47, 3, N'Acuerdo de libre comercio entre América y Europa', 0, N'../Imagenes/plan_marshall_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (172, 47, 4, N'Política de austeridad para reducir el déficit fiscal', 0, N'../Imagenes/plan_marshall_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (173, 48, 1, N'Episodio de inflación extrema en Alemania donde los precios aumentaban a diario', 1, N'../Imagenes/hiperinflacion_alemania_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (174, 48, 2, N'Período de deflación causado por la Gran Depresión', 0, N'../Imagenes/hiperinflacion_alemania_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (175, 48, 3, N'Devaluación controlada de la moneda alemana', 0, N'../Imagenes/hiperinflacion_alemania_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (176, 48, 4, N'Incremento de las reservas de oro en el banco central alemán', 0, N'../Imagenes/hiperinflacion_alemania_d.png')
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK__Preguntas__IdDif__3D5E1FD2] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK__Preguntas__IdDif__3D5E1FD2]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCategorias]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerCategorias]
AS
BEGIN
    SELECT * FROM Categorias;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDificultades]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerDificultades]
AS
BEGIN
    SELECT * FROM Dificultades;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerPreguntas]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerPreguntas]
    @Dificultad INT,
    @Categoria INT
AS
BEGIN
    SELECT * FROM Preguntas
    WHERE (IdDificultad = @Dificultad OR @Dificultad = -1)
      AND (IdCategoria = @Categoria OR @Categoria = -1);
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestaPorId]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerRespuestaPorId]
    @IdRespuesta INT
AS
BEGIN
    SELECT * FROM Respuestas
    WHERE IdRespuesta = @IdRespuesta;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestas]    Script Date: 18/9/2024 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerRespuestas]
    @IdPregunta INT
AS
BEGIN
    SELECT * FROM Respuestas
    WHERE IdPregunta = @IdPregunta;
END;

GO
