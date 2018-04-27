using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class MovielnformationDAL
    {
        public List<Model.MovieInformation> selectMovie(string wherestr = null,int start = 1,int end = 90)
        {
            List<Model.MovieInformation> select = new List<Model.MovieInformation>();
            if(DbHelp.OpenConnection())
            {
                string sql = "select * from (select ROW_NUMBER() over (Order by MIID) as BID, * from vw_MovieType where [delete]=0" + wherestr + ")as c where c.BID between " + start + " and " + end;
                SqlDataReader dr = DbHelp.ExecReader(sql);
                
                if(dr != null)
                {
                    while (dr.Read())
                        select.Add(new Model.MovieInformation((int)dr["MIID"], dr["MovieName"] as string, dr["Performer"] as string, dr["Region"] as string, (DateTime)dr["ParticularYear"], (DateTime)dr["UpdateDate"], dr["Plotintroduction"] as string, (int)dr["PictureNumber"], (int)dr["StateNameID"], (int)dr["LinkID"], (int)dr["Statname"], (int)dr["delete"], (int)dr["StateID"], dr["StateName"] as string, dr["State"] as string, dr["ThunderboltLink"] as string, dr["BSL"] as string, dr["SDLP"] as string));
                }
                DbHelp.CloseConnection();
            }
            return select;

        }
        public List<Model.MovieInformation> selectMovieINFO(string wherestr = null)
        {
            List<Model.MovieInformation> select = new List<Model.MovieInformation>();
            if (DbHelp.OpenConnection())
            {
                string sql = "select * from dbo.MovieInformation ORDER BY UpdateDate DESC";
                SqlDataReader dr = DbHelp.ExecReader(sql);

                if (dr != null)
                {
                    while (dr.Read())
                        select.Add(new Model.MovieInformation((int)dr["MIID"], dr["MovieName"] as string, dr["Performer"] as string, dr["Region"] as string, (DateTime)dr["ParticularYear"], (DateTime)dr["UpdateDate"], dr["Plotintroduction"] as string, (int)dr["PictureNumber"], (int)dr["StateNameID"], (int)dr["LinkID"], (int)dr["Statname"], (int)dr["delete"], (int)dr["StateID"], dr["StateName"] as string, dr["State"] as string, dr["ThunderboltLink"] as string, dr["BSL"] as string, dr["SDLP"] as string));
                }
                DbHelp.CloseConnection();
            }
            return select;

        }
        
        /// <summary>
        /// 方法：获取电影的数量
        /// </summary>
        /// <returns></returns>
        public int selectMovie()
        {
            return (int)DbHelp.ExecScalar("select count(*) from vw_MovieType");
        }
    }
     
}
