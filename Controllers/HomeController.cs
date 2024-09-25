using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Docs.v1;
using Google.Apis.Docs.v1.Data;
using Google.Apis.Services;
using System.Collections.Generic;

public class HomeController : Controller
{
    private static readonly string apiKey = "AIzaSyAFMipJ28INQ7J4EO_VTKveEYdN4xOsVbo";
    private static readonly string searchEngineId = "e7c362857bd514401";

    private readonly string[] Scopes = { DocsService.Scope.Documents };
    private readonly string ApplicationName = "PreguntadOrt";

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
            var respuestas = Juego.ObtenerProximasRespuestas(preguntaActual.IdPregunta);

            // Randomizar el orden de las respuestas
            ViewBag.Respuestas = respuestas.OrderBy(x => Guid.NewGuid()).ToList();

            // Busca la imagen relacionada con la pregunta
            // string imageUrl = await ObtenerImagenPregunta(preguntaActual.Enunciado);
            // ViewBag.Pregunta.Foto = imageUrl;

            Juego.AvanzarAPreguntaSiguiente();
            return View("Juego");
        }
    }

    // private async Task<string> ObtenerImagenPregunta(string pregunta)
    // {
    //     if (pregunta.StartsWith("¿"))
    //     {
    //         pregunta = pregunta.Substring(1);
    //     }

    //     if (pregunta.EndsWith("?"))
    //     {
    //         pregunta = pregunta.Substring(0, pregunta.Length - 1);
    //     }

    //     var palabras = pregunta.Split(' ').ToList();
    //     if (palabras.Count > 3)
    //     {
    //         palabras.RemoveRange(0, 3);
    //     }

    //     string textoParaBuscar = string.Join(" ", palabras);
    //     string searchUrl = $"https://www.googleapis.com/customsearch/v1?q={textoParaBuscar}&cx={searchEngineId}&key={apiKey}&searchType=image";

    //     using (HttpClient client = new HttpClient())
    //     {
    //         var response = await client.GetStringAsync(searchUrl);
    //         var jsonData = JObject.Parse(response);
    //         string imageUrl = (string)jsonData["items"]?[0]?["link"];
    //         return imageUrl;
    //     }
    // }

    [HttpPost]
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        bool esCorrecta = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        Respuesta? respuestaCorrecta = BD.ObtenerRespuestasPorPregunta(idPregunta).FirstOrDefault(r => r.Correcta);
        ViewBag.EsCorrecta = esCorrecta;
        ViewBag.RespuestaCorrecta = respuestaCorrecta;
        return View("Respuesta");
    }

    public IActionResult ConfigurarNombre()
    {
        return View();
    }

    [HttpPost]
    public IActionResult GuardarNombre(string username)
    {
        TempData["Username"] = username;
        return RedirectToAction("ConfigurarDificultad");
    }

    public IActionResult ConfigurarDificultad()
    {
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        return View();
    }

    [HttpPost]
    public IActionResult GuardarDificultad(int dificultad)
    {
        TempData["Dificultad"] = dificultad;
        return RedirectToAction("ConfigurarCategoria");
    }

    public IActionResult ConfigurarCategoria()
    {
        ViewBag.Categorias = Juego.ObtenerCategorias();
        return View();
    }

    [HttpPost]
    public IActionResult GuardarCategoria(int categoria)
    {
        string username = TempData["Username"].ToString();
        int dificultad = (int)TempData["Dificultad"];
        
        return RedirectToAction("Comenzar", new { username, dificultad, categoria });
    }

    public IActionResult AuthCallback(string code)
    {
        if (string.IsNullOrEmpty(code))
        {
            return RedirectToAction("Error", "Home");
        }

        return RedirectToAction("EditDocument", new { documentId = "1VwX7KTJBkgIydwd0uBgDNEyPlXtLHaxD_tQ43JPku4g" });
    }

    [HttpPost]
    public async Task<IActionResult> EditDocument(string documentId, string contentToUpdate)
    {
        var accessToken = HttpContext.Session.GetString("access_token");

        if (string.IsNullOrEmpty(accessToken))
        {
            return RedirectToAction("Authenticate");
        }

        var credential = GoogleCredential.FromAccessToken(accessToken);
        var service = new DocsService(new BaseClientService.Initializer()
        {
            HttpClientInitializer = credential,
            ApplicationName = ApplicationName,
        });

        var requests = new List<Request>
        {
            new Request
            {
                InsertText = new InsertTextRequest
                {
                    Text = contentToUpdate,
                    Location = new Location { Index = 1 }
                }
            }
        };

        var batchUpdateRequest = new BatchUpdateDocumentRequest { Requests = requests };
        await service.Documents.BatchUpdate(batchUpdateRequest, documentId).ExecuteAsync();

        ViewBag.Message = "El documento ha sido actualizado exitosamente.";
        return View();
    }

    public IActionResult Authenticate()
{
    var clientId = "337829767280-57jr5bfe4iav582lnvhgpiklkd7ml7ah.apps.googleusercontent.com";
    var redirectUri = "https://localhost:5194/Home/AuthCallback"; // URI de redirección después de la autenticación

    var authorizationUrl = $"https://accounts.google.com/o/oauth2/auth?client_id={clientId}&redirect_uri={redirectUri}&response_type=code&scope=https://www.googleapis.com/auth/documents";

    // Redirigir al usuario a Google para autenticación
    return Redirect(authorizationUrl);
}

}
