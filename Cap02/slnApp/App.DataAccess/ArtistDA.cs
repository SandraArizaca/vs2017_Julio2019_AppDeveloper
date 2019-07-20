using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.DataAccess
{
    public class ArtistDA
    {
        /// <summary>
        /// Obtiene la cantidad de registros
        /// </summary>
        /// <returns></returns>
        public int GetCount()
        {
            int result = 0;

            try
            {
                //Consulta SQL
                var sql = "SELECT COUNT(ArtistId) FROM Artist";

                var cnxString = "SERVER=S300-ST;DataBase=Chinook; USER ID=sa; PASSWORD=sql";

                //2 - Crear el objeto connection
                using (IDbConnection cnx = new SqlConnection(cnxString))
                {
                    //Abriendo la conexión a la base de datos
                    cnx.Open();

                    //3. - Creando un objeto command
                    var cmd = cnx.CreateCommand();
                    //Asignando la consulta SQL al objeto command
                    cmd.CommandText = sql;
                    result = (int)cmd.ExecuteScalar();
                }
            }catch(Exception ex)
            {
                result = -1;
            }
           
            return result;
        }
    }
}
