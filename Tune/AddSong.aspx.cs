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
    public partial class AddSong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string fileName;
            BLLTrack bllTrack = new BLLTrack();
            int id = Convert.ToInt32(Request.QueryString[0].ToString());
            int tid = bllTrack.GetLastId()+1;
            using (MD5 md5Hash = MD5.Create())
            {
                fileName = Hashing.GetMd5Hash(md5Hash, fuTrack.PostedFile.FileName.ToString() + tid.ToString());
            }
            fuTrack.SaveAs(Server.MapPath("~/FullSongs/" + fileName+".mp3"));
            TimeSpan start = new TimeSpan(0, 2, 00);
            TimeSpan end = new TimeSpan(0, 02, 30);
            //TrimSongs.TrimWavFile(Server.MapPath("~/FullSongs/song.wav"), Server.MapPath("~/TrimmedSongs/song.wav"), start, end);
            TrimSongs.TrimMp3(Server.MapPath("~/FullSongs/" + fileName + ".mp3"), Server.MapPath("~/TrimmedSongs/" + fileName + ".mp3"), start, end);
            int f;
            if (cbFeatured.Checked == true)
                f = 1;
            else
                f = 0;
            bllTrack.InsertData(tbTrackName.Text, id, Convert.ToInt32(tbPrice.Text), Convert.ToInt32(tbLength.Text), tbGenre.Text,fileName,tbArtist.Text,f);
            
                   
            
            
            //TimeSpan start = new TimeSpan(0, 1, 00);
            //TimeSpan end = new TimeSpan(0, 1, 00);
            //TrimSongs.TrimWavFile(Server.MapPath("~/FullSongs/" + fuTrack.PostedFile.FileName), Server.MapPath("~/TrimmedSongs/song.wav" + fuTrack.PostedFile.FileName), start, end);
        }

        
    }
}