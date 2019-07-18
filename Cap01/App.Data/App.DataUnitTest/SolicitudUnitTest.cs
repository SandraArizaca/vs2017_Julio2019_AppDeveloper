using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using App.Data;
using App.Data.Base;

namespace App.DataUnitTest
{
    [TestClass]
    public class SolicitudUnitTest
    {
        [TestMethod]
        public void SolicitudHWTest()
        {
            //SolicitudAcceso obj1 = new SolicitudAcceso();
            //obj1.NivelAcceso = 2;
            SolicitudAcceso obj1 = new SolicitudAcceso { NivelAcceso = 2 };

            Assert.IsTrue(obj1.Aprobar(), "El usuario administrador no puede aprobar");

            Solicitud obj2 = new SolicitudAcceso { NivelAcceso = 4 };
            Assert.IsTrue(obj2.Aprobar(), "El usuario administrador no puede aprobar");
        }

        [TestMethod]
        public void SolicitudesTest()
        {
            SolicitudHardware obj1 = new SolicitudHardware { Fecha = DateTime.Now};
            Assert.IsTrue(VerificarAprobacion(obj1), "El usuario administrador no puede aprobar");
        }

        [TestMethod]
        public void Solicitudes2Test()
        {
            SolicitudAcceso obj1 = new SolicitudAcceso { Fecha = DateTime.Now, NivelAcceso = 5 };
            Assert.IsTrue(VerificarAprobacion(obj1), "El usuario administrador no puede aprobar");
        }

        private bool VerificarAprobacion(Solicitud solicitud)
        {
            return solicitud.Aprobar();
        }
    }
}
