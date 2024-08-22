using System;
using System.Collections.Generic;
using System.Linq;


public class Juego
{
    // Atributos privados
    private static string? username;
    private static int puntajeActual;
    private static int cantidadPreguntasCorrectas;
    private static Pregunta? preguntaActual;

    // Métodos públicos

    // Inicializa los atributos privados para comenzar el juego
    public static void InicializarJuego()
    {
        username = string.Empty;
        puntajeActual = 0;
        cantidadPreguntasCorrectas = 0;
        preguntaActual = null;
    }

    // Retorna la lista de categorías
    public static List<Categoria> ObtenerCategorias()
    {
        return BD.ObtenerCategorias();
    }

    // Retorna la lista de dificultades
    public static List<Dificultad> ObtenerDificultades()
    {
        return BD.ObtenerDificultades();
    }

    // Carga una nueva partida con el usuario, dificultad y categoría elegidos
    public static void CargarPartida(string user, int dificultad, int categoria)
    {
        username = user;
        // Asigna la primera pregunta de la partida
        preguntaActual = BD.ObtenerPreguntas(dificultad, categoria).FirstOrDefault();
    }

    // Retorna la pregunta actual, o una nueva si ya se respondió la actual
    public static Pregunta? ObtenerProximaPregunta()
    {
        if (preguntaActual != null)
        {
            Pregunta temp = preguntaActual;
            preguntaActual = null; // Marcar como respondida
            return temp;
        }

        return null; // No más preguntas
    }

    // Retorna una lista con todas las respuestas relacionadas a la pregunta enviada por parámetro
    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta)
    {
        return BD.ObtenerRespuestasPorPregunta(idPregunta);
    }

    // Verifica si la respuesta es correcta, y actualiza el puntaje y la cantidad de preguntas correctas
    public static bool VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        Respuesta? respuesta = BD.ObtenerRespuestaPorId(idRespuesta);

        if (respuesta != null && respuesta.Correcta && respuesta.IdPregunta == idPregunta)
        {
            // Incrementar puntaje y cantidad de preguntas correctas
            puntajeActual += 10; // Puedes ajustar la cantidad de puntos según tus necesidades
            cantidadPreguntasCorrectas++;
            preguntaActual = null; // Marcar la pregunta como respondida
            return true;
        }

        return false;
    }
}
