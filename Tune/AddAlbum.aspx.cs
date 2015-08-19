using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tune.App_Code;

namespace Tune
{
    public partial class AddAlbum : System.Web.UI.Page
    {
        int id;
            protected void Page_Load(object sender, EventArgs e)
        {
                if(Session["adminLogged"]==null){

                    //phAddAlbum.Visible = false;
                }

                else
            {
                
                //phAddAlbum.Visible = true;
            }

        }

        

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Adding";
            BLLAlbum bllAlbum = new BLLAlbum();
            string albumName = tbAlbumName.Text;
            int albumYear = Convert.ToInt32(tbYear.Text);
            int lid = bllAlbum.GetLastId()+1;
            string fileName;
            using (MD5 md5Hash = MD5.Create())
            {
                fileName = Hashing.GetMd5Hash(md5Hash, fuAlbumArt.PostedFile.FileName.ToString() + lid.ToString());
            }
            fuAlbumArt.SaveAs(Server.MapPath("~/AlbumArt/" + fileName));
            bllAlbum.InsertData(albumName,albumYear,fileName);
            
            lblMsg.Text = "AlbumAdded";
       DropDownListAlbums.DataBind();
        }

       

    }
}