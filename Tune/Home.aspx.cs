using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tune.App_Code;

namespace Tune
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
lblUserName.Text = Session["UserName"].ToString();
            lblUserEmail.Text = Session["UserEmail"].ToString();
            }
        }
        
        

        [System.Web.Services.WebMethod]
        public static string AllAlbums()
        {
            BLLAlbum bllAlbum = new BLLAlbum();
            string json = bllAlbum.GetAllAlbums();
            return json;
        }

       
        protected void logout_Click(object sender, EventArgs e)
        {
            
        }

               [System.Web.Services.WebMethod]
        public static string PopulateData(string bakchodi)
        {
            BLLTrack bllTrack = new BLLTrack();
            var js = bllTrack.GetJson();
            return js;
        }

               [System.Web.Services.WebMethod]
               public static string PopulateSuso(string superbakchodi)
               {
                   BLLTrack bllTrack = new BLLTrack();
                   var js = bllTrack.GetSuso();
                   return js;
               }

               protected void btnLogout_Click(object sender, EventArgs e)
               {
                   HttpContext.Current.Session.Abandon();
                   Response.Redirect("~/Default.aspx");
               }
    }
}