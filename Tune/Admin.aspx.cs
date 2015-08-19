using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tune
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void HideAll()
        {
            LogIn.Visible = false;
            LoggedIn.Visible = false;
            phUser.Visible = false;
            phPurchase.Visible = false;
            //ViewSongs.Visible = false;
            //EditSong.Visible = false;
        }
        protected void HideLoggedIn()
        {
            HideAll();
            LoggedIn.Visible = true;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminLogged"] == null)
            {
                this.HideAll();
                LogIn.Visible = true;
            }
            else
            {
                this.HideAll();
                LoggedIn.Visible = true;
                if (Session["phUser"] != null)
                {
                    phUser.Visible = true;
                }
                if (Session["phPurchase"] != null)
                {
                    phPurchase.Visible = true;
                }
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (tbPassword.Text == "open")
            {

                this.HideLoggedIn();
                Session["adminLogged"] = "true";
            }
        }

        protected void BulletedListSongs_Click(object sender, BulletedListEventArgs e)
        {
            switch (e.Index)
            {
                case 0:
                    this.HideLoggedIn();
                    //ViewSongs.Visible = true; 
                    break;
                case 1:
                    //this.HideLoggedIn();
                    //EditSong.Visible = true;
                    Response.Redirect("~/AddAlbum.aspx");
                    break;
                case 2:
                    
                    break;
                case 3:
                    
                    break;
                default:
                    throw new Exception("You did not click a valid list item.");
                    
            }
        }

        
        protected void btnUser_Click(object sender, EventArgs e)
        {
            Session["phPurchase"] = null;
            if (Session["adminLogged"] == null)
            {
                LogIn.Visible = true;
            }
            else
            {
                Session["phUser"] = "true";
                LogIn.Visible = false;
                LoggedIn.Visible = true;
                phUser.Visible = true;
            }
        }

        protected void btnpurchase_Click(object sender, EventArgs e)
        {
            Session["phUser"] = null;
            if (Session["adminLogged"] == null)
            {
                LogIn.Visible = true;
            }
            else
            {
                Session["phPurchase"] = "true";
                LogIn.Visible = false;
                LoggedIn.Visible = true;
                phPurchase.Visible = true;
            }
        }

       
    }
}