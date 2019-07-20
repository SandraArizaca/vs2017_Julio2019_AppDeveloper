using System;
using App.DataAccess;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace App.Data.DataAccessTest
{
    [TestClass]
    public class ArtistDATest
    {
        [TestMethod]
        public void Count()
        {
            var da = new ArtistDA();

            var cantidad = da.GetCount();

            Assert.IsTrue(cantidad > 0);
        }
    }
}
