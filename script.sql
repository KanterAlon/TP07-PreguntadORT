USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  Table [dbo].[Dificultades]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  Table [dbo].[Preguntas]    Script Date: 20/9/2024 15:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[IdDificultad] [int] NULL,
	[Enunciado] [varchar](255) NOT NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK__Pregunta__754EC09E8F032EEB] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 20/9/2024 15:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](255) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK__Respuest__D3480198330D83D0] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Macroeconomía', N'../Imagenes/1.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Microeconomía', N'../Imagenes/2.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Finanzas Personales', N'../Imagenes/3.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Finanzas Corporativas', N'../Imagenes/4.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Mercados Financieros
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
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

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
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (49, 1, 1, N'¿Qué es el PIB per cápita?', N'../Imagenes/pib_per_capita.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 1, 1, N'¿Qué es la tasa de desempleo?', N'../Imagenes/tasa_desempleo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 1, 1, N'¿Qué significa la deflación?', N'../Imagenes/deflacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 1, 1, N'¿Qué es el déficit fiscal?', N'../Imagenes/deficit_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 1, 1, N'¿Qué es la oferta monetaria?', N'../Imagenes/oferta_monetaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 1, 1, N'¿Qué es una recesión económica?', N'../Imagenes/recesion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (55, 1, 1, N'¿Qué es la balanza de pagos?', N'../Imagenes/balanza_pagos.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 1, 1, N'¿Qué es el crecimiento económico?', N'../Imagenes/crecimiento_economico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 1, 1, N'¿Qué es el índice de precios al consumidor (IPC)?', N'../Imagenes/ipc.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 1, 1, N'¿Qué es la política fiscal expansiva?', N'../Imagenes/politica_fiscal_expansiva.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (59, 1, 2, N'¿Qué es la tasa natural de desempleo?', N'../Imagenes/tasa_natural_desempleo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 1, 2, N'¿Qué es el efecto multiplicador en macroeconomía?', N'../Imagenes/efecto_multiplicador.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 1, 2, N'¿Qué es el tipo de cambio real?', N'../Imagenes/tipo_cambio_real.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 1, 2, N'¿Qué es la estanflación?', N'../Imagenes/estanflacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 1, 2, N'¿Qué es la curva de oferta agregada?', N'../Imagenes/curva_oferta_agregada.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 1, 2, N'¿Qué es la cuenta de capital en la balanza de pagos?', N'../Imagenes/cuenta_capital.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (66, 1, 2, N'¿Qué es la política monetaria restrictiva?', N'../Imagenes/politica_monetaria_restrictiva.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 1, 2, N'¿Qué es el índice de precios al productor (IPP)?', N'../Imagenes/ipp.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (68, 1, 2, N'¿Qué es la teoría del ciclo económico real?', N'../Imagenes/ciclo_economico_real.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (69, 1, 3, N'¿Qué es la hipótesis de expectativas racionales?', N'../Imagenes/expectativas_racionales.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (70, 1, 3, N'¿Qué es la paradoja de la frugalidad?', N'../Imagenes/paradoja_frugalidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (71, 1, 3, N'¿Qué es el modelo IS-LM?', N'../Imagenes/is_lm.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (72, 1, 3, N'¿Qué es el trilema de la política monetaria?', N'../Imagenes/trilema_politica_monetaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (73, 1, 3, N'¿Qué es la neutralidad del dinero?', N'../Imagenes/neutralidad_dinero.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (74, 1, 3, N'¿Qué es la política monetaria no convencional?', N'../Imagenes/politica_monetaria_no_convencional.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (75, 1, 3, N'¿Qué es la teoría de las expectativas adaptativas?', N'../Imagenes/expectativas_adaptativas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (76, 1, 3, N'¿Qué es el modelo de crecimiento endógeno?', N'../Imagenes/crecimiento_endogeno.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (77, 1, 3, N'¿Qué es la curva de Phillips aumentada?', N'../Imagenes/curva_phillips_aumentada.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (78, 1, 3, N'¿Qué es la teoría de las zonas monetarias óptimas?', N'../Imagenes/zonas_monetarias_optimas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (79, 2, 1, N'¿Qué es un mercado?', N'../Imagenes/mercado.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (80, 2, 1, N'¿Qué es un bien normal?', N'../Imagenes/bien_normal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (81, 2, 1, N'¿Qué es un bien inferior?', N'../Imagenes/bien_inferior.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (82, 2, 1, N'¿Qué es la utilidad?', N'../Imagenes/utilidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (85, 2, 1, N'¿Qué es el costo de oportunidad?', N'../Imagenes/costo_oportunidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (86, 2, 1, N'¿Qué es un monopolio?', N'../Imagenes/monopolio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (87, 2, 1, N'¿Qué es un oligopolio?', N'../Imagenes/oligopolio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (88, 2, 1, N'¿Qué es la elasticidad precio de la demanda?', N'../Imagenes/elasticidad_precio_demanda.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (89, 2, 2, N'¿Qué es la competencia perfecta?', N'../Imagenes/competencia_perfecta.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (90, 2, 2, N'¿Qué es la curva de indiferencia?', N'../Imagenes/curva_indiferencia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (92, 2, 2, N'¿Qué es el excedente del consumidor?', N'../Imagenes/excedente_consumidor.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (93, 2, 2, N'¿Qué es el excedente del productor?', N'../Imagenes/excedente_productor.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (96, 2, 2, N'¿Qué es la elasticidad ingreso de la demanda?', N'../Imagenes/elasticidad_ingreso_demanda.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (97, 2, 2, N'¿Qué es la economía de escala?', N'../Imagenes/economia_escala.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (98, 2, 2, N'¿Qué es la discriminación de precios?', N'../Imagenes/discriminacion_precios.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (100, 2, 3, N'¿Qué es la asimetría de información?', N'../Imagenes/asimetria_informacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (101, 2, 3, N'¿Qué es el equilibrio de Nash?', N'../Imagenes/equilibrio_nash.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (102, 2, 3, N'¿Qué es la competencia monopolística?', N'../Imagenes/competencia_monopolistica.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (103, 2, 3, N'¿Qué es el poder de mercado?', N'../Imagenes/poder_mercado.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (104, 2, 3, N'¿Qué es la eficiencia de Pareto?', N'../Imagenes/eficiencia_pareto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (106, 2, 3, N'¿Qué es el problema del polizón?', N'../Imagenes/problema_polizon.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (107, 2, 3, N'¿Qué es la externalidad negativa?', N'../Imagenes/externalidad_negativa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (108, 2, 3, N'¿Qué es la competencia oligopólica?', N'../Imagenes/competencia_oligopolica.png')
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (109, 3, 1, N'¿Qué es un presupuesto?', N'../Imagenes/presupuesto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (110, 3, 1, N'¿Qué es el ahorro?', N'../Imagenes/ahorro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (111, 3, 1, N'¿Qué es una cuenta de ahorros?', N'../Imagenes/cuenta_ahorros.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (112, 3, 1, N'¿Qué es el interés simple?', N'../Imagenes/interes_simple.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (113, 3, 1, N'¿Qué es un gasto fijo?', N'../Imagenes/gasto_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (114, 3, 1, N'¿Qué es un gasto variable?', N'../Imagenes/gasto_variable.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (115, 3, 1, N'¿Qué es una tarjeta de crédito?', N'../Imagenes/tarjeta_credito.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (116, 3, 1, N'¿Qué es un préstamo?', N'../Imagenes/prestamo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (117, 3, 1, N'¿Qué es un fondo de emergencia?', N'../Imagenes/fondo_emergencia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (118, 3, 1, N'¿Qué es un ingreso?', N'../Imagenes/ingreso.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (120, 3, 2, N'¿Qué es una inversión?', N'../Imagenes/inversion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (121, 3, 2, N'¿Qué es la diversificación?', N'../Imagenes/diversificacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (122, 3, 2, N'¿Qué es el riesgo financiero?', N'../Imagenes/riesgo_financiero.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (123, 3, 2, N'¿Qué es el patrimonio neto?', N'../Imagenes/patrimonio_neto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (124, 3, 2, N'¿Qué es un plazo fijo?', N'../Imagenes/plazo_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (125, 3, 2, N'¿Qué es el crédito hipotecario?', N'../Imagenes/credito_hipotecario.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (128, 3, 2, N'¿Qué es el fondo mutuo?', N'../Imagenes/fondo_mutuo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (129, 3, 3, N'¿Qué es la tasa de rendimiento ajustada por riesgo?', N'../Imagenes/tasa_rendimiento_riesgo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (130, 3, 3, N'¿Qué es la ratio Sharpe?', N'../Imagenes/ratio_sharpe.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (131, 3, 3, N'¿Qué es la gestión pasiva de inversiones?', N'../Imagenes/gestion_pasiva.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (132, 3, 3, N'¿Qué es la cartera eficiente?', N'../Imagenes/cartera_eficiente.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (133, 3, 3, N'¿Qué es la liquidez de un activo?', N'../Imagenes/liquidez_activo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (134, 3, 3, N'¿Qué es el valor temporal del dinero?', N'../Imagenes/valor_temporal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (135, 3, 3, N'¿Qué es la tasa interna de retorno (TIR)?', N'../Imagenes/tasa_interna_retorno.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (136, 3, 3, N'¿Qué es la evaluación de riesgos financieros?', N'../Imagenes/evaluacion_riesgos.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (137, 3, 3, N'¿Qué es la correlación entre activos?', N'../Imagenes/correlacion_activos.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (138, 3, 3, N'¿Qué es la teoría de carteras modernas?', N'../Imagenes/teoria_carteras.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (140, 4, 1, N'¿Qué es el presupuesto de capital?', N'../Imagenes/presupuesto_capital.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (141, 4, 1, N'¿Qué es la gestión de tesorería?', N'../Imagenes/gestion_tesoreria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (142, 4, 1, N'¿Qué es un dividendo?', N'../Imagenes/dividendo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (143, 4, 1, N'¿Qué es un activo fijo?', N'../Imagenes/activo_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (144, 4, 1, N'¿Qué es la deuda a corto plazo?', N'../Imagenes/deuda_corto_plazo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (146, 4, 1, N'¿Qué es el flujo de efectivo?', N'../Imagenes/flujo_efectivo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (147, 4, 1, N'¿Qué es la rentabilidad?', N'../Imagenes/rentabilidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (148, 4, 1, N'¿Qué es el análisis de costos?', N'../Imagenes/analisis_costos.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (149, 4, 2, N'¿Qué es el análisis de la relación precio-beneficio (PER)?', N'../Imagenes/per.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (150, 4, 2, N'¿Qué es el costo de capital?', N'../Imagenes/costo_capital.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (152, 4, 2, N'¿Qué es el ciclo de conversión de efectivo?', N'../Imagenes/ciclo_conversion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (153, 4, 2, N'¿Qué es el valor presente neto (VPN)?', N'../Imagenes/vpn.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (155, 4, 2, N'¿Qué es el margen bruto?', N'../Imagenes/margen_bruto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (156, 4, 2, N'¿Qué es el margen operativo?', N'../Imagenes/margen_operativo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (157, 4, 2, N'¿Qué es el punto de equilibrio?', N'../Imagenes/punto_equilibrio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (158, 4, 2, N'¿Qué es el ratio de endeudamiento?', N'../Imagenes/ratio_endeudamiento.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (159, 4, 3, N'¿Qué es el flujo de caja descontado (FCD)?', N'../Imagenes/fcd.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (160, 4, 3, N'¿Qué es el WACC (Weighted Average Cost of Capital)?', N'../Imagenes/wacc.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (161, 4, 3, N'¿Qué es el CAPM (Capital Asset Pricing Model)?', N'../Imagenes/capm.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (162, 4, 3, N'¿Qué es el EBIT? ', N'../Imagenes/ebit.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (163, 4, 3, N'¿Qué es el EBITDA?', N'../Imagenes/ebitda.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (164, 4, 3, N'¿Qué es el ROE (Return on Equity)?', N'../Imagenes/roe.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (165, 4, 3, N'¿Qué es el ROA (Return on Assets)?', N'../Imagenes/roa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (166, 4, 3, N'¿Qué es el riesgo sistemático?', N'../Imagenes/riesgo_sistematico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (167, 4, 3, N'¿Qué es el beta de un activo?', N'../Imagenes/beta.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (168, 4, 3, N'¿Qué es la diversificación de cartera?', N'../Imagenes/diversificacion_cartera.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (171, 5, 1, N'¿Qué es la bolsa de valores?', N'../Imagenes/bolsa_valores.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (172, 5, 1, N'¿Qué es un mercado financiero?', N'../Imagenes/mercado_financiero.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (173, 5, 1, N'¿Qué es un fondo de inversión?', N'../Imagenes/fondo_inversion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (174, 5, 1, N'¿Qué es una tasa de interés?', N'../Imagenes/tasa_interes.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (175, 5, 1, N'¿Qué es la liquidez?', N'../Imagenes/liquidez.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (176, 5, 1, N'¿Qué es una oferta pública de venta (OPV)?', N'../Imagenes/opv.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (177, 5, 1, N'¿Qué es el mercado de divisas?', N'../Imagenes/mercado_divisas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (178, 5, 1, N'¿Qué es un índice bursátil?', N'../Imagenes/indice_bursatil.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (180, 5, 2, N'¿Qué es la volatilidad?', N'../Imagenes/volatilidad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (181, 5, 2, N'¿Qué es una cartera de inversión?', N'../Imagenes/cartera_inversion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (182, 5, 2, N'¿Qué es el análisis técnico?', N'../Imagenes/analisis_tecnico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (183, 5, 2, N'¿Qué es el análisis fundamental?', N'../Imagenes/analisis_fundamental.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (184, 5, 2, N'¿Qué es el riesgo de mercado?', N'../Imagenes/riesgo_mercado.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (185, 5, 2, N'¿Qué es el trading de alta frecuencia?', N'../Imagenes/trading_alta_frecuencia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (186, 5, 2, N'¿Qué es el arbitraje?', N'../Imagenes/arbitraje.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (187, 5, 2, N'¿Qué es el margen de garantía?', N'../Imagenes/margen_garantia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (189, 5, 3, N'¿Qué es una opción financiera?', N'../Imagenes/opcion_financiera.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (190, 5, 3, N'¿Qué es un swap?', N'../Imagenes/swap.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (192, 5, 3, N'¿Qué es el VaR (Valor en Riesgo)?', N'../Imagenes/var.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (193, 5, 3, N'¿Qué es la beta de una acción?', N'../Imagenes/beta_accion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (194, 5, 3, N'¿Qué es la hipótesis de los mercados eficientes?', N'../Imagenes/mercados_eficientes.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (195, 5, 3, N'¿Qué es un CDO (Collateralized Debt Obligation)?', N'../Imagenes/cdo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (196, 5, 3, N'¿Qué es el índice de Sharpe?', N'../Imagenes/indice_sharpe.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (197, 5, 3, N'¿Qué es la curva de rendimiento?', N'../Imagenes/curva_rendimiento.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (198, 5, 3, N'¿Qué es una burbuja especulativa?', N'../Imagenes/burbuja_especulativa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (200, 6, 2, N'¿Qué es la tasa de interés anual?', N'../Imagenes/tasa_interes_anual.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (201, 6, 2, N'¿Qué es una hipoteca?', N'../Imagenes/hipoteca.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (202, 6, 2, N'¿Qué es un certificado de depósito (CD)?', N'../Imagenes/certificado_deposito.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (203, 6, 2, N'¿Qué es la banca en línea?', N'../Imagenes/banca_online.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (204, 6, 2, N'¿Qué es un cheque bancario?', N'../Imagenes/cheque_bancario.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (205, 6, 2, N'¿Qué es la liquidez bancaria?', N'../Imagenes/liquidez_bancaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (207, 6, 2, N'¿Qué es el apalancamiento financiero en la banca?', N'../Imagenes/apalancamiento_banca.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (208, 6, 2, N'¿Qué es un préstamo hipotecario?', N'../Imagenes/prestamo_hipotecario.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (209, 6, 3, N'¿Qué es el coeficiente de reservas fraccionarias?', N'../Imagenes/reservas_fraccionarias.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (210, 6, 3, N'¿Qué es una línea de crédito renovable?', N'../Imagenes/linea_credito.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (211, 6, 3, N'¿Qué es un acuerdo de recompra (repo)?', N'../Imagenes/acuerdo_repo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (212, 6, 3, N'¿Qué es la regulación bancaria de Basilea III?', N'../Imagenes/basilea_iii.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (213, 6, 3, N'¿Qué es el riesgo de liquidez?', N'../Imagenes/riesgo_liquidez.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (214, 6, 3, N'¿Qué es el crédito sindicado?', N'../Imagenes/credito_sindicado.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (215, 6, 3, N'¿Qué es la banca en la sombra (shadow banking)?', N'../Imagenes/banca_sombra.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (216, 6, 3, N'¿Qué es la titulización de activos?', N'../Imagenes/titulizacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (217, 6, 3, N'¿Qué es el margen de intermediación bancaria?', N'../Imagenes/margen_intermediacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (218, 6, 3, N'¿Qué es el riesgo sistémico?', N'../Imagenes/riesgo_sistemico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (219, 7, 1, N'¿Qué es el comercio internacional?', N'../Imagenes/comercio_internacional.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (220, 7, 1, N'¿Qué es la globalización económica?', N'../Imagenes/globalizacion_economica.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (222, 7, 1, N'¿Qué es el tipo de cambio?', N'../Imagenes/tipo_cambio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (224, 7, 1, N'¿Qué es una exportación?', N'../Imagenes/exportacion.png')
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (225, 7, 1, N'¿Qué es una importación?', N'../Imagenes/importacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (226, 7, 1, N'¿Qué es un bloque económico?', N'../Imagenes/bloque_economico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (227, 7, 1, N'¿Qué es la OMC?', N'../Imagenes/omc.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (228, 7, 1, N'¿Qué es un tratado de libre comercio?', N'../Imagenes/tlc.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (229, 7, 2, N'¿Qué es el Fondo Monetario Internacional (FMI)?', N'../Imagenes/fmi.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (230, 7, 2, N'¿Qué es el tipo de cambio fijo?', N'../Imagenes/tipo_cambio_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (231, 7, 2, N'¿Qué es la devaluación?', N'../Imagenes/devaluacion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (232, 7, 2, N'¿Qué es la paridad de poder adquisitivo?', N'../Imagenes/ppa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (234, 7, 2, N'¿Qué es un déficit comercial?', N'../Imagenes/deficit_comercial.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (235, 7, 2, N'¿Qué es la inversión extranjera directa (IED)?', N'../Imagenes/ied.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (236, 7, 2, N'¿Qué es el proteccionismo?', N'../Imagenes/proteccionismo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (237, 7, 2, N'¿Qué es el dumping?', N'../Imagenes/dumping.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (238, 7, 2, N'¿Qué es el acuerdo de Bretton Woods?', N'../Imagenes/bretton_woods.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (240, 7, 3, N'¿Qué es la teoría de las ventajas comparativas?', N'../Imagenes/ventajas_comparativas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (241, 7, 3, N'¿Qué es la movilidad de capitales?', N'../Imagenes/movilidad_capitales.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (242, 7, 3, N'¿Qué es la política cambiaria?', N'../Imagenes/politica_cambiaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (243, 7, 3, N'¿Qué es el efecto Balassa-Samuelson?', N'../Imagenes/balassa_samuelson.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (244, 7, 3, N'¿Qué es la cuenta financiera de la balanza de pagos?', N'../Imagenes/cuenta_financiera.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (245, 7, 3, N'¿Qué es la trampa de liquidez?', N'../Imagenes/trampa_liquidez.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (246, 7, 3, N'¿Qué es el tipo de cambio nominal?', N'../Imagenes/tipo_cambio_nominal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (247, 7, 3, N'¿Qué es el riesgo país?', N'../Imagenes/riesgo_pais.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (248, 7, 3, N'¿Qué es la economía abierta?', N'../Imagenes/economia_abierta.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (251, 8, 1, N'¿Qué es un impuesto directo?', N'../Imagenes/impuesto_directo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (252, 8, 1, N'¿Qué es un impuesto indirecto?', N'../Imagenes/impuesto_indirecto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (253, 8, 1, N'¿Qué es un subsidio?', N'../Imagenes/subsidio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (254, 8, 1, N'¿Qué es el gasto público?', N'../Imagenes/gasto_publico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (256, 8, 1, N'¿Qué es el superávit fiscal?', N'../Imagenes/superavit_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (257, 8, 1, N'¿Qué es la deuda pública?', N'../Imagenes/deuda_publica.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (258, 8, 1, N'¿Qué es la recaudación tributaria?', N'../Imagenes/recaudacion_tributaria.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (261, 8, 2, N'¿Qué es el impuesto progresivo?', N'../Imagenes/impuesto_progresivo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (263, 8, 2, N'¿Qué es el gasto de inversión?', N'../Imagenes/gasto_inversion.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (264, 8, 2, N'¿Qué es el gasto corriente?', N'../Imagenes/gasto_corriente.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (266, 8, 2, N'¿Qué es la regla de oro de la política fiscal?', N'../Imagenes/regla_oro_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (267, 8, 2, N'¿Qué es el equilibrio fiscal?', N'../Imagenes/equilibrio_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (268, 8, 2, N'¿Qué es la política de austeridad?', N'../Imagenes/politica_austeridad.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (269, 8, 3, N'¿Qué es la política fiscal contractiva?', N'../Imagenes/politica_fiscal_contractiva.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (271, 8, 3, N'¿Qué es el efecto multiplicador de la inversión?', N'../Imagenes/efecto_multiplicador.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (272, 8, 3, N'¿Qué es la neutralidad fiscal?', N'../Imagenes/neutralidad_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (273, 8, 3, N'¿Qué es el principio de equivalencia ricardiana?', N'../Imagenes/equivalencia_ricardiana.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (274, 8, 3, N'¿Qué es el estabilizador automático?', N'../Imagenes/estabilizador_automatico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (275, 8, 3, N'¿Qué es la regla fiscal?', N'../Imagenes/regla_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (276, 8, 3, N'¿Qué es la brecha fiscal?', N'../Imagenes/brecha_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (277, 8, 3, N'¿Qué es el trilema fiscal?', N'../Imagenes/trilema_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (278, 8, 3, N'¿Qué es la indexación fiscal?', N'../Imagenes/indexacion_fiscal.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (283, 9, 1, N'¿Qué fue el Bretton Woods?', N'../Imagenes/bretton_woods.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (284, 9, 1, N'¿Qué fue la Revolución Industrial?', N'../Imagenes/revolucion_industrial.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (286, 9, 1, N'¿Qué fue la crisis de 2008?', N'../Imagenes/crisis_2008.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (287, 9, 1, N'¿Qué fue la fiebre del oro de California?', N'../Imagenes/fiebre_oro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (288, 9, 1, N'¿Qué fue la caída del muro de Berlín y su impacto económico?', N'../Imagenes/caida_muro_berlin.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (289, 9, 2, N'¿Qué fue la crisis del petróleo de los años 1970?', N'../Imagenes/crisis_petroleo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (290, 9, 2, N'¿Qué fue el estándar oro?', N'../Imagenes/estandar_oro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (291, 9, 2, N'¿Qué fue la hipoteca subprime?', N'../Imagenes/hipoteca_subprime.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (292, 9, 2, N'¿Qué fue la crisis asiática de 1997?', N'../Imagenes/crisis_asiatica.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (293, 9, 2, N'¿Qué fue el crack del 29?', N'../Imagenes/crack_29.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (294, 9, 2, N'¿Qué fue la inflación en los años 1980?', N'../Imagenes/inflacion_1980.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (295, 9, 2, N'¿Qué fue el Tratado de Maastricht?', N'../Imagenes/tratado_maastricht.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (296, 9, 2, N'¿Qué fue el acuerdo Plaza?', N'../Imagenes/acuerdo_plaza.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (297, 9, 2, N'¿Qué fue el colapso de Enron?', N'../Imagenes/colapso_enron.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (298, 9, 2, N'¿Qué fue la desintegración de la URSS y su impacto económico?', N'../Imagenes/desintegracion_urss.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (299, 9, 3, N'¿Qué fue la crisis del rublo en 1998?', N'../Imagenes/crisis_rublo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (300, 9, 3, N'¿Qué fue el choque Volcker?', N'../Imagenes/choque_volcker.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (301, 9, 3, N'¿Qué fue el Plan Brady?', N'../Imagenes/plan_brady.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (302, 9, 3, N'¿Qué fue la crisis mexicana de 1994?', N'../Imagenes/crisis_mexicana.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (303, 9, 3, N'¿Qué fue el acuerdo Smithsonian?', N'../Imagenes/acuerdo_smithsonian.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (304, 9, 3, N'¿Qué fue la crisis de la deuda latinoamericana de los años 1980?', N'../Imagenes/crisis_deuda_latinoamericana.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (305, 9, 3, N'¿Qué fue la burbuja de los tulipanes?', N'../Imagenes/burbuja_tulipanes.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (306, 9, 3, N'¿Qué fue el periodo de las Siete Hermanas?', N'../Imagenes/siete_hermanas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (307, 9, 3, N'¿Qué fue el Tratado de Tordesillas y su impacto económico?', N'../Imagenes/tratado_tordesillas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (308, 9, 3, N'¿Qué fue el shock petrolero de 1973?', N'../Imagenes/shock_petrolero_1973.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (309, 6, 1, N'¿Qué es una tarjeta de débito?', N'../Imagenes/tarjeta_debito.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (313, 6, 1, N'¿Qué es una cuenta corriente?', N'../Imagenes/cuenta_corriente.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (315, 6, 1, N'¿Qué es un cajero automático (ATM)?', N'../Imagenes/cajero_automatico.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (316, 6, 1, N'¿Qué es un depósito a plazo fijo?', N'../Imagenes/deposito_plazo_fijo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (317, 6, 1, N'¿Qué es un seguro de vida?', N'../Imagenes/seguro_vida.png')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

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
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (100, 29, 4, N'Financiación de proyectos de inversión', 0, N'../Imagenes/prestamo_personal_d.png')
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
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (177, 49, 1, N'Valor total de los bienes y servicios producidos en un país por persona', 1, N'../Imagenes/pib_per_capita_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (178, 49, 2, N'Ingresos totales de un gobierno', 0, N'../Imagenes/pib_per_capita_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (179, 49, 3, N'Gasto de los consumidores', 0, N'../Imagenes/pib_per_capita_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (180, 49, 4, N'Tasa de inflación ajustada', 0, N'../Imagenes/pib_per_capita_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (181, 50, 1, N'Porcentaje de la fuerza laboral que está desempleada', 1, N'../Imagenes/tasa_desempleo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (182, 50, 2, N'Tasa de crecimiento económico', 0, N'../Imagenes/tasa_desempleo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (183, 50, 3, N'Ingreso promedio de los trabajadores', 0, N'../Imagenes/tasa_desempleo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (184, 50, 4, N'Porcentaje de la población total que trabaja', 0, N'../Imagenes/tasa_desempleo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (185, 51, 1, N'Caída generalizada de los precios', 1, N'../Imagenes/deflacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (186, 51, 2, N'Aumento generalizado de los precios', 0, N'../Imagenes/deflacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (187, 51, 3, N'Equilibrio de precios', 0, N'../Imagenes/deflacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (188, 51, 4, N'Ajuste de precios por inflación', 0, N'../Imagenes/deflacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (189, 52, 1, N'Cuando los gastos del gobierno superan sus ingresos', 1, N'../Imagenes/deficit_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (190, 52, 2, N'Cuando los ingresos del gobierno superan sus gastos', 0, N'../Imagenes/deficit_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (191, 52, 3, N'Equilibrio entre ingresos y gastos', 0, N'../Imagenes/deficit_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (192, 52, 4, N'Reducción de la deuda pública', 0, N'../Imagenes/deficit_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (193, 53, 1, N'Cantidad total de dinero disponible en la economía', 1, N'../Imagenes/oferta_monetaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (194, 53, 2, N'Tasa de interés', 0, N'../Imagenes/oferta_monetaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (195, 53, 3, N'Valor de las exportaciones', 0, N'../Imagenes/oferta_monetaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (196, 53, 4, N'Ingreso per cápita', 0, N'../Imagenes/oferta_monetaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (197, 54, 1, N'Periodo prolongado de declive en la actividad económica', 1, N'../Imagenes/recesion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (198, 54, 2, N'Incremento en la actividad económica', 0, N'../Imagenes/recesion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (199, 54, 3, N'Estabilización de los precios', 0, N'../Imagenes/recesion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (200, 54, 4, N'Crecimiento constante del PIB', 0, N'../Imagenes/recesion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (201, 55, 1, N'Registro de todas las transacciones económicas entre residentes de un país y el resto del mundo', 1, N'../Imagenes/balanza_pagos_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (202, 55, 2, N'Valor de las exportaciones netas', 0, N'../Imagenes/balanza_pagos_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (203, 55, 3, N'Ingreso total del gobierno', 0, N'../Imagenes/balanza_pagos_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (204, 55, 4, N'Tasa de cambio', 0, N'../Imagenes/balanza_pagos_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (205, 56, 1, N'Aumento sostenido del nivel de producción y bienestar en una economía', 1, N'../Imagenes/crecimiento_economico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (206, 56, 2, N'Reducción del déficit comercial', 0, N'../Imagenes/crecimiento_economico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (207, 56, 3, N'Incremento de los impuestos', 0, N'../Imagenes/crecimiento_economico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (208, 56, 4, N'Mantención del valor de la moneda', 0, N'../Imagenes/crecimiento_economico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (209, 57, 1, N'Índice que mide la variación de precios de una canasta de bienes y servicios representativa del consumo familiar', 1, N'../Imagenes/ipc_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (210, 57, 2, N'Índice que mide el nivel de producción industrial', 0, N'../Imagenes/ipc_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (211, 57, 3, N'Medida del valor total de las exportaciones', 0, N'../Imagenes/ipc_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (212, 57, 4, N'Tasa de crecimiento del PIB', 0, N'../Imagenes/ipc_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (213, 58, 1, N'Medidas para aumentar el gasto público y reducir los impuestos para estimular la economía', 1, N'../Imagenes/politica_fiscal_expansiva_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (214, 58, 2, N'Medidas para reducir la oferta monetaria', 0, N'../Imagenes/politica_fiscal_expansiva_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (215, 58, 3, N'Medidas para aumentar la tasa de interés', 0, N'../Imagenes/politica_fiscal_expansiva_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (216, 58, 4, N'Medidas para controlar la inflación', 0, N'../Imagenes/politica_fiscal_expansiva_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (217, 59, 1, N'Tasa de desempleo en la que la inflación es estable y la economía está en pleno empleo', 1, N'../Imagenes/tasa_natural_desempleo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (218, 59, 2, N'Tasa de crecimiento de la oferta monetaria', 0, N'../Imagenes/tasa_natural_desempleo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (219, 59, 3, N'Tasa de cambio', 0, N'../Imagenes/tasa_natural_desempleo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (220, 59, 4, N'Nivel de ingreso per cápita', 0, N'../Imagenes/tasa_natural_desempleo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (221, 60, 1, N'Incremento en la inversión y el consumo que resulta del aumento del gasto público', 1, N'../Imagenes/efecto_multiplicador_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (222, 60, 2, N'Reducción de la oferta monetaria', 0, N'../Imagenes/efecto_multiplicador_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (223, 60, 3, N'Incremento de la tasa de interés', 0, N'../Imagenes/efecto_multiplicador_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (224, 60, 4, N'Control de precios y salarios', 0, N'../Imagenes/efecto_multiplicador_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (225, 61, 1, N'Tipo de cambio ajustado por la diferencia de inflación entre dos países', 1, N'../Imagenes/tipo_cambio_real_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (226, 61, 2, N'Valor nominal de la moneda', 0, N'../Imagenes/tipo_cambio_real_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (227, 61, 3, N'Tipo de cambio fijo', 0, N'../Imagenes/tipo_cambio_real_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (228, 61, 4, N'Tipo de cambio basado en el poder adquisitivo', 0, N'../Imagenes/tipo_cambio_real_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (233, 63, 1, N'Condición en la que la economía experimenta inflación alta y estancamiento al mismo tiempo', 1, N'../Imagenes/estanflacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (234, 63, 2, N'Aumento de la inflación con crecimiento económico', 0, N'../Imagenes/estanflacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (235, 63, 3, N'Baja inflación con alto crecimiento', 0, N'../Imagenes/estanflacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (236, 63, 4, N'Reducción del gasto público', 0, N'../Imagenes/estanflacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (237, 64, 1, N'Gráfica que muestra la relación entre el nivel de precios y la cantidad total de bienes y servicios producidos', 1, N'../Imagenes/curva_oferta_agregada_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (238, 64, 2, N'Curva que representa el equilibrio del mercado', 0, N'../Imagenes/curva_oferta_agregada_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (239, 64, 3, N'Gráfica que mide el ingreso nacional', 0, N'../Imagenes/curva_oferta_agregada_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (240, 64, 4, N'Curva de la balanza comercial', 0, N'../Imagenes/curva_oferta_agregada_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (241, 65, 1, N'Sección de la balanza de pagos que registra el cambio de activos y pasivos financieros con el exterior', 1, N'../Imagenes/cuenta_capital_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (242, 65, 2, N'Sección que mide el valor de las importaciones', 0, N'../Imagenes/cuenta_capital_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (243, 65, 3, N'Nivel de las reservas de oro', 0, N'../Imagenes/cuenta_capital_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (244, 65, 4, N'Registro del flujo de ingresos', 0, N'../Imagenes/cuenta_capital_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (245, 66, 1, N'Acciones del banco central para reducir la oferta de dinero y controlar la inflación', 1, N'../Imagenes/politica_monetaria_restrictiva_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (246, 66, 2, N'Medidas para aumentar el gasto público', 0, N'../Imagenes/politica_monetaria_restrictiva_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (247, 66, 3, N'Políticas para reducir el desempleo', 0, N'../Imagenes/politica_monetaria_restrictiva_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (248, 66, 4, N'Ajustes en la política fiscal', 0, N'../Imagenes/politica_monetaria_restrictiva_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (249, 67, 1, N'Índice que mide la variación de precios de los bienes y servicios producidos por las empresas', 1, N'../Imagenes/ipp_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (250, 67, 2, N'Indicador del nivel de empleo', 0, N'../Imagenes/ipp_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (251, 67, 3, N'Medida del PIB', 0, N'../Imagenes/ipp_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (252, 67, 4, N'Valor de las exportaciones', 0, N'../Imagenes/ipp_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (253, 68, 1, N'Teoría que atribuye las fluctuaciones económicas a cambios en la productividad y la tecnología', 1, N'../Imagenes/ciclo_economico_real_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (254, 68, 2, N'Modelo que mide la oferta monetaria', 0, N'../Imagenes/ciclo_economico_real_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (255, 68, 3, N'Indicador del crecimiento económico', 0, N'../Imagenes/ciclo_economico_real_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (256, 68, 4, N'Política fiscal expansiva', 0, N'../Imagenes/ciclo_economico_real_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (257, 69, 1, N'Teoría que sugiere que las personas utilizan toda la información disponible para tomar decisiones económicas', 1, N'../Imagenes/expectativas_racionales_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (258, 69, 2, N'Teoría que indica que las expectativas no afectan las decisiones económicas', 0, N'../Imagenes/expectativas_racionales_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (259, 69, 3, N'Teoría que establece la relación entre la oferta y la demanda', 0, N'../Imagenes/expectativas_racionales_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (260, 69, 4, N'Modelo de competencia perfecta', 0, N'../Imagenes/expectativas_racionales_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (261, 70, 1, N'Concepto que indica que el ahorro excesivo puede llevar a una disminución del ingreso y la producción total', 1, N'../Imagenes/paradoja_frugalidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (262, 70, 2, N'Teoría que sugiere que el ahorro es siempre positivo', 0, N'../Imagenes/paradoja_frugalidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (263, 70, 3, N'Medida de la tasa de interés', 0, N'../Imagenes/paradoja_frugalidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (264, 70, 4, N'Indicador del crecimiento económico', 0, N'../Imagenes/paradoja_frugalidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (265, 71, 1, N'Modelo que muestra la interacción entre el mercado de bienes y el mercado de dinero', 1, N'../Imagenes/is_lm_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (266, 71, 2, N'Modelo de competencia perfecta', 0, N'../Imagenes/is_lm_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (267, 71, 3, N'Teoría de la oferta y la demanda', 0, N'../Imagenes/is_lm_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (268, 71, 4, N'Curva de la balanza comercial', 0, N'../Imagenes/is_lm_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (269, 72, 1, N'Teoría que indica que es imposible tener simultáneamente un tipo de cambio fijo, libre movimiento de capitales y una política monetaria independiente', 1, N'../Imagenes/trilema_politica_monetaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (270, 72, 2, N'Medida de la tasa de interés', 0, N'../Imagenes/trilema_politica_monetaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (271, 72, 3, N'Indicador del crecimiento económico', 0, N'../Imagenes/trilema_politica_monetaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (272, 72, 4, N'Gráfica de la oferta agregada', 0, N'../Imagenes/trilema_politica_monetaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (273, 73, 1, N'Teoría que sugiere que las variaciones en la cantidad de dinero solo afectan los precios y no las variables reales como la producción', 1, N'../Imagenes/neutralidad_dinero_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (274, 73, 2, N'Teoría que indica que el dinero afecta tanto los precios como la producción', 0, N'../Imagenes/neutralidad_dinero_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (275, 73, 3, N'Modelo de competencia perfecta', 0, N'../Imagenes/neutralidad_dinero_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (276, 73, 4, N'Indicador de la balanza de pagos', 0, N'../Imagenes/neutralidad_dinero_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (277, 74, 1, N'Políticas no tradicionales, como la compra de activos financieros, utilizadas cuando las tasas de interés están cerca de cero', 1, N'../Imagenes/politica_monetaria_no_convencional_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (278, 74, 2, N'Medidas para reducir la inflación', 0, N'../Imagenes/politica_monetaria_no_convencional_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (279, 74, 3, N'Acciones para aumentar la tasa de interés', 0, N'../Imagenes/politica_monetaria_no_convencional_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (280, 74, 4, N'Control de precios y salarios', 0, N'../Imagenes/politica_monetaria_no_convencional_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (281, 75, 1, N'Teoría que indica que las personas ajustan sus expectativas en base a errores pasados', 1, N'../Imagenes/expectativas_adaptativas_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (282, 75, 2, N'Teoría que sugiere que las expectativas son racionales', 0, N'../Imagenes/expectativas_adaptativas_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (283, 75, 3, N'Gráfica de la oferta agregada', 0, N'../Imagenes/expectativas_adaptativas_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (284, 75, 4, N'Indicador del nivel de precios', 0, N'../Imagenes/expectativas_adaptativas_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (285, 76, 1, N'Es el ajuste automático de la economía hacia el equilibrio en el largo plazo, eliminando el desempleo y la inflación', 1, N'../Imagenes/ajuste_automatico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (286, 76, 2, N'Medida de la tasa de interés', 0, N'../Imagenes/ajuste_automatico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (287, 76, 3, N'Control de la oferta monetaria', 0, N'../Imagenes/ajuste_automatico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (288, 76, 4, N'Indicador del crecimiento económico', 0, N'../Imagenes/ajuste_automatico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (289, 77, 1, N'Enfoque que indica que las políticas monetarias y fiscales solo tienen efectos temporales sobre la economía', 1, N'../Imagenes/nueva_economia_clasica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (290, 77, 2, N'Teoría que sugiere la intervención del gobierno para el crecimiento económico', 0, N'../Imagenes/nueva_economia_clasica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (291, 77, 3, N'Medida de la inflación', 0, N'../Imagenes/nueva_economia_clasica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (292, 77, 4, N'Indicador del nivel de empleo', 0, N'../Imagenes/nueva_economia_clasica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (293, 78, 1, N'El principio que indica que las crisis económicas pueden propagarse de un país a otro debido a la interdependencia económica', 1, N'../Imagenes/contagio_economico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (294, 78, 2, N'Incremento en el comercio internacional', 0, N'../Imagenes/contagio_economico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (295, 78, 3, N'Control de la tasa de cambio', 0, N'../Imagenes/contagio_economico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (296, 78, 4, N'Indicador del crecimiento económico', 0, N'../Imagenes/contagio_economico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (297, 79, 1, N'Lugar donde se intercambian bienes y servicios', 1, N'../Imagenes/mercado_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (298, 79, 2, N'Entidad bancaria', 0, N'../Imagenes/mercado_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (299, 79, 3, N'Sistema de comercio internacional', 0, N'../Imagenes/mercado_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (300, 79, 4, N'Metodología de producción', 0, N'../Imagenes/mercado_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (301, 80, 1, N'Bien cuyo consumo aumenta cuando aumenta el ingreso', 1, N'../Imagenes/bien_normal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (302, 80, 2, N'Bien cuyo precio es controlado por el gobierno', 0, N'../Imagenes/bien_normal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (303, 80, 3, N'Bien que no tiene sustitutos', 0, N'../Imagenes/bien_normal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (304, 80, 4, N'Bien cuyo consumo disminuye con el ingreso', 0, N'../Imagenes/bien_normal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (305, 81, 1, N'Bien cuyo consumo disminuye cuando aumenta el ingreso', 1, N'../Imagenes/bien_inferior_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (306, 81, 2, N'Bien de lujo', 0, N'../Imagenes/bien_inferior_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (307, 81, 3, N'Bien cuyo precio es estable', 0, N'../Imagenes/bien_inferior_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (308, 81, 4, N'Bien que tiene una alta elasticidad', 0, N'../Imagenes/bien_inferior_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (309, 82, 1, N'Satisfacción o placer que se obtiene del consumo de un bien o servicio', 1, N'../Imagenes/utilidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (310, 82, 2, N'Costo de producción de un bien', 0, N'../Imagenes/utilidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (311, 82, 3, N'Ingreso generado por la venta de un bien', 0, N'../Imagenes/utilidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (312, 82, 4, N'Nivel de producción en una empresa', 0, N'../Imagenes/utilidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (321, 85, 1, N'Valor de la mejor alternativa sacrificada al tomar una decisión', 1, N'../Imagenes/costo_oportunidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (322, 85, 2, N'Costo de producción', 0, N'../Imagenes/costo_oportunidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (323, 85, 3, N'Precio de mercado de un bien', 0, N'../Imagenes/costo_oportunidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (324, 85, 4, N'Ingreso marginal', 0, N'../Imagenes/costo_oportunidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (325, 86, 1, N'Empresa que controla todo el mercado de un bien o servicio', 1, N'../Imagenes/monopolio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (326, 86, 2, N'Mercado con muchos competidores', 0, N'../Imagenes/monopolio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (327, 86, 3, N'Política de precios máximos', 0, N'../Imagenes/monopolio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (328, 86, 4, N'Indicador de inflación', 0, N'../Imagenes/monopolio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (329, 87, 1, N'Mercado dominado por un pequeño número de grandes empresas', 1, N'../Imagenes/oligopolio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (330, 87, 2, N'Mercado con muchos vendedores', 0, N'../Imagenes/oligopolio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (331, 87, 3, N'Mercado donde el precio es fijado por el gobierno', 0, N'../Imagenes/oligopolio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (332, 87, 4, N'Empresa que controla todo el mercado', 0, N'../Imagenes/oligopolio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (333, 88, 1, N'Medida de la respuesta de la cantidad demandada a cambios en el precio', 1, N'../Imagenes/elasticidad_precio_demanda_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (334, 88, 2, N'Costo de producción de un bien', 0, N'../Imagenes/elasticidad_precio_demanda_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (335, 88, 3, N'Cantidad de un bien ofrecido en el mercado', 0, N'../Imagenes/elasticidad_precio_demanda_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (336, 88, 4, N'Ingreso total de una empresa', 0, N'../Imagenes/elasticidad_precio_demanda_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (337, 89, 1, N'Mercado donde hay muchos compradores y vendedores y ningún participante puede influir en el precio', 1, N'../Imagenes/competencia_perfecta_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (338, 89, 2, N'Mercado controlado por una sola empresa', 0, N'../Imagenes/competencia_perfecta_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (339, 89, 3, N'Mercado donde el precio es fijado por el gobierno', 0, N'../Imagenes/competencia_perfecta_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (340, 89, 4, N'Mercado con pocos competidores', 0, N'../Imagenes/competencia_perfecta_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (341, 90, 1, N'Gráfica que muestra las combinaciones de dos bienes que proporcionan el mismo nivel de utilidad al consumidor', 1, N'../Imagenes/curva_indiferencia_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (342, 90, 2, N'Curva que muestra la oferta de un bien', 0, N'../Imagenes/curva_indiferencia_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (343, 90, 3, N'Curva que representa el costo de producción', 0, N'../Imagenes/curva_indiferencia_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (344, 90, 4, N'Gráfica de la demanda del mercado', 0, N'../Imagenes/curva_indiferencia_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (349, 92, 1, N'Beneficio adicional que obtiene el consumidor por pagar menos de lo que está dispuesto a pagar', 1, N'../Imagenes/excedente_consumidor_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (350, 92, 2, N'Precio máximo que un consumidor está dispuesto a pagar', 0, N'../Imagenes/excedente_consumidor_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (351, 92, 3, N'Costo de producción de un bien', 0, N'../Imagenes/excedente_consumidor_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (352, 92, 4, N'Ganancia obtenida por una empresa', 0, N'../Imagenes/excedente_consumidor_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (353, 93, 1, N'Beneficio adicional que obtiene el productor por vender a un precio mayor al que estaría dispuesto a vender', 1, N'../Imagenes/excedente_productor_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (354, 93, 2, N'Costo de oportunidad de producir un bien', 0, N'../Imagenes/excedente_productor_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (355, 93, 3, N'Precio mínimo de venta de un bien', 0, N'../Imagenes/excedente_productor_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (356, 93, 4, N'Ingreso total de la empresa', 0, N'../Imagenes/excedente_productor_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (365, 96, 1, N'Medida de la respuesta de la cantidad demandada a cambios en el ingreso', 1, N'../Imagenes/elasticidad_ingreso_demanda_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (366, 96, 2, N'Grado de sensibilidad de la oferta ante cambios de precios', 0, N'../Imagenes/elasticidad_ingreso_demanda_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (367, 96, 3, N'Medida del costo de producción', 0, N'../Imagenes/elasticidad_ingreso_demanda_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (368, 96, 4, N'Cantidad de bienes complementarios', 0, N'../Imagenes/elasticidad_ingreso_demanda_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (369, 97, 1, N'Reducción del costo promedio a medida que se incrementa la producción', 1, N'../Imagenes/economia_escala_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (370, 97, 2, N'Incremento del costo marginal a medida que se incrementa la producción', 0, N'../Imagenes/economia_escala_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (371, 97, 3, N'Aumento del precio a medida que disminuye la oferta', 0, N'../Imagenes/economia_escala_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (372, 97, 4, N'Cantidad total de bienes producidos', 0, N'../Imagenes/economia_escala_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (373, 98, 1, N'Estrategia de cobrar precios diferentes a diferentes consumidores por el mismo bien o servicio', 1, N'../Imagenes/discriminacion_precios_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (374, 98, 2, N'Política de precios máximos', 0, N'../Imagenes/discriminacion_precios_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (375, 98, 3, N'Establecimiento de un precio fijo para todos los consumidores', 0, N'../Imagenes/discriminacion_precios_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (376, 98, 4, N'Reducción de precios por promociones', 0, N'../Imagenes/discriminacion_precios_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (381, 100, 1, N'Situación en la que una parte en una transacción tiene más información que la otra', 1, N'../Imagenes/asimetria_informacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (382, 100, 2, N'Relación de precios entre bienes complementarios', 0, N'../Imagenes/asimetria_informacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (383, 100, 3, N'Control total del mercado por una empresa', 0, N'../Imagenes/asimetria_informacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (384, 100, 4, N'Análisis de los costos de producción', 0, N'../Imagenes/asimetria_informacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (385, 101, 1, N'Situación en la que cada jugador en un juego elige su mejor estrategia dado lo que hacen los demás', 1, N'../Imagenes/equilibrio_nash_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (386, 101, 2, N'Punto donde la demanda es igual a la oferta', 0, N'../Imagenes/equilibrio_nash_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (387, 101, 3, N'Estrategia óptima para maximizar el ingreso', 0, N'../Imagenes/equilibrio_nash_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (388, 101, 4, N'Nivel de utilidad máximo', 0, N'../Imagenes/equilibrio_nash_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (389, 102, 1, N'Mercado en el que muchas empresas venden productos diferenciados', 1, N'../Imagenes/competencia_monopolistica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (390, 102, 2, N'Mercado donde una empresa controla toda la oferta', 0, N'../Imagenes/competencia_monopolistica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (391, 102, 3, N'Competencia entre dos empresas', 0, N'../Imagenes/competencia_monopolistica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (392, 102, 4, N'Mercado con productos homogéneos', 0, N'../Imagenes/competencia_monopolistica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (393, 103, 1, N'Capacidad de una empresa para influir en los precios de mercado', 1, N'../Imagenes/poder_mercado_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (394, 103, 2, N'Cantidad de bienes y servicios producidos por una empresa', 0, N'../Imagenes/poder_mercado_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (395, 103, 3, N'Medida de la productividad de los factores de producción', 0, N'../Imagenes/poder_mercado_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (396, 103, 4, N'Nivel de eficiencia en la producción', 0, N'../Imagenes/poder_mercado_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (397, 104, 1, N'Situación en la que no es posible mejorar el bienestar de una persona sin empeorar el de otra', 1, N'../Imagenes/eficiencia_pareto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (398, 104, 2, N'Nivel de producción que maximiza los beneficios', 0, N'../Imagenes/eficiencia_pareto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (399, 104, 3, N'Situación donde la oferta es mayor que la demanda', 0, N'../Imagenes/eficiencia_pareto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (400, 104, 4, N'Condición de competencia perfecta', 0, N'../Imagenes/eficiencia_pareto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (405, 106, 1, N'Problema que ocurre cuando los individuos no tienen incentivo para contribuir al bien común', 1, N'../Imagenes/problema_polizon_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (406, 106, 2, N'Costo adicional de producir una unidad extra', 0, N'../Imagenes/problema_polizon_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (407, 106, 3, N'Beneficio marginal de un bien público', 0, N'../Imagenes/problema_polizon_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (408, 106, 4, N'Reducción de costos mediante la producción en masa', 0, N'../Imagenes/problema_polizon_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (409, 107, 1, N'Impacto adverso de una actividad económica en terceros no involucrados', 1, N'../Imagenes/externalidad_negativa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (410, 107, 2, N'Beneficio adicional obtenido por el productor', 0, N'../Imagenes/externalidad_negativa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (411, 107, 3, N'Costo marginal de producción', 0, N'../Imagenes/externalidad_negativa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (412, 107, 4, N'Aumento en la oferta de bienes y servicios', 0, N'../Imagenes/externalidad_negativa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (413, 108, 1, N'Situación de mercado donde unas pocas empresas tienen el control', 1, N'../Imagenes/competencia_oligopolica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (414, 108, 2, N'Mercado con productos homogéneos', 0, N'../Imagenes/competencia_oligopolica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (415, 108, 3, N'Condición donde la demanda es igual a la oferta', 0, N'../Imagenes/competencia_oligopolica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (416, 108, 4, N'Mercado controlado por el gobierno', 0, N'../Imagenes/competencia_oligopolica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (417, 109, 1, N'Plan para gestionar ingresos y gastos', 1, N'../Imagenes/presupuesto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (418, 109, 2, N'Cuenta bancaria con intereses', 0, N'../Imagenes/presupuesto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (419, 109, 3, N'Pago de impuestos', 0, N'../Imagenes/presupuesto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (420, 109, 4, N'Valor de la moneda', 0, N'../Imagenes/presupuesto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (421, 110, 1, N'Guardar parte de los ingresos para uso futuro', 1, N'../Imagenes/ahorro_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (422, 110, 2, N'Gastar todo el ingreso en bienes y servicios', 0, N'../Imagenes/ahorro_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (423, 110, 3, N'Pedir un préstamo para financiar gastos', 0, N'../Imagenes/ahorro_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (424, 110, 4, N'Invertir en la bolsa de valores', 0, N'../Imagenes/ahorro_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (425, 111, 1, N'Cuenta bancaria donde se depositan fondos para ahorrar y ganar intereses', 1, N'../Imagenes/cuenta_ahorros_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (426, 111, 2, N'Cuenta que permite retirar fondos en cualquier momento sin penalización', 0, N'../Imagenes/cuenta_ahorros_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (427, 111, 3, N'Cuenta utilizada para inversiones en bienes raíces', 0, N'../Imagenes/cuenta_ahorros_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (428, 111, 4, N'Cuenta exclusiva para el pago de impuestos', 0, N'../Imagenes/cuenta_ahorros_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (429, 112, 1, N'Interés calculado solo sobre el capital inicial', 1, N'../Imagenes/interes_simple_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (430, 112, 2, N'Interés que se capitaliza sobre el saldo', 0, N'../Imagenes/interes_simple_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (431, 112, 3, N'Interés pagado en cuotas', 0, N'../Imagenes/interes_simple_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (432, 112, 4, N'Interés generado por una cuenta de ahorro', 0, N'../Imagenes/interes_simple_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (433, 113, 1, N'Gasto que se mantiene constante cada mes', 1, N'../Imagenes/gasto_fijo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (434, 113, 2, N'Gasto que varía según el consumo', 0, N'../Imagenes/gasto_fijo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (435, 113, 3, N'Gasto ocasional', 0, N'../Imagenes/gasto_fijo_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (436, 113, 4, N'Gasto para emergencias', 0, N'../Imagenes/gasto_fijo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (437, 114, 1, N'Gasto que cambia dependiendo del uso o consumo', 1, N'../Imagenes/gasto_variable_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (438, 114, 2, N'Gasto que permanece igual cada mes', 0, N'../Imagenes/gasto_variable_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (439, 114, 3, N'Gasto dedicado a inversiones', 0, N'../Imagenes/gasto_variable_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (440, 114, 4, N'Gasto exclusivo para pagar impuestos', 0, N'../Imagenes/gasto_variable_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (441, 115, 1, N'Tarjeta que permite realizar compras a crédito y pagar más tarde', 1, N'../Imagenes/tarjeta_credito_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (442, 115, 2, N'Tarjeta que permite retirar dinero en efectivo sin intereses', 0, N'../Imagenes/tarjeta_credito_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (443, 115, 3, N'Tarjeta que otorga intereses sobre los saldos positivos', 0, N'../Imagenes/tarjeta_credito_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (444, 115, 4, N'Tarjeta utilizada solo para inversiones', 0, N'../Imagenes/tarjeta_credito_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (445, 116, 1, N'Dinero que se pide a una entidad financiera y se paga con intereses', 1, N'../Imagenes/prestamo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (446, 116, 2, N'Cuenta bancaria para ahorrar dinero', 0, N'../Imagenes/prestamo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (447, 116, 3, N'Inversión en la bolsa de valores', 0, N'../Imagenes/prestamo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (448, 116, 4, N'Plan de ahorro a largo plazo', 0, N'../Imagenes/prestamo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (449, 117, 1, N'Dinero reservado para gastos imprevistos', 1, N'../Imagenes/fondo_emergencia_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (450, 117, 2, N'Fondos invertidos en acciones de la empresa', 0, N'../Imagenes/fondo_emergencia_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (451, 117, 3, N'Préstamo otorgado por el banco', 0, N'../Imagenes/fondo_emergencia_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (452, 117, 4, N'Saldo positivo en una tarjeta de crédito', 0, N'../Imagenes/fondo_emergencia_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (453, 118, 1, N'Dinero recibido por realizar una actividad laboral o inversión', 1, N'../Imagenes/ingreso_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (454, 118, 2, N'Dinero que se paga por impuestos', 0, N'../Imagenes/ingreso_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (455, 118, 3, N'Valor de los bienes y servicios consumidos', 0, N'../Imagenes/ingreso_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (456, 118, 4, N'Fondos prestados por una entidad financiera', 0, N'../Imagenes/ingreso_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (461, 120, 1, N'Colocación de dinero en un activo con el objetivo de obtener un beneficio', 1, N'../Imagenes/inversion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (462, 120, 2, N'Ahorro de dinero en una cuenta bancaria', 0, N'../Imagenes/inversion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (463, 120, 3, N'Pago de impuestos', 0, N'../Imagenes/inversion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (464, 120, 4, N'Saldo de una tarjeta de crédito', 0, N'../Imagenes/inversion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (465, 121, 1, N'Estrategia para reducir el riesgo invirtiendo en diferentes activos', 1, N'../Imagenes/diversificacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (466, 121, 2, N'Inversión en un solo tipo de activo', 0, N'../Imagenes/diversificacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (467, 121, 3, N'Estrategia de ahorro a largo plazo', 0, N'../Imagenes/diversificacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (468, 121, 4, N'Compra de acciones en una sola empresa', 0, N'../Imagenes/diversificacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (469, 122, 1, N'Posibilidad de sufrir pérdidas financieras debido a la variabilidad en el rendimiento de una inversión', 1, N'../Imagenes/riesgo_financiero_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (470, 122, 2, N'Costo adicional de producir una unidad extra', 0, N'../Imagenes/riesgo_financiero_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (471, 122, 3, N'Ganancia obtenida por una inversión', 0, N'../Imagenes/riesgo_financiero_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (472, 122, 4, N'Tasa de inflación', 0, N'../Imagenes/riesgo_financiero_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (473, 123, 1, N'Valor total de los activos de una persona menos sus pasivos', 1, N'../Imagenes/patrimonio_neto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (474, 123, 2, N'Cantidad total de dinero en efectivo', 0, N'../Imagenes/patrimonio_neto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (475, 123, 3, N'Cantidad de dinero invertida en la bolsa de valores', 0, N'../Imagenes/patrimonio_neto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (476, 123, 4, N'Valor de las propiedades inmobiliarias', 0, N'../Imagenes/patrimonio_neto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (477, 124, 1, N'Inversión a plazo fijo con una tasa de interés determinada', 1, N'../Imagenes/plazo_fijo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (478, 124, 2, N'Cuenta bancaria para ahorros a largo plazo', 0, N'../Imagenes/plazo_fijo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (479, 124, 3, N'Préstamo otorgado por una entidad financiera', 0, N'../Imagenes/plazo_fijo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (480, 124, 4, N'Instrumento financiero para la compra de acciones', 0, N'../Imagenes/plazo_fijo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (481, 125, 1, N'Préstamo a largo plazo utilizado para comprar una propiedad', 1, N'../Imagenes/credito_hipotecario_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (482, 125, 2, N'Crédito otorgado por una tarjeta de crédito', 0, N'../Imagenes/credito_hipotecario_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (483, 125, 3, N'Préstamo a corto plazo para gastos personales', 0, N'../Imagenes/credito_hipotecario_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (484, 125, 4, N'Instrumento financiero para inversión en acciones', 0, N'../Imagenes/credito_hipotecario_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (493, 128, 1, N'Fondo de inversión que agrupa el dinero de varios inversores para invertir en diferentes activos', 1, N'../Imagenes/fondo_mutuo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (494, 128, 2, N'Cuenta de ahorros a largo plazo con intereses', 0, N'../Imagenes/fondo_mutuo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (495, 128, 3, N'Inversión en bienes raíces', 0, N'../Imagenes/fondo_mutuo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (496, 128, 4, N'Préstamo otorgado por una entidad financiera', 0, N'../Imagenes/fondo_mutuo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (497, 129, 1, N'Medida del rendimiento de una inversión teniendo en cuenta su riesgo', 1, N'../Imagenes/tasa_rendimiento_riesgo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (498, 129, 2, N'Tasa de interés de un préstamo', 0, N'../Imagenes/tasa_rendimiento_riesgo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (499, 129, 3, N'Ganancia obtenida por una inversión a largo plazo', 0, N'../Imagenes/tasa_rendimiento_riesgo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (500, 129, 4, N'Indicador de inflación', 0, N'../Imagenes/tasa_rendimiento_riesgo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (501, 130, 1, N'Ratio que mide el exceso de retorno de una inversión en relación a su riesgo', 1, N'../Imagenes/ratio_sharpe_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (502, 130, 2, N'Medida de la volatilidad de un activo', 0, N'../Imagenes/ratio_sharpe_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (503, 130, 3, N'Indicador de la rentabilidad de una inversión', 0, N'../Imagenes/ratio_sharpe_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (504, 130, 4, N'Medida del rendimiento ajustado por inflación', 0, N'../Imagenes/ratio_sharpe_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (505, 131, 1, N'Estrategia de inversión que sigue un índice de mercado sin intentar superarlo', 1, N'../Imagenes/gestion_pasiva_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (506, 131, 2, N'Estrategia de inversión que busca superar al mercado a través de la selección activa de activos', 0, N'../Imagenes/gestion_pasiva_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (507, 131, 3, N'Estrategia de inversión basada en análisis técnico', 0, N'../Imagenes/gestion_pasiva_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (508, 131, 4, N'Estrategia que diversifica en diferentes tipos de activos', 0, N'../Imagenes/gestion_pasiva_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (509, 132, 1, N'Cartera de inversión que ofrece el mayor rendimiento posible para un nivel dado de riesgo', 1, N'../Imagenes/cartera_eficiente_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (510, 132, 2, N'Cartera que invierte en un solo tipo de activo', 0, N'../Imagenes/cartera_eficiente_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (511, 132, 3, N'Cartera que minimiza las pérdidas', 0, N'../Imagenes/cartera_eficiente_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (512, 132, 4, N'Cartera con diversificación entre diferentes sectores', 0, N'../Imagenes/cartera_eficiente_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (513, 133, 1, N'Facilidad con la que un activo puede convertirse en efectivo sin afectar su valor', 1, N'../Imagenes/liquidez_activo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (514, 133, 2, N'Valor total de un activo en el mercado', 0, N'../Imagenes/liquidez_activo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (515, 133, 3, N'Capacidad de un activo para generar ingresos a largo plazo', 0, N'../Imagenes/liquidez_activo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (516, 133, 4, N'Cantidad de activos en un portafolio', 0, N'../Imagenes/liquidez_activo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (517, 134, 1, N'Concepto que indica que el dinero disponible hoy vale más que el mismo monto en el futuro', 1, N'../Imagenes/valor_temporal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (518, 134, 2, N'Valor presente de una inversión a largo plazo', 0, N'../Imagenes/valor_temporal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (519, 134, 3, N'Valor futuro de una inversión a corto plazo', 0, N'../Imagenes/valor_temporal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (520, 134, 4, N'Tasa de retorno de una inversión', 0, N'../Imagenes/valor_temporal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (521, 135, 1, N'Tasa de descuento que hace que el valor presente neto de una inversión sea cero', 1, N'../Imagenes/tasa_interna_retorno_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (522, 135, 2, N'Tasa de interés de un préstamo a corto plazo', 0, N'../Imagenes/tasa_interna_retorno_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (523, 135, 3, N'Tasa de crecimiento de una empresa', 0, N'../Imagenes/tasa_interna_retorno_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (524, 135, 4, N'Tasa de inflación proyectada para el próximo año', 0, N'../Imagenes/tasa_interna_retorno_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (525, 136, 1, N'Proceso de identificar, analizar y gestionar riesgos que puedan afectar una inversión', 1, N'../Imagenes/evaluacion_riesgos_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (526, 136, 2, N'Proceso de aumentar el rendimiento de una inversión', 0, N'../Imagenes/evaluacion_riesgos_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (527, 136, 3, N'Proceso de seleccionar una cartera de activos', 0, N'../Imagenes/evaluacion_riesgos_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (528, 136, 4, N'Proceso de diversificar una inversión', 0, N'../Imagenes/evaluacion_riesgos_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (529, 137, 1, N'Medida de cómo dos activos se mueven en relación entre sí', 1, N'../Imagenes/correlacion_activos_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (530, 137, 2, N'Medida de la rentabilidad de un activo en el tiempo', 0, N'../Imagenes/correlacion_activos_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (531, 137, 3, N'Medida de la liquidez de un activo', 0, N'../Imagenes/correlacion_activos_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (532, 137, 4, N'Medida de la volatilidad de un activo', 0, N'../Imagenes/correlacion_activos_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (533, 138, 1, N'Teoría que propone cómo los inversores pueden construir carteras para maximizar el rendimiento esperado para un nivel dado de riesgo', 1, N'../Imagenes/teoria_carteras_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (534, 138, 2, N'Teoría que describe el comportamiento del mercado en condiciones de competencia perfecta', 0, N'../Imagenes/teoria_carteras_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (535, 138, 3, N'Teoría que analiza la influencia de las políticas monetarias en la economía', 0, N'../Imagenes/teoria_carteras_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (536, 138, 4, N'Teoría que explica el comportamiento de los precios de los activos en función de la oferta y la demanda', 0, N'../Imagenes/teoria_carteras_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (541, 140, 1, N'Planificación y gestión de las inversiones a largo plazo de una empresa', 1, N'../Imagenes/presupuesto_capital_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (542, 140, 2, N'Plan de gastos a corto plazo', 0, N'../Imagenes/presupuesto_capital_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (543, 140, 3, N'Gestión de la liquidez diaria', 0, N'../Imagenes/presupuesto_capital_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (544, 140, 4, N'Estrategia de marketing', 0, N'../Imagenes/presupuesto_capital_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (545, 141, 1, N'Gestión de los fondos y flujos de efectivo de una empresa', 1, N'../Imagenes/gestion_tesoreria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (546, 141, 2, N'Planificación de inversiones a largo plazo', 0, N'../Imagenes/gestion_tesoreria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (547, 141, 3, N'Gestión de la cartera de inversiones', 0, N'../Imagenes/gestion_tesoreria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (548, 141, 4, N'Evaluación de proyectos', 0, N'../Imagenes/gestion_tesoreria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (549, 142, 1, N'Parte de las ganancias distribuidas a los accionistas', 1, N'../Imagenes/dividendo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (550, 142, 2, N'Pago a los empleados', 0, N'../Imagenes/dividendo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (551, 142, 3, N'Intereses pagados a los prestamistas', 0, N'../Imagenes/dividendo_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (552, 142, 4, N'Costos operativos', 0, N'../Imagenes/dividendo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (553, 143, 1, N'Bienes y propiedades que una empresa posee y utiliza a largo plazo', 1, N'../Imagenes/activo_fijo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (554, 143, 2, N'Fondos disponibles para uso inmediato', 0, N'../Imagenes/activo_fijo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (555, 143, 3, N'Préstamos a largo plazo', 0, N'../Imagenes/activo_fijo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (556, 143, 4, N'Acciones en otras empresas', 0, N'../Imagenes/activo_fijo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (557, 144, 1, N'Obligaciones financieras de una empresa que deben pagarse en el corto plazo', 1, N'../Imagenes/deuda_corto_plazo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (558, 144, 2, N'Inversiones en bonos', 0, N'../Imagenes/deuda_corto_plazo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (559, 144, 3, N'Inversiones a largo plazo', 0, N'../Imagenes/deuda_corto_plazo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (560, 144, 4, N'Costos de producción', 0, N'../Imagenes/deuda_corto_plazo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (565, 146, 1, N'Entrada y salida de efectivo en una empresa', 1, N'../Imagenes/flujo_efectivo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (566, 146, 2, N'Inversiones a largo plazo', 0, N'../Imagenes/flujo_efectivo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (567, 146, 3, N'Costos fijos de producción', 0, N'../Imagenes/flujo_efectivo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (568, 146, 4, N'Ganancias netas', 0, N'../Imagenes/flujo_efectivo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (569, 147, 1, N'Capacidad de una empresa para generar beneficios en relación con sus ingresos, activos o capital', 1, N'../Imagenes/rentabilidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (570, 147, 2, N'Cantidad total de ventas', 0, N'../Imagenes/rentabilidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (571, 147, 3, N'Tasa de interés de un préstamo', 0, N'../Imagenes/rentabilidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (572, 147, 4, N'Cantidad total de empleados', 0, N'../Imagenes/rentabilidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (573, 148, 1, N'Proceso de evaluar y analizar los costos de producción y operación de una empresa', 1, N'../Imagenes/analisis_costos_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (574, 148, 2, N'Gestión de las inversiones a largo plazo', 0, N'../Imagenes/analisis_costos_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (575, 148, 3, N'Planificación estratégica', 0, N'../Imagenes/analisis_costos_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (576, 148, 4, N'Control de calidad', 0, N'../Imagenes/analisis_costos_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (577, 149, 1, N'Indicador que muestra la relación entre el precio de las acciones y los beneficios por acción', 1, N'../Imagenes/per_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (578, 149, 2, N'Ratio que mide la liquidez de una empresa', 0, N'../Imagenes/per_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (579, 149, 3, N'Indicador de la rentabilidad de una empresa', 0, N'../Imagenes/per_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (580, 149, 4, N'Medida del riesgo de una inversión', 0, N'../Imagenes/per_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (581, 150, 1, N'Tasa de retorno mínima que una empresa debe ganar sobre sus inversiones para mantener su valor de mercado', 1, N'../Imagenes/costo_capital_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (582, 150, 2, N'Costo de producción de bienes', 0, N'../Imagenes/costo_capital_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (583, 150, 3, N'Tasa de interés de un préstamo', 0, N'../Imagenes/costo_capital_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (584, 150, 4, N'Costo de adquisición de activos', 0, N'../Imagenes/costo_capital_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (589, 152, 1, N'Periodo de tiempo en el que el efectivo de una empresa se convierte en efectivo nuevamente', 1, N'../Imagenes/ciclo_conversion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (590, 152, 2, N'Tiempo necesario para producir bienes', 0, N'../Imagenes/ciclo_conversion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (591, 152, 3, N'Plazo de pago de la deuda', 0, N'../Imagenes/ciclo_conversion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (592, 152, 4, N'Periodo de inversión a largo plazo', 0, N'../Imagenes/ciclo_conversion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (593, 153, 1, N'Diferencia entre el valor presente de los flujos de efectivo futuros y la inversión inicial', 1, N'../Imagenes/vpn_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (594, 153, 2, N'Valor futuro de una inversión', 0, N'../Imagenes/vpn_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (595, 153, 3, N'Tasa de retorno sobre la inversión', 0, N'../Imagenes/vpn_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (596, 153, 4, N'Margen de beneficio neto', 0, N'../Imagenes/vpn_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (601, 155, 1, N'Diferencia entre las ventas y el costo de los bienes vendidos', 1, N'../Imagenes/margen_bruto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (602, 155, 2, N'Ganancias netas de una empresa', 0, N'../Imagenes/margen_bruto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (603, 155, 3, N'Costos fijos de producción', 0, N'../Imagenes/margen_bruto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (604, 155, 4, N'Valor de las inversiones', 0, N'../Imagenes/margen_bruto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (605, 156, 1, N'Ingresos operativos divididos por las ventas netas', 1, N'../Imagenes/margen_operativo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (606, 156, 2, N'Tasa de crecimiento anual', 0, N'../Imagenes/margen_operativo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (607, 156, 3, N'Costos de producción', 0, N'../Imagenes/margen_operativo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (608, 156, 4, N'Ganancias después de impuestos', 0, N'../Imagenes/margen_operativo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (609, 157, 1, N'Nivel de ventas en el que los ingresos totales igualan a los costos totales', 1, N'../Imagenes/punto_equilibrio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (610, 157, 2, N'Tasa de retorno sobre las inversiones', 0, N'../Imagenes/punto_equilibrio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (611, 157, 3, N'Valor de las acciones en el mercado', 0, N'../Imagenes/punto_equilibrio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (612, 157, 4, N'Margen de beneficio neto', 0, N'../Imagenes/punto_equilibrio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (613, 158, 1, N'Proporción de la deuda en relación con los activos totales de la empresa', 1, N'../Imagenes/ratio_endeudamiento_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (614, 158, 2, N'Medida de la liquidez de la empresa', 0, N'../Imagenes/ratio_endeudamiento_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (615, 158, 3, N'Ratio de rentabilidad', 0, N'../Imagenes/ratio_endeudamiento_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (616, 158, 4, N'Indicador de la gestión de tesorería', 0, N'../Imagenes/ratio_endeudamiento_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (617, 159, 1, N'Método de valoración que calcula el valor presente de los flujos de efectivo futuros', 1, N'../Imagenes/fcd_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (618, 159, 2, N'Indicador de la rentabilidad de una inversión', 0, N'../Imagenes/fcd_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (619, 159, 3, N'Tasa de retorno sobre el capital', 0, N'../Imagenes/fcd_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (620, 159, 4, N'Indicador de la liquidez de una empresa', 0, N'../Imagenes/fcd_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (621, 160, 1, N'Tasa promedio ponderada que una empresa espera pagar por su financiación', 1, N'../Imagenes/wacc_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (622, 160, 2, N'Indicador del rendimiento esperado de una inversión', 0, N'../Imagenes/wacc_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (623, 160, 3, N'Medida del riesgo de mercado', 0, N'../Imagenes/wacc_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (624, 160, 4, N'Tasa de interés a corto plazo', 0, N'../Imagenes/wacc_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (625, 161, 1, N'Modelo que describe la relación entre el riesgo sistemático y el rendimiento esperado de los activos', 1, N'../Imagenes/capm_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (626, 161, 2, N'Indicador de la rentabilidad de una empresa', 0, N'../Imagenes/capm_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (627, 161, 3, N'Modelo de valuación de bonos', 0, N'../Imagenes/capm_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (628, 161, 4, N'Tasa de retorno de los activos fijos', 0, N'../Imagenes/capm_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (629, 162, 1, N'Beneficio antes de intereses e impuestos', 1, N'../Imagenes/ebit_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (630, 162, 2, N'Ingresos netos después de impuestos', 0, N'../Imagenes/ebit_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (631, 162, 3, N'Ganancias antes de depreciación', 0, N'../Imagenes/ebit_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (632, 162, 4, N'Valor de las acciones', 0, N'../Imagenes/ebit_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (633, 163, 1, N'Beneficios antes de intereses, impuestos, depreciación y amortización', 1, N'../Imagenes/ebitda_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (634, 163, 2, N'Ingresos netos después de impuestos', 0, N'../Imagenes/ebitda_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (635, 163, 3, N'Ganancias antes de depreciación', 0, N'../Imagenes/ebitda_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (636, 163, 4, N'Valor de las acciones', 0, N'../Imagenes/ebitda_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (637, 164, 1, N'Medida de la rentabilidad financiera de una empresa en relación con el capital de los accionistas', 1, N'../Imagenes/roe_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (638, 164, 2, N'Tasa de retorno sobre activos', 0, N'../Imagenes/roe_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (639, 164, 3, N'Indicador del flujo de efectivo', 0, N'../Imagenes/roe_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (640, 164, 4, N'Proporción de la deuda sobre el capital', 0, N'../Imagenes/roe_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (641, 165, 1, N'Indicador de la rentabilidad de una empresa en relación con sus activos totales', 1, N'../Imagenes/roa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (642, 165, 2, N'Valor de las inversiones a largo plazo', 0, N'../Imagenes/roa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (643, 165, 3, N'Tasa de retorno sobre el capital', 0, N'../Imagenes/roa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (644, 165, 4, N'Medida del riesgo financiero', 0, N'../Imagenes/roa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (645, 166, 1, N'Riesgo inherente a todo el mercado o segmento de mercado', 1, N'../Imagenes/riesgo_sistematico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (646, 166, 2, N'Riesgo específico de una empresa o industria', 0, N'../Imagenes/riesgo_sistematico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (647, 166, 3, N'Riesgo de inversión en activos de renta fija', 0, N'../Imagenes/riesgo_sistematico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (648, 166, 4, N'Riesgo asociado a la inflación', 0, N'../Imagenes/riesgo_sistematico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (649, 167, 1, N'Medida del riesgo o volatilidad de un activo en comparación con el mercado en general', 1, N'../Imagenes/beta_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (650, 167, 2, N'Indicador de la liquidez de un activo', 0, N'../Imagenes/beta_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (651, 167, 3, N'Medida del retorno esperado', 0, N'../Imagenes/beta_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (652, 167, 4, N'Valor de la inversión a largo plazo', 0, N'../Imagenes/beta_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (653, 168, 1, N'Estrategia de inversión para reducir el riesgo invirtiendo en una variedad de activos', 1, N'../Imagenes/diversificacion_cartera_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (654, 168, 2, N'Inversión en un solo tipo de activo', 0, N'../Imagenes/diversificacion_cartera_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (655, 168, 3, N'Estrategia de ahorro a largo plazo', 0, N'../Imagenes/diversificacion_cartera_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (656, 168, 4, N'Compra de acciones en una sola empresa', 0, N'../Imagenes/diversificacion_cartera_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (665, 171, 1, N'Mercado donde se compran y venden acciones y otros valores', 1, N'../Imagenes/bolsa_valores_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (666, 171, 2, N'Mercado donde se intercambian bienes y servicios', 0, N'../Imagenes/bolsa_valores_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (667, 171, 3, N'Entidad que regula los precios de los bienes', 0, N'../Imagenes/bolsa_valores_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (668, 171, 4, N'Mercado donde se negocian divisas', 0, N'../Imagenes/bolsa_valores_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (669, 172, 1, N'Mercado donde se compran y venden activos financieros', 1, N'../Imagenes/mercado_financiero_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (670, 172, 2, N'Mercado donde se comercializan bienes y servicios', 0, N'../Imagenes/mercado_financiero_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (671, 172, 3, N'Entidad que regula las tasas de interés', 0, N'../Imagenes/mercado_financiero_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (672, 172, 4, N'Mercado donde se negocian bienes inmuebles', 0, N'../Imagenes/mercado_financiero_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (673, 173, 1, N'Entidad que reúne el dinero de varios inversores para comprar una cartera de activos', 1, N'../Imagenes/fondo_inversion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (674, 173, 2, N'Instrumento de deuda emitido por el gobierno', 0, N'../Imagenes/fondo_inversion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (675, 173, 3, N'Mercado donde se compran y venden acciones', 0, N'../Imagenes/fondo_inversion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (676, 173, 4, N'Tasa de interés a corto plazo', 0, N'../Imagenes/fondo_inversion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (677, 174, 1, N'Costo del dinero prestado, expresado como porcentaje', 1, N'../Imagenes/tasa_interes_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (678, 174, 2, N'Precio de las acciones en el mercado', 0, N'../Imagenes/tasa_interes_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (679, 174, 3, N'Indicador de la rentabilidad de una empresa', 0, N'../Imagenes/tasa_interes_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (680, 174, 4, N'Valor de las inversiones a largo plazo', 0, N'../Imagenes/tasa_interes_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (681, 175, 1, N'Capacidad de un activo para ser convertido en efectivo rápidamente', 1, N'../Imagenes/liquidez_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (682, 175, 2, N'Tasa de retorno de una inversión', 0, N'../Imagenes/liquidez_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (683, 175, 3, N'Nivel de riesgo de una inversión', 0, N'../Imagenes/liquidez_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (684, 175, 4, N'Costo de adquisición de un activo', 0, N'../Imagenes/liquidez_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (685, 176, 1, N'Proceso por el cual una empresa emite acciones al público por primera vez', 1, N'../Imagenes/opv_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (686, 176, 2, N'Oferta de bonos en el mercado', 0, N'../Imagenes/opv_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (687, 176, 3, N'Proceso de fusión de dos empresas', 0, N'../Imagenes/opv_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (688, 176, 4, N'Proceso de adquisición de una empresa', 0, N'../Imagenes/opv_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (689, 177, 1, N'Mercado donde se negocian divisas', 1, N'../Imagenes/mercado_divisas_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (690, 177, 2, N'Mercado donde se compran y venden acciones', 0, N'../Imagenes/mercado_divisas_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (691, 177, 3, N'Mercado de bienes y servicios', 0, N'../Imagenes/mercado_divisas_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (692, 177, 4, N'Mercado de bonos', 0, N'../Imagenes/mercado_divisas_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (693, 178, 1, N'Medida que refleja el rendimiento de un grupo de acciones', 1, N'../Imagenes/indice_bursatil_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (694, 178, 2, N'Medida del nivel de precios de los bienes', 0, N'../Imagenes/indice_bursatil_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (695, 178, 3, N'Indicador de la tasa de interés', 0, N'../Imagenes/indice_bursatil_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (696, 178, 4, N'Proporción de la deuda de una empresa', 0, N'../Imagenes/indice_bursatil_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (701, 180, 1, N'Medida de la variación de los precios de un activo financiero', 1, N'../Imagenes/volatilidad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (702, 180, 2, N'Costo de las operaciones en el mercado', 0, N'../Imagenes/volatilidad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (703, 180, 3, N'Indicador de la tasa de interés', 0, N'../Imagenes/volatilidad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (704, 180, 4, N'Medida del retorno esperado de una inversión', 0, N'../Imagenes/volatilidad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (705, 181, 1, N'Conjunto de inversiones que posee un inversor', 1, N'../Imagenes/cartera_inversion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (706, 181, 2, N'Lista de los bienes y servicios que produce una empresa', 0, N'../Imagenes/cartera_inversion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (707, 181, 3, N'Medida de la liquidez de una empresa', 0, N'../Imagenes/cartera_inversion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (708, 181, 4, N'Indicador del riesgo de mercado', 0, N'../Imagenes/cartera_inversion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (709, 182, 1, N'Análisis de los movimientos del mercado a través de gráficos y patrones históricos', 1, N'../Imagenes/analisis_tecnico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (710, 182, 2, N'Análisis de los estados financieros de una empresa', 0, N'../Imagenes/analisis_tecnico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (711, 182, 3, N'Evaluación del entorno macroeconómico', 0, N'../Imagenes/analisis_tecnico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (712, 182, 4, N'Proceso de diversificación de una cartera', 0, N'../Imagenes/analisis_tecnico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (713, 183, 1, N'Análisis de los fundamentos económicos y financieros de una empresa para determinar su valor intrínseco', 1, N'../Imagenes/analisis_fundamental_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (714, 183, 2, N'Análisis basado en gráficos y patrones', 0, N'../Imagenes/analisis_fundamental_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (715, 183, 3, N'Medición de la liquidez de un activo', 0, N'../Imagenes/analisis_fundamental_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (716, 183, 4, N'Proceso de arbitraje', 0, N'../Imagenes/analisis_fundamental_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (717, 184, 1, N'Riesgo de que los precios de los activos financieros cambien debido a factores macroeconómicos', 1, N'../Imagenes/riesgo_mercado_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (718, 184, 2, N'Riesgo de no recibir el pago de un préstamo', 0, N'../Imagenes/riesgo_mercado_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (719, 184, 3, N'Riesgo asociado con la liquidez', 0, N'../Imagenes/riesgo_mercado_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (720, 184, 4, N'Riesgo de crédito', 0, N'../Imagenes/riesgo_mercado_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (721, 185, 1, N'Operación bursátil que utiliza algoritmos y tecnología para ejecutar órdenes de compra y venta en fracciones de segundo', 1, N'../Imagenes/trading_alta_frecuencia_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (722, 185, 2, N'Compra y venta de acciones a largo plazo', 0, N'../Imagenes/trading_alta_frecuencia_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (723, 185, 3, N'Estrategia de inversión en bonos', 0, N'../Imagenes/trading_alta_frecuencia_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (724, 185, 4, N'Proceso de análisis fundamental', 0, N'../Imagenes/trading_alta_frecuencia_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (725, 186, 1, N'Estrategia que aprovecha las diferencias de precios en distintos mercados para obtener ganancias', 1, N'../Imagenes/arbitraje_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (726, 186, 2, N'Proceso de diversificación de una cartera', 0, N'../Imagenes/arbitraje_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (727, 186, 3, N'Compra de acciones a largo plazo', 0, N'../Imagenes/arbitraje_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (728, 186, 4, N'Proceso de análisis técnico', 0, N'../Imagenes/arbitraje_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (729, 187, 1, N'Cantidad de dinero que un inversor debe depositar para cubrir posibles pérdidas en operaciones con derivados', 1, N'../Imagenes/margen_garantia_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (730, 187, 2, N'Tasa de retorno de una inversión', 0, N'../Imagenes/margen_garantia_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (731, 187, 3, N'Valor de mercado de un activo', 0, N'../Imagenes/margen_garantia_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (732, 187, 4, N'Costo de transacción en la bolsa de valores', 0, N'../Imagenes/margen_garantia_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (737, 189, 1, N'Contrato que da al comprador el derecho, pero no la obligación, de comprar o vender un activo a un precio específico', 1, N'../Imagenes/opcion_financiera_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (738, 189, 2, N'Contrato de intercambio de activos entre dos partes', 0, N'../Imagenes/opcion_financiera_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (739, 189, 3, N'Instrumento de deuda a largo plazo', 0, N'../Imagenes/opcion_financiera_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (740, 189, 4, N'Tipo de acción emitida por una empresa', 0, N'../Imagenes/opcion_financiera_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (741, 190, 1, N'Contrato en el que dos partes acuerdan intercambiar flujos de efectivo futuros según un valor nominal', 1, N'../Imagenes/swap_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (742, 190, 2, N'Instrumento financiero utilizado para inversiones a corto plazo', 0, N'../Imagenes/swap_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (743, 190, 3, N'Tipo de acción preferente', 0, N'../Imagenes/swap_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (744, 190, 4, N'Contrato de compra de acciones a largo plazo', 0, N'../Imagenes/swap_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (749, 192, 1, N'Medida del nivel de riesgo de una cartera en términos de la probabilidad de pérdidas financieras', 1, N'../Imagenes/var_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (750, 192, 2, N'Indicador de la volatilidad del mercado', 0, N'../Imagenes/var_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (751, 192, 3, N'Medida del retorno esperado de una inversión', 0, N'../Imagenes/var_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (752, 192, 4, N'Indicador de la liquidez de un activo', 0, N'../Imagenes/var_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (753, 193, 1, N'Medida de la sensibilidad de una acción en relación con los movimientos del mercado', 1, N'../Imagenes/beta_accion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (754, 193, 2, N'Indicador del rendimiento esperado de una acción', 0, N'../Imagenes/beta_accion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (755, 193, 3, N'Medida de la liquidez de una acción', 0, N'../Imagenes/beta_accion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (756, 193, 4, N'Indicador de la tasa de interés de un activo', 0, N'../Imagenes/beta_accion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (757, 194, 1, N'Teoría que sugiere que los precios de los activos reflejan toda la información disponible', 1, N'../Imagenes/mercados_eficientes_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (758, 194, 2, N'Teoría que establece que los mercados siempre son volátiles', 0, N'../Imagenes/mercados_eficientes_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (759, 194, 3, N'Modelo para predecir el crecimiento económico', 0, N'../Imagenes/mercados_eficientes_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (760, 194, 4, N'Teoría que mide la liquidez de los activos', 0, N'../Imagenes/mercados_eficientes_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (761, 195, 1, N'Instrumento financiero respaldado por una cartera de préstamos hipotecarios', 1, N'../Imagenes/cdo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (762, 195, 2, N'Título de propiedad de un bien tangible', 0, N'../Imagenes/cdo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (763, 195, 3, N'Contrato de derivados financieros', 0, N'../Imagenes/cdo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (764, 195, 4, N'Instrumento de deuda a corto plazo', 0, N'../Imagenes/cdo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (765, 196, 1, N'Ratio que mide el rendimiento ajustado al riesgo de una inversión', 1, N'../Imagenes/indice_sharpe_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (766, 196, 2, N'Medida de la liquidez de un activo', 0, N'../Imagenes/indice_sharpe_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (767, 196, 3, N'Indicador de la volatilidad del mercado', 0, N'../Imagenes/indice_sharpe_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (768, 196, 4, N'Ratio de endeudamiento de una empresa', 0, N'../Imagenes/indice_sharpe_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (769, 197, 1, N'Gráfico que muestra la relación entre las tasas de interés y los plazos de vencimiento de la deuda', 1, N'../Imagenes/curva_rendimiento_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (770, 197, 2, N'Medida de la volatilidad de un activo', 0, N'../Imagenes/curva_rendimiento_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (771, 197, 3, N'Gráfico que muestra la distribución de los precios de los activos', 0, N'../Imagenes/curva_rendimiento_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (772, 197, 4, N'Indicador de la liquidez del mercado', 0, N'../Imagenes/curva_rendimiento_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (773, 198, 1, N'Fenómeno económico en el que los precios de los activos se inflan de manera irracional, generalmente seguidos por una caída abrupta', 1, N'../Imagenes/burbuja_especulativa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (774, 198, 2, N'Periodo de recesión económica prolongada', 0, N'../Imagenes/burbuja_especulativa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (775, 198, 3, N'Condición de mercado caracterizada por la alta volatilidad', 0, N'../Imagenes/burbuja_especulativa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (776, 198, 4, N'Estrés financiero en el mercado interbancario', 0, N'../Imagenes/burbuja_especulativa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (781, 200, 1, N'Tasa a la que se calcula el interés de un préstamo o inversión en un año', 1, N'../Imagenes/tasa_interes_anual_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (782, 200, 2, N'Tasa fija aplicada a las tarjetas de crédito', 0, N'../Imagenes/tasa_interes_anual_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (783, 200, 3, N'Costo de apertura de una cuenta bancaria', 0, N'../Imagenes/tasa_interes_anual_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (784, 200, 4, N'Indicador de la inflación anual', 0, N'../Imagenes/tasa_interes_anual_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (785, 201, 1, N'Préstamo a largo plazo con garantía sobre una propiedad', 1, N'../Imagenes/hipoteca_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (786, 201, 2, N'Inversión a corto plazo', 0, N'../Imagenes/hipoteca_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (787, 201, 3, N'Tipo de seguro de vida', 0, N'../Imagenes/hipoteca_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (788, 201, 4, N'Contrato de arrendamiento de un vehículo', 0, N'../Imagenes/hipoteca_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (789, 202, 1, N'Depósito a plazo fijo que paga un interés más alto que una cuenta de ahorros', 1, N'../Imagenes/certificado_deposito_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (790, 202, 2, N'Tipo de cuenta corriente', 0, N'../Imagenes/certificado_deposito_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (791, 202, 3, N'Préstamo a corto plazo', 0, N'../Imagenes/certificado_deposito_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (792, 202, 4, N'Instrumento de deuda a largo plazo', 0, N'../Imagenes/certificado_deposito_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (793, 203, 1, N'Servicio que permite realizar transacciones bancarias a través de internet', 1, N'../Imagenes/banca_online_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (794, 203, 2, N'Tipo de cuenta de ahorro', 0, N'../Imagenes/banca_online_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (795, 203, 3, N'Método de pago móvil', 0, N'../Imagenes/banca_online_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (796, 203, 4, N'Tarjeta de crédito virtual', 0, N'../Imagenes/banca_online_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (797, 204, 1, N'Cheque emitido por un banco que garantiza el pago', 1, N'../Imagenes/cheque_bancario_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (798, 204, 2, N'Cheque emitido por una empresa', 0, N'../Imagenes/cheque_bancario_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (799, 204, 3, N'Instrumento de deuda a corto plazo', 0, N'../Imagenes/cheque_bancario_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (800, 204, 4, N'Cheque emitido por un individuo', 0, N'../Imagenes/cheque_bancario_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (801, 205, 1, N'Habilidad de un banco para cumplir con sus obligaciones financieras inmediatas', 1, N'../Imagenes/liquidez_bancaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (802, 205, 2, N'Capacidad de un banco para generar ingresos', 0, N'../Imagenes/liquidez_bancaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (803, 205, 3, N'Indicador del riesgo de crédito', 0, N'../Imagenes/liquidez_bancaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (804, 205, 4, N'Medida de la rentabilidad bancaria', 0, N'../Imagenes/liquidez_bancaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (809, 207, 1, N'Uso de deuda para aumentar la capacidad de inversión del banco', 1, N'../Imagenes/apalancamiento_banca_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (810, 207, 2, N'Inversión en activos a largo plazo', 0, N'../Imagenes/apalancamiento_banca_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (811, 207, 3, N'Proceso de diversificación de activos', 0, N'../Imagenes/apalancamiento_banca_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (812, 207, 4, N'Medida del riesgo de mercado', 0, N'../Imagenes/apalancamiento_banca_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (813, 208, 1, N'Préstamo a largo plazo otorgado por un banco para comprar una propiedad', 1, N'../Imagenes/prestamo_hipotecario_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (814, 208, 2, N'Préstamo para compra de automóviles', 0, N'../Imagenes/prestamo_hipotecario_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (815, 208, 3, N'Instrumento de inversión a corto plazo', 0, N'../Imagenes/prestamo_hipotecario_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (816, 208, 4, N'Cuenta de ahorro con interés fijo', 0, N'../Imagenes/prestamo_hipotecario_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (817, 209, 1, N'Porcentaje de depósitos que un banco debe mantener en reserva', 1, N'../Imagenes/reservas_fraccionarias_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (818, 209, 2, N'Ratio de capital que un banco debe mantener', 0, N'../Imagenes/reservas_fraccionarias_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (819, 209, 3, N'Tasa de interés aplicada a préstamos interbancarios', 0, N'../Imagenes/reservas_fraccionarias_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (820, 209, 4, N'Porcentaje de ingresos que un banco debe pagar como impuestos', 0, N'../Imagenes/reservas_fraccionarias_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (821, 210, 1, N'Línea de crédito que se puede utilizar, pagar y volver a utilizar', 1, N'../Imagenes/linea_credito_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (822, 210, 2, N'Préstamo a plazo fijo con una tasa de interés variable', 0, N'../Imagenes/linea_credito_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (823, 210, 3, N'Tarjeta de crédito con límite preestablecido', 0, N'../Imagenes/linea_credito_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (824, 210, 4, N'Tipo de hipoteca con pagos flexibles', 0, N'../Imagenes/linea_credito_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (825, 211, 1, N'Acuerdo para vender un activo y comprarlo de nuevo a un precio acordado', 1, N'../Imagenes/acuerdo_repo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (826, 211, 2, N'Contrato de arrendamiento de bienes inmuebles', 0, N'../Imagenes/acuerdo_repo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (827, 211, 3, N'Préstamo a largo plazo con garantía', 0, N'../Imagenes/acuerdo_repo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (828, 211, 4, N'Título de deuda emitido por el gobierno', 0, N'../Imagenes/acuerdo_repo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (829, 212, 1, N'Regulaciones internacionales para fortalecer los requisitos de capital y gestión de riesgos en los bancos', 1, N'../Imagenes/basilea_iii_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (830, 212, 2, N'Regulación para controlar la oferta de dinero', 0, N'../Imagenes/basilea_iii_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (831, 212, 3, N'Normativa para la protección de datos de los clientes', 0, N'../Imagenes/basilea_iii_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (832, 212, 4, N'Ley para el control del tipo de cambio', 0, N'../Imagenes/basilea_iii_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (833, 213, 1, N'Riesgo de que una institución financiera no pueda cumplir con sus obligaciones debido a la falta de liquidez', 1, N'../Imagenes/riesgo_liquidez_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (834, 213, 2, N'Riesgo de incumplimiento de un préstamo', 0, N'../Imagenes/riesgo_liquidez_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (835, 213, 3, N'Riesgo de pérdida por fluctuaciones en los tipos de interés', 0, N'../Imagenes/riesgo_liquidez_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (836, 213, 4, N'Riesgo de pérdida por cambios en el tipo de cambio', 0, N'../Imagenes/riesgo_liquidez_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (837, 214, 1, N'Préstamo concedido por un grupo de bancos a un solo prestatario', 1, N'../Imagenes/credito_sindicado_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (838, 214, 2, N'Préstamo otorgado a un grupo de prestatarios', 0, N'../Imagenes/credito_sindicado_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (839, 214, 3, N'Línea de crédito renovable para empresas', 0, N'../Imagenes/credito_sindicado_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (840, 214, 4, N'Contrato de arrendamiento financiero', 0, N'../Imagenes/credito_sindicado_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (841, 215, 1, N'Sistema financiero paralelo que realiza funciones similares a la banca tradicional, pero no está sujeto a la misma regulación', 1, N'../Imagenes/banca_sombra_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (842, 215, 2, N'Proceso de inversión en activos de alto riesgo', 0, N'../Imagenes/banca_sombra_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (843, 215, 3, N'Técnica de financiamiento a corto plazo', 0, N'../Imagenes/banca_sombra_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (844, 215, 4, N'Instrumento financiero derivado de las hipotecas', 0, N'../Imagenes/banca_sombra_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (845, 216, 1, N'Proceso de convertir activos ilíquidos en valores negociables en los mercados financieros', 1, N'../Imagenes/titulizacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (846, 216, 2, N'Método de financiamiento de proyectos a largo plazo', 0, N'../Imagenes/titulizacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (847, 216, 3, N'Proceso de fusión de empresas', 0, N'../Imagenes/titulizacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (848, 216, 4, N'Contrato de arrendamiento de bienes', 0, N'../Imagenes/titulizacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (849, 217, 1, N'Diferencia entre las tasas de interés pagadas a los depositantes y las tasas cobradas a los prestatarios', 1, N'../Imagenes/margen_intermediacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (850, 217, 2, N'Ganancia neta de la banca', 0, N'../Imagenes/margen_intermediacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (851, 217, 3, N'Indicador del riesgo bancario', 0, N'../Imagenes/margen_intermediacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (852, 217, 4, N'Costo operativo de un banco', 0, N'../Imagenes/margen_intermediacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (853, 218, 1, N'Riesgo de colapso de todo el sistema financiero debido a la interconexión de las instituciones financieras', 1, N'../Imagenes/riesgo_sistemico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (854, 218, 2, N'Riesgo de quiebra de un solo banco', 0, N'../Imagenes/riesgo_sistemico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (855, 218, 3, N'Riesgo de pérdida en los mercados de valores', 0, N'../Imagenes/riesgo_sistemico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (856, 218, 4, N'Riesgo de inflación incontrolada', 0, N'../Imagenes/riesgo_sistemico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (857, 219, 1, N'Intercambio de bienes y servicios entre países', 1, N'../Imagenes/comercio_internacional_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (858, 219, 2, N'Compra de bienes dentro de un país', 0, N'../Imagenes/comercio_internacional_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (859, 219, 3, N'Política monetaria de un país', 0, N'../Imagenes/comercio_internacional_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (860, 219, 4, N'Inversión en la bolsa de valores', 0, N'../Imagenes/comercio_internacional_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (861, 220, 1, N'Proceso de integración e interdependencia de las economías mundiales', 1, N'../Imagenes/globalizacion_economica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (862, 220, 2, N'Crecimiento económico de un solo país', 0, N'../Imagenes/globalizacion_economica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (863, 220, 3, N'Reducción de la oferta monetaria', 0, N'../Imagenes/globalizacion_economica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (864, 220, 4, N'Política fiscal de un país', 0, N'../Imagenes/globalizacion_economica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (869, 222, 1, N'Valor de una moneda en términos de otra moneda', 1, N'../Imagenes/tipo_cambio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (870, 222, 2, N'Costo de los bienes y servicios en el mercado interno', 0, N'../Imagenes/tipo_cambio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (871, 222, 3, N'Tasa de interés aplicada a préstamos bancarios', 0, N'../Imagenes/tipo_cambio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (872, 222, 4, N'Valor total de las exportaciones', 0, N'../Imagenes/tipo_cambio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (877, 224, 1, N'Envío de bienes y servicios de un país a otro', 1, N'../Imagenes/exportacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (878, 224, 2, N'Compra de bienes del extranjero', 0, N'../Imagenes/exportacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (879, 224, 3, N'Tasa de cambio entre dos monedas', 0, N'../Imagenes/exportacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (880, 224, 4, N'Medida de la oferta y la demanda', 0, N'../Imagenes/exportacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (881, 225, 1, N'Compra de bienes y servicios de otro país', 1, N'../Imagenes/importacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (882, 225, 2, N'Venta de bienes a mercados extranjeros', 0, N'../Imagenes/importacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (883, 225, 3, N'Impuesto sobre bienes locales', 0, N'../Imagenes/importacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (884, 225, 4, N'Tasa de interés a corto plazo', 0, N'../Imagenes/importacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (885, 226, 1, N'Unión de países para promover el comercio y la cooperación económica', 1, N'../Imagenes/bloque_economico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (886, 226, 2, N'Sistema bancario centralizado', 0, N'../Imagenes/bloque_economico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (887, 226, 3, N'Regulación de precios en el mercado', 0, N'../Imagenes/bloque_economico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (888, 226, 4, N'Acuerdo de reducción de impuestos internos', 0, N'../Imagenes/bloque_economico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (889, 227, 1, N'Organización Mundial del Comercio', 1, N'../Imagenes/omc_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (890, 227, 2, N'Organización de la Moneda y Comercio', 0, N'../Imagenes/omc_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (891, 227, 3, N'Organismo Monetario Central', 0, N'../Imagenes/omc_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (892, 227, 4, N'Observatorio de Mercados y Comercio', 0, N'../Imagenes/omc_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (893, 228, 1, N'Acuerdo entre países para reducir o eliminar barreras comerciales', 1, N'../Imagenes/tlc_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (894, 228, 2, N'Política monetaria de un país', 0, N'../Imagenes/tlc_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (895, 228, 3, N'Regulación del tipo de cambio', 0, N'../Imagenes/tlc_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (896, 228, 4, N'Acuerdo de cooperación militar', 0, N'../Imagenes/tlc_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (897, 229, 1, N'Organización internacional que facilita la cooperación monetaria y financiera global', 1, N'../Imagenes/fmi_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (898, 229, 2, N'Organización de comercio mundial', 0, N'../Imagenes/fmi_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (899, 229, 3, N'Entidad financiera que otorga préstamos a empresas', 0, N'../Imagenes/fmi_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (900, 229, 4, N'Banco central europeo', 0, N'../Imagenes/fmi_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (901, 230, 1, N'Sistema donde el valor de la moneda se fija en relación a otra moneda o bien', 1, N'../Imagenes/tipo_cambio_fijo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (902, 230, 2, N'Sistema donde la moneda fluctúa libremente en el mercado', 0, N'../Imagenes/tipo_cambio_fijo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (903, 230, 3, N'Valor de una moneda basado en su poder adquisitivo', 0, N'../Imagenes/tipo_cambio_fijo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (904, 230, 4, N'Valor de la moneda que cambia según la oferta y la demanda', 0, N'../Imagenes/tipo_cambio_fijo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (905, 231, 1, N'Reducción del valor de una moneda respecto a otras monedas', 1, N'../Imagenes/devaluacion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (906, 231, 2, N'Incremento del valor de una moneda en el mercado', 0, N'../Imagenes/devaluacion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (907, 231, 3, N'Fijación del tipo de cambio por parte del gobierno', 0, N'../Imagenes/devaluacion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (908, 231, 4, N'Medida de la inflación', 0, N'../Imagenes/devaluacion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (909, 232, 1, N'Teoría que establece que los tipos de cambio se ajustan para igualar el costo de un bien en diferentes países', 1, N'../Imagenes/ppa_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (910, 232, 2, N'Valor fijo de una moneda en términos de oro', 0, N'../Imagenes/ppa_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (911, 232, 3, N'Relación entre la oferta y la demanda de divisas', 0, N'../Imagenes/ppa_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (912, 232, 4, N'Tasa de interés internacional', 0, N'../Imagenes/ppa_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (917, 234, 1, N'Cuando un país importa más bienes y servicios de los que exporta', 1, N'../Imagenes/deficit_comercial_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (918, 234, 2, N'Exceso de exportaciones sobre importaciones', 0, N'../Imagenes/deficit_comercial_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (919, 234, 3, N'Aumento en las reservas de divisas', 0, N'../Imagenes/deficit_comercial_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (920, 234, 4, N'Devaluación de la moneda local', 0, N'../Imagenes/deficit_comercial_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (921, 235, 1, N'Inversión realizada por una empresa o individuo en un país extranjero', 1, N'../Imagenes/ied_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (922, 235, 2, N'Financiamiento a corto plazo', 0, N'../Imagenes/ied_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (923, 235, 3, N'Inversión en bonos y acciones locales', 0, N'../Imagenes/ied_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (924, 235, 4, N'Comercio de bienes y servicios', 0, N'../Imagenes/ied_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (925, 236, 1, N'Política de restricción del comercio exterior para proteger la economía local', 1, N'../Imagenes/proteccionismo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (926, 236, 2, N'Fomento del libre comercio', 0, N'../Imagenes/proteccionismo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (927, 236, 3, N'Reducción de impuestos internos', 0, N'../Imagenes/proteccionismo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (928, 236, 4, N'Aumento de la inversión extranjera', 0, N'../Imagenes/proteccionismo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (929, 237, 1, N'Práctica de vender productos en el extranjero a un precio inferior al costo de producción', 1, N'../Imagenes/dumping_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (930, 237, 2, N'Acuerdo para fijar precios entre competidores', 0, N'../Imagenes/dumping_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (931, 237, 3, N'Compra masiva de productos importados', 0, N'../Imagenes/dumping_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (932, 237, 4, N'Inversión en mercados de riesgo', 0, N'../Imagenes/dumping_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (933, 238, 1, N'Acuerdo internacional de 1944 que estableció las bases del sistema monetario internacional', 1, N'../Imagenes/bretton_woods_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (934, 238, 2, N'Plan de recuperación económica para Europa después de la Segunda Guerra Mundial', 0, N'../Imagenes/bretton_woods_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (935, 238, 3, N'Trato comercial entre Estados Unidos y China en los años 1980', 0, N'../Imagenes/bretton_woods_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (936, 238, 4, N'Organización que promueve la cooperación en comercio internacional', 0, N'../Imagenes/bretton_woods_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (941, 240, 1, N'Teoría que sugiere que los países se benefician al especializarse en la producción de bienes donde tienen menor costo de oportunidad', 1, N'../Imagenes/ventajas_comparativas_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (942, 240, 2, N'Teoría que establece el libre comercio', 0, N'../Imagenes/ventajas_comparativas_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (943, 240, 3, N'Teoría del equilibrio de mercado', 0, N'../Imagenes/ventajas_comparativas_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (944, 240, 4, N'Teoría de la inflación controlada', 0, N'../Imagenes/ventajas_comparativas_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (945, 241, 1, N'Capacidad de mover capitales libremente entre países', 1, N'../Imagenes/movilidad_capitales_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (946, 241, 2, N'Control de precios de bienes y servicios', 0, N'../Imagenes/movilidad_capitales_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (947, 241, 3, N'Política fiscal de un país', 0, N'../Imagenes/movilidad_capitales_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (948, 241, 4, N'Compra de bienes locales', 0, N'../Imagenes/movilidad_capitales_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (949, 242, 1, N'Conjunto de medidas relacionadas con el valor de la moneda nacional respecto a otras monedas', 1, N'../Imagenes/politica_cambiaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (950, 242, 2, N'Regulación del comercio internacional', 0, N'../Imagenes/politica_cambiaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (951, 242, 3, N'Fijación del precio de los bienes y servicios', 0, N'../Imagenes/politica_cambiaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (952, 242, 4, N'Política de inversión extranjera', 0, N'../Imagenes/politica_cambiaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (953, 243, 1, N'Teoría que sugiere que los países con mayor productividad tienen salarios más altos, lo que se refleja en un tipo de cambio más fuerte', 1, N'../Imagenes/balassa_samuelson_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (954, 243, 2, N'Teoría de la paridad del poder adquisitivo', 0, N'../Imagenes/balassa_samuelson_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (955, 243, 3, N'Teoría del comercio internacional', 0, N'../Imagenes/balassa_samuelson_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (956, 243, 4, N'Teoría de los mercados eficientes', 0, N'../Imagenes/balassa_samuelson_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (957, 244, 1, N'Parte de la balanza de pagos que registra las transacciones financieras de un país con el resto del mundo', 1, N'../Imagenes/cuenta_financiera_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (958, 244, 2, N'Registro de exportaciones e importaciones de bienes y servicios', 0, N'../Imagenes/cuenta_financiera_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (959, 244, 3, N'Ingreso de remesas del extranjero', 0, N'../Imagenes/cuenta_financiera_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (960, 244, 4, N'Medida del déficit fiscal', 0, N'../Imagenes/cuenta_financiera_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (961, 245, 1, N'Situación en la que las tasas de interés bajas no logran estimular la inversión ni el consumo', 1, N'../Imagenes/trampa_liquidez_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (962, 245, 2, N'Fijación de precios máximos y mínimos en el mercado', 0, N'../Imagenes/trampa_liquidez_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (963, 245, 3, N'Control de la oferta monetaria', 0, N'../Imagenes/trampa_liquidez_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (964, 245, 4, N'Exceso de inversión extranjera directa', 0, N'../Imagenes/trampa_liquidez_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (965, 246, 1, N'El valor de la moneda de un país en términos de otra moneda sin ajuste por la inflación', 1, N'../Imagenes/tipo_cambio_nominal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (966, 246, 2, N'Valor de la moneda ajustado por la inflación relativa', 0, N'../Imagenes/tipo_cambio_nominal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (967, 246, 3, N'Tasa de cambio fija entre dos monedas', 0, N'../Imagenes/tipo_cambio_nominal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (968, 246, 4, N'Valor de una moneda en términos de oro', 0, N'../Imagenes/tipo_cambio_nominal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (969, 247, 1, N'Indicador que mide la probabilidad de que un país no cumpla con sus obligaciones financieras', 1, N'../Imagenes/riesgo_pais_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (970, 247, 2, N'Medida del crecimiento económico de un país', 0, N'../Imagenes/riesgo_pais_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (971, 247, 3, N'Indicador de la inflación en el mercado', 0, N'../Imagenes/riesgo_pais_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (972, 247, 4, N'Tasa de interés de los préstamos internacionales', 0, N'../Imagenes/riesgo_pais_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (973, 248, 1, N'Una economía que participa activamente en el comercio internacional', 1, N'../Imagenes/economia_abierta_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (974, 248, 2, N'Una economía que está cerrada al comercio exterior', 0, N'../Imagenes/economia_abierta_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (975, 248, 3, N'Una economía que depende únicamente del sector servicios', 0, N'../Imagenes/economia_abierta_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (976, 248, 4, N'Una economía con alta inflación', 0, N'../Imagenes/economia_abierta_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (985, 251, 1, N'Impuesto que se cobra directamente a las personas o empresas sobre sus ingresos o propiedades', 1, N'../Imagenes/impuesto_directo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (986, 251, 2, N'Impuesto aplicado a bienes y servicios', 0, N'../Imagenes/impuesto_directo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (987, 251, 3, N'Tarifa aplicada a la importación de productos', 0, N'../Imagenes/impuesto_directo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (988, 251, 4, N'Contribución voluntaria para proyectos sociales', 0, N'../Imagenes/impuesto_directo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (989, 252, 1, N'Impuesto que se aplica a bienes y servicios y que el consumidor paga de forma indirecta', 1, N'../Imagenes/impuesto_indirecto_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (990, 252, 2, N'Impuesto que grava directamente los ingresos de las personas', 0, N'../Imagenes/impuesto_indirecto_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (991, 252, 3, N'Tasa aplicada a la inversión extranjera', 0, N'../Imagenes/impuesto_indirecto_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (992, 252, 4, N'Reducción del impuesto sobre la renta', 0, N'../Imagenes/impuesto_indirecto_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (993, 253, 1, N'Ayuda económica otorgada por el gobierno para apoyar ciertos sectores de la economía', 1, N'../Imagenes/subsidio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (994, 253, 2, N'Impuesto aplicado a la importación de bienes', 0, N'../Imagenes/subsidio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (995, 253, 3, N'Reducción del gasto público', 0, N'../Imagenes/subsidio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (996, 253, 4, N'Programa de reducción de impuestos', 0, N'../Imagenes/subsidio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (997, 254, 1, N'Dinero que el gobierno gasta en bienes y servicios para la comunidad', 1, N'../Imagenes/gasto_publico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (998, 254, 2, N'Ingresos que el gobierno obtiene de los impuestos', 0, N'../Imagenes/gasto_publico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (999, 254, 3, N'Inversión en mercados financieros', 0, N'../Imagenes/gasto_publico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1000, 254, 4, N'Fondo de ahorro del gobierno', 0, N'../Imagenes/gasto_publico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1005, 256, 1, N'Situación donde los ingresos del gobierno superan a sus gastos', 1, N'../Imagenes/superavit_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1006, 256, 2, N'Gastos del gobierno superiores a sus ingresos', 0, N'../Imagenes/superavit_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1007, 256, 3, N'Reducción de la deuda pública', 0, N'../Imagenes/superavit_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1008, 256, 4, N'Incremento del déficit fiscal', 0, N'../Imagenes/superavit_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1009, 257, 1, N'Cantidad total de dinero que el gobierno debe a los acreedores', 1, N'../Imagenes/deuda_publica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1010, 257, 2, N'Ingresos del gobierno por impuestos', 0, N'../Imagenes/deuda_publica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1011, 257, 3, N'Recursos invertidos en el sector privado', 0, N'../Imagenes/deuda_publica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1012, 257, 4, N'Fondos de ahorro del gobierno', 0, N'../Imagenes/deuda_publica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1013, 258, 1, N'Ingreso total que el gobierno obtiene de los impuestos', 1, N'../Imagenes/recaudacion_tributaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1014, 258, 2, N'Gastos totales del gobierno', 0, N'../Imagenes/recaudacion_tributaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1015, 258, 3, N'Ingreso de exportaciones', 0, N'../Imagenes/recaudacion_tributaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1016, 258, 4, N'Fondos recaudados de la inversión pública', 0, N'../Imagenes/recaudacion_tributaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1025, 261, 1, N'Impuesto que aumenta a medida que el ingreso del contribuyente crece', 1, N'../Imagenes/impuesto_progresivo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1026, 261, 2, N'Impuesto que se mantiene constante sin importar el nivel de ingresos', 0, N'../Imagenes/impuesto_progresivo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1027, 261, 3, N'Impuesto aplicado solo a bienes de lujo', 0, N'../Imagenes/impuesto_progresivo_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1028, 261, 4, N'Impuesto que se aplica a todos los individuos por igual', 0, N'../Imagenes/impuesto_progresivo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1033, 263, 1, N'Dinero que el gobierno destina a la creación de infraestructura y bienes duraderos', 1, N'../Imagenes/gasto_inversion_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1034, 263, 2, N'Gastos del gobierno en bienes y servicios de consumo', 0, N'../Imagenes/gasto_inversion_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1035, 263, 3, N'Pago de la deuda pública', 0, N'../Imagenes/gasto_inversion_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1036, 263, 4, N'Subsidio a empresas privadas', 0, N'../Imagenes/gasto_inversion_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1037, 264, 1, N'Gastos del gobierno en bienes y servicios que se consumen en el corto plazo', 1, N'../Imagenes/gasto_corriente_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1038, 264, 2, N'Inversión en proyectos a largo plazo', 0, N'../Imagenes/gasto_corriente_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1039, 264, 3, N'Pago de impuestos', 0, N'../Imagenes/gasto_corriente_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1040, 264, 4, N'Reducción del déficit fiscal', 0, N'../Imagenes/gasto_corriente_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1045, 266, 1, N'Principio fiscal que sugiere que el gasto del gobierno no debe superar a sus ingresos en el largo plazo', 1, N'../Imagenes/regla_oro_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1046, 266, 2, N'Norma que establece el control de precios', 0, N'../Imagenes/regla_oro_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1047, 266, 3, N'Reglamento para la regulación del comercio internacional', 0, N'../Imagenes/regla_oro_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1048, 266, 4, N'Ley para el subsidio a empresas públicas', 0, N'../Imagenes/regla_oro_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1049, 267, 1, N'Situación en la que los ingresos del gobierno son iguales a sus gastos', 1, N'../Imagenes/equilibrio_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1050, 267, 2, N'Exceso de gastos sobre ingresos', 0, N'../Imagenes/equilibrio_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1051, 267, 3, N'Superávit en la balanza comercial', 0, N'../Imagenes/equilibrio_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1052, 267, 4, N'Balance de las cuentas corrientes', 0, N'../Imagenes/equilibrio_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1053, 268, 1, N'Política que busca reducir el déficit fiscal mediante la reducción del gasto público y el aumento de impuestos', 1, N'../Imagenes/politica_austeridad_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1054, 268, 2, N'Política que fomenta el gasto público para estimular la economía', 0, N'../Imagenes/politica_austeridad_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1055, 268, 3, N'Política para el control de la oferta monetaria', 0, N'../Imagenes/politica_austeridad_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1056, 268, 4, N'Plan de desarrollo para infraestructura', 0, N'../Imagenes/politica_austeridad_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1057, 269, 1, N'Política que busca reducir la demanda agregada disminuyendo el gasto público o aumentando los impuestos', 1, N'../Imagenes/politica_fiscal_contractiva_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1058, 269, 2, N'Política que incrementa la oferta monetaria', 0, N'../Imagenes/politica_fiscal_contractiva_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1059, 269, 3, N'Política que reduce las tasas de interés', 0, N'../Imagenes/politica_fiscal_contractiva_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1060, 269, 4, N'Política para aumentar el gasto en infraestructura', 0, N'../Imagenes/politica_fiscal_contractiva_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1065, 271, 1, N'Efecto que genera un cambio en la inversión sobre la producción total de una economía', 1, N'../Imagenes/efecto_multiplicador_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1066, 271, 2, N'Impacto de la oferta monetaria en la inflación', 0, N'../Imagenes/efecto_multiplicador_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1067, 271, 3, N'Efecto del gasto público en el déficit fiscal', 0, N'../Imagenes/efecto_multiplicador_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1068, 271, 4, N'Impacto de las exportaciones en el tipo de cambio', 0, N'../Imagenes/efecto_multiplicador_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1069, 272, 1, N'Principio que sugiere que la política fiscal no afecta la actividad económica a largo plazo', 1, N'../Imagenes/neutralidad_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1070, 272, 2, N'Teoría que establece la relación entre inflación y desempleo', 0, N'../Imagenes/neutralidad_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1071, 272, 3, N'Modelo que explica el crecimiento económico a corto plazo', 0, N'../Imagenes/neutralidad_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1072, 272, 4, N'Política de control de precios', 0, N'../Imagenes/neutralidad_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1073, 273, 1, N'Teoría que sugiere que el financiamiento del gasto público mediante deuda no afecta el nivel de consumo', 1, N'../Imagenes/equivalencia_ricardiana_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1074, 273, 2, N'Modelo de crecimiento económico', 0, N'../Imagenes/equivalencia_ricardiana_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1075, 273, 3, N'Principio que relaciona la oferta y demanda', 0, N'../Imagenes/equivalencia_ricardiana_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1076, 273, 4, N'Teoría del ciclo económico', 0, N'../Imagenes/equivalencia_ricardiana_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1077, 274, 1, N'Mecanismo que ajusta automáticamente el nivel de actividad económica en respuesta a cambios en la economía', 1, N'../Imagenes/estabilizador_automatico_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1078, 274, 2, N'Política que controla las fluctuaciones del tipo de cambio', 0, N'../Imagenes/estabilizador_automatico_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1079, 274, 3, N'Norma que regula los precios de los bienes', 0, N'../Imagenes/estabilizador_automatico_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1080, 274, 4, N'Instrumento de política monetaria', 0, N'../Imagenes/estabilizador_automatico_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1081, 275, 1, N'Conjunto de normas que regulan la política fiscal para garantizar la sostenibilidad de las finanzas públicas', 1, N'../Imagenes/regla_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1082, 275, 2, N'Reglas para la regulación del comercio exterior', 0, N'../Imagenes/regla_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1083, 275, 3, N'Normativa sobre el control de precios', 0, N'../Imagenes/regla_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1084, 275, 4, N'Ley que establece la oferta monetaria', 0, N'../Imagenes/regla_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1085, 276, 1, N'Diferencia entre los ingresos y gastos del gobierno, que resulta en un déficit o superávit', 1, N'../Imagenes/brecha_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1086, 276, 2, N'Balance de las cuentas corrientes', 0, N'../Imagenes/brecha_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1087, 276, 3, N'Exceso de exportaciones sobre importaciones', 0, N'../Imagenes/brecha_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1088, 276, 4, N'Relación entre la oferta y demanda de divisas', 0, N'../Imagenes/brecha_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1089, 277, 1, N'Teoría que sugiere que no es posible tener simultáneamente un gasto fiscal elevado, una baja carga fiscal, y una deuda pública sostenible', 1, N'../Imagenes/trilema_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1090, 277, 2, N'Teoría que establece la relación entre la inflación, el crecimiento y el desempleo', 0, N'../Imagenes/trilema_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1091, 277, 3, N'Modelo de comercio internacional', 0, N'../Imagenes/trilema_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1092, 277, 4, N'Ley de la oferta y la demanda', 0, N'../Imagenes/trilema_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1093, 278, 1, N'Mecanismo que ajusta automáticamente los impuestos y gastos del gobierno en función de los cambios en la inflación', 1, N'../Imagenes/indexacion_fiscal_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1094, 278, 2, N'Técnica para controlar las fluctuaciones del tipo de cambio', 0, N'../Imagenes/indexacion_fiscal_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1095, 278, 3, N'Metodología para calcular el crecimiento económico', 0, N'../Imagenes/indexacion_fiscal_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1096, 278, 4, N'Política de estabilización de precios', 0, N'../Imagenes/indexacion_fiscal_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1113, 283, 1, N'Acuerdo internacional de 1944 que estableció las bases del sistema monetario internacional', 1, N'../Imagenes/bretton_woods_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1114, 283, 2, N'Plan de recuperación económica para Europa', 0, N'../Imagenes/bretton_woods_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1115, 283, 3, N'Acuerdo comercial entre Estados Unidos y China', 0, N'../Imagenes/bretton_woods_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1116, 283, 4, N'Trato comercial entre Europa y América Latina', 0, N'../Imagenes/bretton_woods_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1117, 284, 1, N'Proceso de cambios tecnológicos y económicos que transformó la economía agrícola en industrial', 1, N'../Imagenes/revolucion_industrial_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1118, 284, 2, N'Periodo de desarrollo agrario en Europa', 0, N'../Imagenes/revolucion_industrial_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1119, 284, 3, N'Crisis financiera que afectó a los bancos europeos', 0, N'../Imagenes/revolucion_industrial_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1120, 284, 4, N'Acuerdo para el comercio de bienes agrícolas', 0, N'../Imagenes/revolucion_industrial_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1125, 286, 1, N'Crisis financiera mundial iniciada por el colapso del mercado inmobiliario en Estados Unidos', 1, N'../Imagenes/crisis_2008_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1126, 286, 2, N'Crisis de deuda en América Latina', 0, N'../Imagenes/crisis_2008_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1127, 286, 3, N'Desplome del comercio internacional en la década de 1930', 0, N'../Imagenes/crisis_2008_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1128, 286, 4, N'Colapso del sistema bancario europeo', 0, N'../Imagenes/crisis_2008_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1129, 287, 1, N'Corrida masiva hacia California en busca de oro en el siglo XIX', 1, N'../Imagenes/fiebre_oro_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1130, 287, 2, N'Caída del mercado de oro en Europa', 0, N'../Imagenes/fiebre_oro_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1131, 287, 3, N'Exploración minera en Australia', 0, N'../Imagenes/fiebre_oro_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1132, 287, 4, N'Colapso de la economía de California', 0, N'../Imagenes/fiebre_oro_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1133, 288, 1, N'Fin de la división entre Europa Oriental y Occidental, que condujo a una reunificación económica', 1, N'../Imagenes/caida_muro_berlin_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1134, 288, 2, N'Caída del sistema financiero alemán', 0, N'../Imagenes/caida_muro_berlin_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1135, 288, 3, N'Devaluación de la moneda alemana', 0, N'../Imagenes/caida_muro_berlin_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1136, 288, 4, N'Inicio de la Revolución Industrial', 0, N'../Imagenes/caida_muro_berlin_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1137, 289, 1, N'Crisis provocada por un embargo petrolero de la OPEP, lo que llevó a un alza de precios y recesión', 1, N'../Imagenes/crisis_petroleo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1138, 289, 2, N'Caída de los precios del petróleo', 0, N'../Imagenes/crisis_petroleo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1139, 289, 3, N'Fin de la guerra del Golfo', 0, N'../Imagenes/crisis_petroleo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1140, 289, 4, N'Acuerdo de paz en Oriente Medio', 0, N'../Imagenes/crisis_petroleo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1141, 290, 1, N'Sistema monetario internacional donde las monedas estaban respaldadas por oro', 1, N'../Imagenes/estandar_oro_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1142, 290, 2, N'Sistema de libre flotación de monedas', 0, N'../Imagenes/estandar_oro_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1143, 290, 3, N'Plan de recuperación económica', 0, N'../Imagenes/estandar_oro_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1144, 290, 4, N'Acuerdo comercial entre países', 0, N'../Imagenes/estandar_oro_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1145, 291, 1, N'Tipo de hipoteca de alto riesgo que contribuyó a la crisis financiera de 2008', 1, N'../Imagenes/hipoteca_subprime_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1146, 291, 2, N'Hipoteca de bajo interés', 0, N'../Imagenes/hipoteca_subprime_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1147, 291, 3, N'Préstamo a empresas tecnológicas', 0, N'../Imagenes/hipoteca_subprime_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1148, 291, 4, N'Crédito otorgado por el gobierno', 0, N'../Imagenes/hipoteca_subprime_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1149, 292, 1, N'Crisis financiera que afectó a varios países asiáticos debido a la rápida retirada de capitales extranjeros', 1, N'../Imagenes/crisis_asiatica_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1150, 292, 2, N'Crisis causada por un aumento en el precio del petróleo', 0, N'../Imagenes/crisis_asiatica_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1151, 292, 3, N'Deflación en Japón', 0, N'../Imagenes/crisis_asiatica_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1152, 292, 4, N'Devaluación del yuan', 0, N'../Imagenes/crisis_asiatica_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1153, 293, 1, N'Colapso del mercado de valores en 1929 que desencadenó la Gran Depresión', 1, N'../Imagenes/crack_29_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1154, 293, 2, N'Crisis financiera causada por la especulación', 0, N'../Imagenes/crack_29_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1155, 293, 3, N'Devaluación de la moneda', 0, N'../Imagenes/crack_29_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1156, 293, 4, N'Caída de los precios del petróleo', 0, N'../Imagenes/crack_29_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1157, 294, 1, N'Periodo de inflación elevada que afectó a varias economías desarrolladas', 1, N'../Imagenes/inflacion_1980_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1158, 294, 2, N'Periodo de hiperinflación en América Latina', 0, N'../Imagenes/inflacion_1980_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1159, 294, 3, N'Crisis de deuda en los países en desarrollo', 0, N'../Imagenes/inflacion_1980_c.png')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1160, 294, 4, N'Deflación en Japón', 0, N'../Imagenes/inflacion_1980_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1161, 295, 1, N'Acuerdo que sentó las bases para la Unión Europea y la creación del euro', 1, N'../Imagenes/tratado_maastricht_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1162, 295, 2, N'Acuerdo de libre comercio entre América y Europa', 0, N'../Imagenes/tratado_maastricht_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1163, 295, 3, N'Trato comercial entre Estados Unidos y China', 0, N'../Imagenes/tratado_maastricht_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1164, 295, 4, N'Plan de expansión comercial en Asia', 0, N'../Imagenes/tratado_maastricht_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1165, 296, 1, N'Acuerdo para la intervención coordinada en los mercados de divisas para depreciar el dólar estadounidense', 1, N'../Imagenes/acuerdo_plaza_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1166, 296, 2, N'Acuerdo de paz en Oriente Medio', 0, N'../Imagenes/acuerdo_plaza_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1167, 296, 3, N'Tratado comercial entre Estados Unidos y Canadá', 0, N'../Imagenes/acuerdo_plaza_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1168, 296, 4, N'Acuerdo para la estabilización del precio del petróleo', 0, N'../Imagenes/acuerdo_plaza_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1169, 297, 1, N'Colapso de una empresa energética estadounidense debido a fraudes contables', 1, N'../Imagenes/colapso_enron_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1170, 297, 2, N'Quiebra de una empresa tecnológica', 0, N'../Imagenes/colapso_enron_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1171, 297, 3, N'Crisis de deuda en una empresa de telecomunicaciones', 0, N'../Imagenes/colapso_enron_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1172, 297, 4, N'Devaluación de la moneda', 0, N'../Imagenes/colapso_enron_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1173, 298, 1, N'Fin de la Unión Soviética que llevó a cambios económicos y políticos significativos en Europa del Este', 1, N'../Imagenes/desintegracion_urss_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1174, 298, 2, N'Desintegración del mercado asiático', 0, N'../Imagenes/desintegracion_urss_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1175, 298, 3, N'Crisis financiera en América Latina', 0, N'../Imagenes/desintegracion_urss_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1176, 298, 4, N'Fin del acuerdo Bretton Woods', 0, N'../Imagenes/desintegracion_urss_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1177, 299, 1, N'Crisis financiera en Rusia caracterizada por la devaluación del rublo y la moratoria de la deuda', 1, N'../Imagenes/crisis_rublo_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1178, 299, 2, N'Crisis de deuda en América Latina', 0, N'../Imagenes/crisis_rublo_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1179, 299, 3, N'Colapso del mercado asiático', 0, N'../Imagenes/crisis_rublo_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1180, 299, 4, N'Inflación en la Unión Soviética', 0, N'../Imagenes/crisis_rublo_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1181, 300, 1, N'Política monetaria agresiva implementada por el presidente de la Fed, Paul Volcker, para combatir la inflación', 1, N'../Imagenes/choque_volcker_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1182, 300, 2, N'Plan de recuperación económica de Estados Unidos', 0, N'../Imagenes/choque_volcker_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1183, 300, 3, N'Acuerdo comercial con China', 0, N'../Imagenes/choque_volcker_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1184, 300, 4, N'Caída del precio del petróleo', 0, N'../Imagenes/choque_volcker_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1185, 301, 1, N'Plan para reestructurar la deuda externa de países en desarrollo a través de la emisión de bonos Brady', 1, N'../Imagenes/plan_brady_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1186, 301, 2, N'Acuerdo de libre comercio', 0, N'../Imagenes/plan_brady_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1187, 301, 3, N'Plan de recuperación económica de Europa', 0, N'../Imagenes/plan_brady_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1188, 301, 4, N'Política de austeridad', 0, N'../Imagenes/plan_brady_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1189, 302, 1, N'Crisis financiera en México causada por la devaluación del peso y la falta de reservas internacionales', 1, N'../Imagenes/crisis_mexicana_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1190, 302, 2, N'Caída del mercado de valores en México', 0, N'../Imagenes/crisis_mexicana_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1191, 302, 3, N'Inflación en América Latina', 0, N'../Imagenes/crisis_mexicana_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1192, 302, 4, N'Deflación en la economía mexicana', 0, N'../Imagenes/crisis_mexicana_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1193, 303, 1, N'Acuerdo para modificar el sistema de tipos de cambio fijos establecido en Bretton Woods', 1, N'../Imagenes/acuerdo_smithsonian_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1194, 303, 2, N'Tratado comercial entre Estados Unidos y Japón', 0, N'../Imagenes/acuerdo_smithsonian_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1195, 303, 3, N'Plan de estabilización de precios', 0, N'../Imagenes/acuerdo_smithsonian_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1196, 303, 4, N'Acuerdo para el comercio de bienes agrícolas', 0, N'../Imagenes/acuerdo_smithsonian_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1197, 304, 1, N'Crisis de deuda que afectó a varios países de América Latina debido al sobreendeudamiento y la caída de precios de materias primas', 1, N'../Imagenes/crisis_deuda_latinoamericana_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1198, 304, 2, N'Crisis del petróleo en la región', 0, N'../Imagenes/crisis_deuda_latinoamericana_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1199, 304, 3, N'Hipoteca subprime', 0, N'../Imagenes/crisis_deuda_latinoamericana_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1200, 304, 4, N'Colapso de la bolsa de valores', 0, N'../Imagenes/crisis_deuda_latinoamericana_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1201, 305, 1, N'Burbuja especulativa en Holanda en el siglo XVII donde los precios de los bulbos de tulipán alcanzaron niveles extremadamente altos antes de colapsar', 1, N'../Imagenes/burbuja_tulipanes_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1202, 305, 2, N'Colapso del mercado inmobiliario', 0, N'../Imagenes/burbuja_tulipanes_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1203, 305, 3, N'Caída de los precios del oro', 0, N'../Imagenes/burbuja_tulipanes_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1204, 305, 4, N'Crisis financiera en Inglaterra', 0, N'../Imagenes/burbuja_tulipanes_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1205, 306, 1, N'Periodo de dominación de las principales compañías petroleras occidentales sobre la producción y precios del petróleo en el siglo XX', 1, N'../Imagenes/siete_hermanas_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1206, 306, 2, N'Tratado comercial entre siete países', 0, N'../Imagenes/siete_hermanas_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1207, 306, 3, N'Acuerdo para la distribución de las reservas de oro', 0, N'../Imagenes/siete_hermanas_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1208, 306, 4, N'Alianza militar en la Guerra Fría', 0, N'../Imagenes/siete_hermanas_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1209, 307, 1, N'Acuerdo entre España y Portugal en el siglo XV que dividió el mundo en dos zonas de exploración y colonización', 1, N'../Imagenes/tratado_tordesillas_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1210, 307, 2, N'Tratado comercial entre Europa y América Latina', 0, N'../Imagenes/tratado_tordesillas_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1211, 307, 3, N'Acuerdo para la distribución de las reservas de plata', 0, N'../Imagenes/tratado_tordesillas_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1212, 307, 4, N'Acuerdo de libre comercio', 0, N'../Imagenes/tratado_tordesillas_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1213, 308, 1, N'Primera crisis del petróleo causada por el embargo de la OPEP en respuesta al apoyo occidental a Israel durante la guerra del Yom Kippur', 1, N'../Imagenes/shock_petrolero_1973_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1214, 308, 2, N'Crisis financiera en Europa', 0, N'../Imagenes/shock_petrolero_1973_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1215, 308, 3, N'Colapso del mercado de valores', 0, N'../Imagenes/shock_petrolero_1973_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1216, 308, 4, N'Acuerdo para estabilizar los precios del petróleo', 0, N'../Imagenes/shock_petrolero_1973_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1217, 3, 1, N'Acciones del banco central para controlar la oferta monetaria y las tasas de interés', 1, N'../Imagenes/politica_monetaria_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1218, 3, 2, N'Política gubernamental para aumentar la producción agrícola', 0, N'../Imagenes/politica_monetaria_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1219, 3, 3, N'Estrategia de inversión en mercados internacionales', 0, N'../Imagenes/politica_monetaria_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1220, 3, 4, N'Programa social para el bienestar de la población', 0, N'../Imagenes/politica_monetaria_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1221, 4, 1, N'Cantidad de un bien o servicio que los consumidores están dispuestos a comprar a diferentes precios', 1, N'../Imagenes/demanda_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1222, 4, 2, N'Cantidad total de productos que una empresa produce', 0, N'../Imagenes/demanda_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1223, 4, 3, N'Precio al que los consumidores están dispuestos a vender un bien', 0, N'../Imagenes/demanda_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1224, 4, 4, N'Nivel de satisfacción de los consumidores con un producto', 0, N'../Imagenes/demanda_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1225, 5, 1, N'Cantidad de un bien o servicio que los productores están dispuestos a vender a diferentes precios', 1, N'../Imagenes/oferta_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1226, 5, 2, N'Cantidad de dinero disponible para gastar en un mercado', 0, N'../Imagenes/oferta_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1227, 5, 3, N'Nivel de demanda de los consumidores', 0, N'../Imagenes/oferta_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1228, 5, 4, N'Cantidad total de bienes exportados por un país', 0, N'../Imagenes/oferta_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1229, 6, 1, N'Situación en la que la cantidad demandada es igual a la cantidad ofrecida, estableciendo un precio de equilibrio', 1, N'../Imagenes/equilibrio_a.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1230, 6, 2, N'Estado donde la oferta excede la demanda', 0, N'../Imagenes/equilibrio_b.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1231, 6, 3, N'Cuando los precios fluctúan constantemente en el mercado', 0, N'../Imagenes/equilibrio_c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1232, 6, 4, N'Una situación de monopolio en el mercado', 0, N'../Imagenes/equilibrio_d.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1245, 309, 1, N'Tarjeta vinculada a una cuenta bancaria que permite hacer pagos con saldo disponible', 1, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1246, 309, 2, N'Tarjeta de crédito que permite comprar a plazos', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1247, 309, 3, N'Instrumento de ahorro para el retiro', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1248, 309, 4, N'Cuenta bancaria a plazo fijo', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1261, 313, 1, N'Cuenta bancaria que permite depósitos y retiros frecuentes', 1, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1262, 313, 2, N'Cuenta destinada únicamente para ahorro a largo plazo', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1263, 313, 3, N'Cuenta que solo puede ser usada con tarjeta de crédito', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1264, 313, 4, N'Cuenta que genera interés a largo plazo', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1269, 315, 1, N'Dispositivo que permite realizar transacciones bancarias de manera automática', 1, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1270, 315, 2, N'Dispositivo usado para transferencias internacionales', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1271, 315, 3, N'Máquina para depositar solo cheques', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1272, 315, 4, N'Sistema de pagos electrónicos entre bancos', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1273, 316, 1, N'Cuenta bancaria que genera intereses después de un período determinado', 1, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1274, 316, 2, N'Tarjeta de crédito que permite ahorrar a plazos', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1275, 316, 3, N'Fondos destinados a pagos internacionales', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1276, 316, 4, N'Cuenta corriente con límite de retiros', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1277, 317, 1, N'Contrato que garantiza una compensación económica en caso de fallecimiento del asegurado', 1, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1278, 317, 2, N'Préstamo bancario con garantía hipotecaria', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1279, 317, 3, N'Fondo de inversión a corto plazo', 0, N'../Imagenes/ruta_imagen_generica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1280, 317, 4, N'Seguro que cubre pérdidas en bienes inmuebles', 0, N'../Imagenes/ruta_imagen_generica.jpg')
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK__Preguntas__IdCat__3C69FB99] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK__Preguntas__IdCat__3C69FB99]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK__Preguntas__IdDif__3D5E1FD2] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK__Preguntas__IdDif__3D5E1FD2]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK__Respuesta__IdPre__3E52440B] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK__Respuesta__IdPre__3E52440B]
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCategorias]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDificultades]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerPreguntas]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestaPorId]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestas]    Script Date: 20/9/2024 15:22:32 ******/
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
/****** Object:  StoredProcedure [dbo].[VerificarIntegridadDatos]    Script Date: 20/9/2024 15:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarIntegridadDatos]
    @autoFix BIT = 1,    -- Corrección automática habilitada por defecto
    @rollback BIT = 0    -- Parámetro para revertir los cambios
AS
BEGIN
    -- Variables para el conteo de errores y los mensajes
    DECLARE @errorCount INT = 0;
    DECLARE @messages NVARCHAR(MAX) = N'';
    DECLARE @transMessage NVARCHAR(MAX) = N'';
    DECLARE @messageChunk NVARCHAR(4000);  -- Variable para imprimir en bloques
    DECLARE @messageLength INT;  -- Longitud de la cadena para evitar errores de longitud

    -- Iniciar una transacción
    BEGIN TRANSACTION;

    -- Encabezado del mensaje
    SET @messages = @messages + '==========================================================' + CHAR(13) + CHAR(10);
    SET @messages = @messages + '        Iniciando Comprobación y Corrección de Integridad de Datos' + CHAR(13) + CHAR(10);
    SET @messages = @messages + '==========================================================' + CHAR(13) + CHAR(10);

    -- Función auxiliar para agregar separadores
    DECLARE @lineBreak NVARCHAR(100) = '----------------------------------------------------------' + CHAR(13) + CHAR(10);

    -- ========================================================
    -- Situación 1: Preguntas duplicadas (mismo enunciado)
    -- ========================================================
    SET @messages = @messages + @lineBreak + 'Comprobando que no haya preguntas duplicadas...' + CHAR(13) + CHAR(10);
    IF EXISTS (SELECT Enunciado FROM dbo.Preguntas GROUP BY Enunciado HAVING COUNT(Enunciado) > 1)
    BEGIN
        SET @errorCount = @errorCount + 1;
        SET @messages = @messages + 'ERROR: Se encontraron preguntas duplicadas.' + CHAR(13) + CHAR(10);
        
        -- Si la corrección automática está activada, eliminar preguntas duplicadas
        IF @autoFix = 1
        BEGIN
            SET @messages = @messages + 'Eliminando preguntas duplicadas...' + CHAR(13) + CHAR(10);
            
            -- Primero, eliminar las respuestas asociadas a las preguntas duplicadas
            DELETE FROM dbo.Respuestas
            WHERE IdPregunta IN (
                SELECT IdPregunta FROM dbo.Preguntas p1 
                WHERE EXISTS (
                    SELECT 1 FROM dbo.Preguntas p2 
                    WHERE p2.Enunciado = p1.Enunciado
                    AND p1.IdPregunta > p2.IdPregunta
                )
            );

            -- Luego, eliminar las preguntas duplicadas
            DELETE FROM dbo.Preguntas 
            WHERE IdPregunta IN (
                SELECT IdPregunta FROM dbo.Preguntas p1 
                WHERE EXISTS (
                    SELECT 1 FROM dbo.Preguntas p2 
                    WHERE p2.Enunciado = p1.Enunciado
                    AND p1.IdPregunta > p2.IdPregunta
                )
            );
            
            SET @messages = @messages + 'Se han eliminado las preguntas duplicadas.' + CHAR(13) + CHAR(10);
        END
    END
    ELSE
    BEGIN
        SET @messages = @messages + 'No se encontraron preguntas duplicadas.' + CHAR(13) + CHAR(10);
    END

    -- ========================================================
    -- Situación 2: Respuestas duplicadas por pregunta
    -- ========================================================
    SET @messages = @messages + @lineBreak + 'Comprobando que no haya respuestas duplicadas por pregunta...' + CHAR(13) + CHAR(10);
    IF EXISTS (SELECT IdPregunta, Opcion FROM dbo.Respuestas GROUP BY IdPregunta, Opcion HAVING COUNT(*) > 1)
    BEGIN
        SET @errorCount = @errorCount + 1;
        SET @messages = @messages + 'ERROR: Se encontraron respuestas duplicadas.' + CHAR(13) + CHAR(10);
        
        -- Si la corrección automática está activada, eliminar respuestas duplicadas
        IF @autoFix = 1
        BEGIN
            SET @messages = @messages + 'Eliminando respuestas duplicadas...' + CHAR(13) + CHAR(10);
            
            -- Elimina todas las respuestas duplicadas excepto una por opción y pregunta
            DELETE FROM dbo.Respuestas 
            WHERE IdRespuesta IN (
                SELECT IdRespuesta FROM dbo.Respuestas r1
                WHERE EXISTS (
                    SELECT 1 FROM dbo.Respuestas r2 
                    WHERE r2.IdPregunta = r1.IdPregunta AND r2.Opcion = r1.Opcion
                    AND r1.IdRespuesta > r2.IdRespuesta
                )
            );
            
            SET @messages = @messages + 'Se han eliminado las respuestas duplicadas.' + CHAR(13) + CHAR(10);
        END
    END
    ELSE
    BEGIN
        SET @messages = @messages + 'No se encontraron respuestas duplicadas.' + CHAR(13) + CHAR(10);
    END

    -- ========================================================
    -- Situación 3: Respuestas sin contenido
    -- ========================================================
    SET @messages = @messages + @lineBreak + 'Comprobando que todas las respuestas tengan contenido...' + CHAR(13) + CHAR(10);
    IF EXISTS (SELECT 1 FROM dbo.Respuestas WHERE LTRIM(RTRIM(Contenido)) = '' OR Contenido IS NULL)
    BEGIN
        SET @errorCount = @errorCount + 1;
        SET @messages = @messages + 'ERROR: Se encontraron respuestas sin contenido.' + CHAR(13) + CHAR(10);
        
        -- Si la corrección automática está activada, eliminar respuestas sin contenido
        IF @autoFix = 1
        BEGIN
            SET @messages = @messages + 'Eliminando respuestas sin contenido...' + CHAR(13) + CHAR(10);
            
            -- Elimina todas las respuestas sin contenido
            DELETE FROM dbo.Respuestas WHERE LTRIM(RTRIM(Contenido)) = '' OR Contenido IS NULL;
            
            SET @messages = @messages + 'Se han eliminado las respuestas sin contenido.' + CHAR(13) + CHAR(10);
        END
    END
    ELSE
    BEGIN
        SET @messages = @messages + 'Todas las respuestas tienen contenido.' + CHAR(13) + CHAR(10);
    END

    -- ========================================================
    -- Situación 4: Preguntas sin respuestas correctas
    -- ========================================================
    SET @messages = @messages + @lineBreak + 'Comprobando que cada pregunta tenga al menos una respuesta correcta...' + CHAR(13) + CHAR(10);
    IF EXISTS (SELECT 1 FROM dbo.Preguntas p WHERE NOT EXISTS (SELECT 1 FROM dbo.Respuestas r WHERE r.IdPregunta = p.IdPregunta AND r.Correcta = 1))
    BEGIN
        SET @errorCount = @errorCount + 1;
        SET @messages = @messages + 'ERROR: Se encontraron preguntas sin respuestas correctas.' + CHAR(13) + CHAR(10);
        
        -- Si la corrección automática está activada, eliminar preguntas sin respuestas correctas
        IF @autoFix = 1
        BEGIN
            SET @messages = @messages + 'Eliminando preguntas sin respuestas correctas...' + CHAR(13) + CHAR(10);
            
            -- Elimina todas las preguntas que no tienen ninguna respuesta correcta
            DELETE FROM dbo.Preguntas WHERE IdPregunta IN (
                SELECT IdPregunta FROM dbo.Preguntas p
                WHERE NOT EXISTS (
                    SELECT 1 FROM dbo.Respuestas r
                    WHERE r.IdPregunta = p.IdPregunta AND r.Correcta = 1
                )
            );
            
            SET @messages = @messages + 'Se han eliminado las preguntas sin respuestas correctas.' + CHAR(13) + CHAR(10);
        END
    END
    ELSE
    BEGIN
        SET @messages = @messages + 'Todas las preguntas tienen al menos una respuesta correcta.' + CHAR(13) + CHAR(10);
    END

    -- ========================================================
    -- Revisión final y cierre
    -- ========================================================
    SET @messages = @messages + '==========================================================' + CHAR(13) + CHAR(10);
    IF @errorCount = 0
    BEGIN
        SET @messages = @messages + 'Comprobación completa: No se encontraron errores en los datos.' + CHAR(13) + CHAR(10);
    END
    ELSE
    BEGIN
        SET @messages = @messages + 'Comprobación completa: Se encontraron ' + CAST(@errorCount AS NVARCHAR) + ' errores en los datos.' + CHAR(13) + CHAR(10);
    END
    SET @messages = @messages + '==========================================================' + CHAR(13) + CHAR(10);

    -- Si se solicita rollback, deshacer los cambios
    IF @rollback = 1
    BEGIN
        ROLLBACK TRANSACTION;
        SET @transMessage = 'Los cambios han sido revertidos.' + CHAR(13) + CHAR(10);
    END
    ELSE
    BEGIN
        COMMIT TRANSACTION;
        SET @transMessage = 'Los cambios han sido confirmados.' + CHAR(13) + CHAR(10);
    END

    -- Obtener longitud de mensajes para evitar errores
    SET @messageLength = LEN(@messages);

    -- Imprimir los mensajes en bloques de 4000 caracteres
    WHILE @messageLength > 0
    BEGIN
        IF @messageLength <= 4000
        BEGIN
            SET @messageChunk = @messages;
            SET @messageLength = 0;
        END
        ELSE
        BEGIN
            SET @messageChunk = LEFT(@messages, 4000);
            SET @messages = SUBSTRING(@messages, 4001, @messageLength - 4000);
            SET @messageLength = LEN(@messages);
        END
        PRINT @messageChunk;
    END

    -- Imprimir mensaje de transacción
    PRINT @transMessage;
END;
GO
