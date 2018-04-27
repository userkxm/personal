using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Windows.Forms;
namespace WebStatuaryHall
{
    public partial class WebInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                WebINFO();
        }
        protected void WebINFO()
        {
            Model.MovieInformation movieInformation = new BLL.MovieInformationBLL().selectMovie(int.Parse(Request.QueryString["id"])).First();

            if (movieInformation != null)
            {
                imgName.ImageUrl = "~/Image/12/" + movieInformation.PictureNumber + ".jpg";
  
                Name.Text = movieInformation.MovieName;
                Regions.Text = movieInformation.Region;
                Performers.Text = movieInformation.Performer;
                Particularyears.Text = movieInformation.ParticularYear.ToString("yyyy-MM-dd");
                updatedates.Text = movieInformation.UpdateDate.ToString("yyyy-MM-dd");
                plotintroductions.Text = movieInformation.Plotintroduction;
                StatenameIDs.Text = movieInformation.ThunderboltLink;
                Statnames.Text = movieInformation.BSL;
                ThunderboltLinks.Text = movieInformation.SDLP;
                BSLs.Text = movieInformation.State;
                SDLPs.Text = movieInformation.StateName;
              
            }
        }

        protected void textButton1_Click(object sender, EventArgs e)
        {
            Thread th = new Thread(new ThreadStart(copy));
            th.ApartmentState = ApartmentState.STA;
            th.Start();
            Response.Write("<script type=text/javascript>alert('链接已复制到剪贴板！');</script>");
        }

        void copy()
        {
            string a = ThunderboltLinks.Text;
            Clipboard.SetText(a);
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {

            Thread th = new Thread(new ThreadStart(copys));
            th.ApartmentState = ApartmentState.STA;
            th.Start();
            Response.Write("<script type=text/javascript>alert('链接已复制到剪贴板！');</script>");
        }
        void copys()
        {
            string a = BSLs.Text;
            Clipboard.SetText(a);
        }

    }
}