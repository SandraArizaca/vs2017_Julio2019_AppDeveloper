using EjercicioEvento.Shared;
using EjercicioEvento.Shared.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioEvento
{
    public class Evento : TBaseEntity
    {
        public string Descripcion { get; set; }
        public Estado Estado { get; set; }
        public DateTime? FecMaxInscription { get; set; }
    }
}
