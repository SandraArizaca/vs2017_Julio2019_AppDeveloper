using App.Entities.Base;
using Dapper.Contrib.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperDAL
{
    public class AlumnoDapperDAL : DALBase
    {
        public List<Alumno> ListAllAlumnos()
        {
            using (var connection = getConnection())
            {
                return connection.GetAll<Alumno>().ToList();
            }
        }

        public void RegisterAlumno(Alumno alumno)
        {
            using (var connection = getConnection())
            {
                connection.Insert(alumno);
            }
        }
    }
}
