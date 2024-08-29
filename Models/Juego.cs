using System;
using System.Collections.Generic;
using System.Linq;

public class Juego
{
    // Atributos privados
    private static string username = string.Empty;
    private static int puntajeActual = 0;
    private static int cantidadPreguntasCorrectas = 0;
    private static List<Pregunta> preguntas = new List<Pregunta>(); // Almacena las preguntas disponibles
    private static Pregunta preguntaActual = null; // La pregunta actual

    // Métodos públicos

    // Inicializa los atributos privados para comenzar el juego
    public static void InicializarJuego()
    {
        username = string.Empty;
        puntajeActual = 0;
        cantidadPreguntasCorrectas = 0;
        preguntas.Clear(); // Limpia la lista de preguntas para empezar de nuevo
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
        preguntas = BD.ObtenerPreguntas(dificultad, categoria); // Carga todas las preguntas disponibles según la configuración
        preguntaActual = ObtenerProximaPregunta(); // Asigna la primera pregunta
    }

    // Retorna la próxima pregunta disponible, o null si no hay más preguntas// Retorna la próxima pregunta disponible, o null si no hay más preguntas
    public static Pregunta ObtenerProximaPregunta()
    {
        if (preguntaActual == null && preguntas.Count > 0)
        {
            preguntaActual = preguntas.FirstOrDefault();
            preguntas.Remove(preguntaActual); // Remueve la pregunta de la lista para que no se repita
        }

        return preguntaActual; // Retorna la pregunta actual o null si ya no hay preguntas
    }

// Método para avanzar a la siguiente pregunta
public static void AvanzarAPreguntaSiguiente()
{
    preguntaActual = null; // Resetea la pregunta actual
    ObtenerProximaPregunta(); // Asigna la siguiente pregunta
}


    // Retorna una lista con todas las respuestas relacionadas a la pregunta enviada por parámetro
    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta)
    {
        return BD.ObtenerRespuestasPorPregunta(idPregunta);
    }

    // Verifica si la respuesta es correcta, y actualiza el puntaje y la cantidad de preguntas correctas
    public static bool VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        Respuesta respuesta = BD.ObtenerRespuestaPorId(idRespuesta);

        if (respuesta != null && respuesta.Correcta && respuesta.IdPregunta == idPregunta)
        {
            // Incrementar puntaje y cantidad de preguntas correctas
            puntajeActual += 10; // Puedes ajustar la cantidad de puntos según tus necesidades
            cantidadPreguntasCorrectas++;
            return true;
        }

        return false;
    }

    // Métodos adicionales para acceder a la información del juego
    public static int ObtenerPuntajeActual()
    {
        return puntajeActual;
    }

    public static string ObtenerUsername()
    {
        return username;
    }

    public static int ObtenerCantidadPreguntasCorrectas()
    {
        return cantidadPreguntasCorrectas;
    }
}
