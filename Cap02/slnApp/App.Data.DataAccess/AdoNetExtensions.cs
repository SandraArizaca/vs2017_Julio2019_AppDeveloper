﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Data.DataAccess
{
    public static class AdoNetExtensions
    {
        public static string GetStringValue(this IDataReader reader, string campo)
        {
            return reader.IsDBNull(reader.GetOrdinal(campo))
                  ? null : reader.GetString(reader.GetOrdinal(campo));
        }

    }
}
