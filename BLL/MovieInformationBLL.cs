using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace BLL
{
    public class MovieInformationBLL
    {
        public List<Model.MovieInformation> selectMovie(int picturenumber=0)
        {
            string where = "";

            if (picturenumber > 0)
                where += "and [PictureNumber]=" + picturenumber;
            return new DAL.MovielnformationDAL().selectMovie(where);
        }

        public List<Model.MovieInformation> selectMovieByTypeId(int typeID)
        {
            if (typeID==0)
            {
                return new DAL.MovielnformationDAL().selectMovie("");
            }
            string where = " and StateNameID="+typeID;
            return new DAL.MovielnformationDAL().selectMovie(where);
        }
        public List<Model.MovieInformation> selectMovieINFO()
        {
            return new DAL.MovielnformationDAL().selectMovieINFO();
        }
    }
}
