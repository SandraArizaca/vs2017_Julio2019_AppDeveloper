using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioEntityFramework
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new dbUniversidadEntities())
            {
                db.Facultad.Add(new Facultad()
                {
                    Nombre = "Ciencias de la Computacion"
                });
                db.SaveChanges();

                var alumno = new Alumno()
                {
                    Id = 1,
                    Nombre = "Sandra Arizaca",
                    FechaDeNacimiento = DateTime.Now.Date,
                    Curso = new List<Curso>()
                    {
                        new Curso() { Id = 1, Nombre = "Visual Basic", FacultadId = 1}
                    }
                };

                db.Alumno.Add(alumno);
                db.SaveChanges();
            }
        }
    }
}
