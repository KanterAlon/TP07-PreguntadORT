using Microsoft.AspNetCore.Mvc;
using System.Linq;

public class HomeController : Controller
{

//asfsdgasdgfasdgfasdfs<dfsd
    public IActionResult index()
    {
        return View();
    }
    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();

        ViewBag.Categorias = Juego.ObtenerCategorias();
        ViewBag.Dificultades = Juego.ObtenerDificultades();

        return View("ConfigurarJuego");
    }

    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);

        if (Juego.ObtenerProximaPregunta() != null)
        {
            return RedirectToAction("Jugar");
        }
        else
        {
            return RedirectToAction("ConfigurarJuego");
        }
    }

    public IActionResult Jugar()
    {
        Pregunta? preguntaActual = Juego.ObtenerProximaPregunta();

        if (preguntaActual == null)
        {
            return View("Fin");
        }
        else
        {
            ViewBag.Pregunta = preguntaActual;
            ViewBag.Respuestas = Juego.ObtenerProximasRespuestas(preguntaActual.IdPregunta);
            return View("Juego");
        }
    }

    [HttpPost]
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        // Invoca al método VerificarRespuesta de la clase Juego
        bool esCorrecta = Juego.VerificarRespuesta(idPregunta, idRespuesta);

        // Obtener la respuesta correcta para enviar como información opcional
        Respuesta? respuestaCorrecta = BD.ObtenerRespuestasPorPregunta(idPregunta).FirstOrDefault(r => r.Correcta);

        // Enviar la información a la vista mediante ViewBag
        ViewBag.EsCorrecta = esCorrecta;
        ViewBag.RespuestaCorrecta = respuestaCorrecta;

        // Retorna la vista Respuesta
        return View("Respuesta");
    }
}
