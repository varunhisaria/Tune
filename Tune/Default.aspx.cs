using NAudio.Wave;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tune.App_Code;

    

namespace Tune
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                Response.Redirect("~/Home.aspx");
            }
            
            // BLLUser obj = new BLLUser();
           //string j="[{\"firstName\":\"John\", \"lastName\":\"Doe\"},{\"firstName\":\"Anna\", \"lastName\":\"Smith\"},{\"firstName\":\"Peter\", \"lastName\":\"Jones\"}]";
           // List<Employee> res = (List<Employee>)JsonConvert.DeserializeObject(j, typeof(List<Employee>));
           // //string a = res[1].lastname;
           // string r = JsonConvert.SerializeObject(res);
           // //obj.InsertData("Varun Kumar" ,"varunhisaria@gmail.com","password","9007650221",1,"1","img.jpg");
           
            
            //TimeSpan start = new TimeSpan(0, 2, 00);
            //TimeSpan end = new TimeSpan(0, 02, 30);
            ////TrimSongs.TrimWavFile(Server.MapPath("~/FullSongs/song.wav"), Server.MapPath("~/TrimmedSongs/song.wav"), start, end);
            //TrimSongs.TrimMp3(Server.MapPath("~/FullSongs/song.mp3"), Server.MapPath("~/TrimmedSongs/song.mp3"), start, end);

        }
        

        
        [System.Web.Services.WebMethod]
        public static string EmailExists (string email)
        {
            BLLUser bllUser = new BLLUser();
            string res = bllUser.UserExists(email);
            return res;
            
            
            //string JS = Request.QueryString["JS"].ToString();
            //string url = "https://api.sendgrid.com/api/bounces.get.json";
            // string JS = GetResult(url);
            //char a = email.ElementAt(0);            
            //List<Email> res = (List<Email>)JsonConvert.DeserializeObject(email, typeof(List<Email>));
            //foreach (var item in res)
            //{
            //    //Store in database
            // //   lbl.Text = "Date:" + item.created.ToString() + "    Status:" + item.status.ToString() + "     Email:" + item.email.ToString() + "       Message:" + item.reason.ToString() + "";
            //}
        }


        [System.Web.Services.WebMethod]
        public static string RegisterUser(List<RegistrationReceived> user)
        {
            int flag = 0;
            
            Err err = new Err();
            BLLUser bllUser = new BLLUser();
            if (user[0].UserName == "")
            {
                flag = 1;
                err.UserName = false;
            }
            else
            {
                err.UserName = true;
            }
            
            if(Validation.EmailValidation(user[0].Email)==false)
            {
                flag = 1;
                err.Email = false;
            }
            else
            {
                err.Email = true;
            }
            if (Validation.MobileVerification(user[0].Mobile) == false)
            {
                flag = 1;
                err.Mobile = false;
            }
            else
            {
                err.Mobile = true;
            }

            if (user[0].Gender == 'M' || user[0].Gender == 'F' || user[0].Gender == 'O' || user[0].Gender == 'm' || user[0].Gender == 'f' || user[0].Gender == 'o')
            {
                err.Gender = true;
            }
            else
            {
                flag = 1;
                err.Gender = false;
            }
            err.Verified = false;
            if (user[0].Agreement == 1)
            {
                err.Agreement = true;
            }
            else
            {
                err.Agreement = false;
                flag = 1;
            }
            if (user[0].UserPassword.Length < 6)
            {
                err.UserPassword = false;
                flag = 1;
            }
            else
            {
                err.UserPassword = true;
            }
            
            string r = JsonConvert.SerializeObject(err);
            
            if (flag == 0)
            {
                bllUser.InsertData(user[0].UserName, user[0].Email, user[0].UserPassword, user[0].Mobile, user[0].Gender, user[0].Verified, user[0].Agreement);
                User obj= Leftover.Login(user[0].Email);

                HttpContext.Current.Session["UserID"] = obj.UserId.ToString();

                HttpContext.Current.Session["UserName"] = obj.UserName;

                HttpContext.Current.Session["UserEmail"] = obj.Email;

            }            
            
            return r;
        }

       
        [System.Web.Services.WebMethod(EnableSession = true)]
        public static bool LoginUser(List<LoginDetails> li)
        {
            BLLUser bllUser = new BLLUser();
            string pass = bllUser.GetPassword(li[0].UserEmail);
            if (pass == li[0].UserPassword)
            {
                User obj = Leftover.Login(li[0].UserEmail);
               
                
                 
                HttpContext.Current.Session["UserID"] = obj.UserId.ToString();
            
                HttpContext.Current.Session["UserName"] = obj.UserName;
            
                HttpContext.Current.Session["UserEmail"] = obj.Email;
                
                return true;

            }
            else
                return false;
        }

    }

    public class Err
    {
        public bool UserName { get; set; }
        public bool Email { get; set; }
        public bool UserPassword { get; set; }
        public bool Mobile { get; set; }
        public bool Gender { get; set; }
        public bool Verified { get; set; }
        public bool Image { get; set; }
        public bool Agreement { get; set; }
    }


    
   
}