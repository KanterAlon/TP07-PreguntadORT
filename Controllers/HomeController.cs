using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;  // Asegúrate de que esto está presente

public class HomeController : Controller
{
    private static readonly string apiKey = "AIzaSyAFMipJ28INQ7J4EO_VTKveEYdN4xOsVbo";
    private static readonly string searchEngineId = "e7c362857bd514401";

    public IActionResult Index()
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

    public async Task<IActionResult> Jugar()
    {
        Pregunta? preguntaActual = Juego.ObtenerProximaPregunta();

        if (preguntaActual == null)
        {
            ViewBag.PuntajeFinal = Juego.ObtenerPuntajeActual();
            return View("Fin");
        }
        else
        {
            ViewBag.Username = Juego.ObtenerUsername();
            ViewBag.PuntajeActual = Juego.ObtenerPuntajeActual();
            ViewBag.Pregunta = preguntaActual;
            ViewBag.Respuestas = Juego.ObtenerProximasRespuestas(preguntaActual.IdPregunta);

            // Busca la imagen relacionada con la pregunta
            string imageUrl = await ObtenerImagenPregunta(preguntaActual.Enunciado);
            ViewBag.Pregunta.Foto = imageUrl;

            Juego.AvanzarAPreguntaSiguiente();
            return View("Juego");
        }
    }

    private async Task<string> ObtenerImagenPregunta(string pregunta)
{
    // 1. Eliminar el primer carácter si es un signo de interrogación
    if (pregunta.StartsWith("¿"))
    {
        pregunta = pregunta.Substring(1); // Elimina el primer carácter
    }

    // 2. Eliminar el último carácter si es un signo de interrogación
    if (pregunta.EndsWith("?"))
    {
        pregunta = pregunta.Substring(0, pregunta.Length - 1); // Elimina el último carácter
    }

    // 3. Dividir la pregunta en palabras y eliminar las primeras tres
    var palabras = pregunta.Split(' ').ToList();
    if (palabras.Count > 3)
    {
        palabras.RemoveRange(0, 3); // Eliminar las primeras tres palabras
    }

    // 4. Unir el resto de las palabras en un nuevo string para la búsqueda
    string textoParaBuscar = string.Join(" ", palabras);

    // 5. Realizar la búsqueda de imagen usando Google Custom Search API
    string searchUrl = $"https://www.googleapis.com/customsearch/v1?q={textoParaBuscar}&cx={searchEngineId}&key={apiKey}&searchType=image";

    using (HttpClient client = new HttpClient())
    {
        var response = await client.GetStringAsync(searchUrl);
        var jsonData = JObject.Parse(response);
        string imageUrl = (string)jsonData["items"]?[0]?["link"];
        return imageUrl;
    }
}


    [HttpPost]
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        bool esCorrecta = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        Respuesta? respuestaCorrecta = BD.ObtenerRespuestasPorPregunta(idPregunta).FirstOrDefault(r => r.Correcta);
        ViewBag.EsCorrecta = esCorrecta;
        ViewBag.RespuestaCorrecta = respuestaCorrecta;
        return View("Respuesta");
    }

}
