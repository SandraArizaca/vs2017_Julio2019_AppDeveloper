using EjercicioEvento.Shared.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioEvento
{
    class Program
    {
        static void Main(string[] args)
        {
            CrearEvento();
            ActializarEvento();

            using (var db = new EventoDb())
            {
                var evento = db.Evento.ToList();

                evento.ForEach(eventos =>
                {
                    Console.WriteLine(eventos.Id);
                    Console.WriteLine(eventos.Descripcion);
                    Console.WriteLine(eventos.Estado);
                    Console.WriteLine(eventos.FecMaxInscription);
                    Console.WriteLine(eventos.CreationDate);
                });
                Console.ReadKey();
            }
        }

        public static void CrearEvento()
        {
            using (var db = new EventoDb())
            {
                db.Evento.Add(new Evento()
                {
                    Descripcion = "Mi primer evento registrado",
                    Estado = Estado.Activo,
                    FecMaxInscription = null
                });
                db.SaveChanges();
            }
        }

        public static void ActializarEvento()
        {
            using (var db = new EventoDb())
            {
                var evento = db.Evento.Find(1);
                evento.Descripcion = "MODIFICADO";
                evento.Estado = Estado.Inactivo;
                evento.FecMaxInscription = DateTime.Now;
                db.SaveChanges();
            }
        }
    }
}
