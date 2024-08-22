using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
using System.Linq;

public class BD
{
    private static string _connectionString = @"Server=localhost;Database=PreguntadOrt;Trusted_Connection=True;";

    public static List<Categoria> ObtenerCategorias()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.Query<Categoria>("sp_ObtenerCategorias", commandType: System.Data.CommandType.StoredProcedure).ToList();
        }
    }

    public static List<Dificultad> ObtenerDificultades()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.Query<Dificultad>("sp_ObtenerDificultades", commandType: System.Data.CommandType.StoredProcedure).ToList();
        }
    }

    public static List<Pregunta> ObtenerPreguntas(int dificultad, int categoria)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.Query<Pregunta>(
                "sp_ObtenerPreguntas", 
                new { Dificultad = dificultad, Categoria = categoria }, 
                commandType: System.Data.CommandType.StoredProcedure
            ).ToList();
        }
    }

    public static List<Respuesta> ObtenerRespuestasPorPregunta(int idPregunta)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.Query<Respuesta>(
                "sp_ObtenerRespuestas", 
                new { IdPregunta = idPregunta }, 
                commandType: System.Data.CommandType.StoredProcedure
            ).ToList();
        }
    }

        public static Respuesta? ObtenerRespuestaPorId(int idRespuesta)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.Query<Respuesta>("sp_ObtenerRespuestaPorId", new { IdRespuesta = idRespuesta }, commandType: System.Data.CommandType.StoredProcedure).FirstOrDefault();
        }
    }
}
