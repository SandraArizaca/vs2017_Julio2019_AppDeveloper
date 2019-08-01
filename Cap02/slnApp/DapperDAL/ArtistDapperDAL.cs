using App.Entities.Base;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperDAL
{
    public class ArtistDapperDAL : DALBase
    {
        public Artist GetArtistById(int id)
        {
            using (IDbConnection connection = this.getConnection())
            {
                using (var multi = connection.QueryMultiple("GetArtistById", new { ArtistID = id }, commandType: CommandType.StoredProcedure))
                {
                    var artist = multi.Read<Artist>().Single();
                    artist.Album = multi.Read<Album>().ToList();
                    return artist;
                }
            }
        }
    }
}
