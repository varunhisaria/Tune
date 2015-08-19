using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace Tune.App_Code
{
    public class BLLUser
    {
        DAL dal = new DAL();

        //email by email
        //password by email

        public string UserExists(string email)
        {
            //dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT UserName FROM [User] WHERE [Email]='"+email+"'", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();

            
            EmailResponse obj = new EmailResponse();
            if (affected==1)
            {
                obj.Exists = true;
                obj.Name = ds.Tables[0].Rows[0].ItemArray[0].ToString();                
            }
            else
            {
                obj.Exists = false;
                obj.Name = email;
            }
            string res = JsonConvert.SerializeObject(obj);
            return res;        
        }


        public string GetPassword(string email)
        {
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT [Password] FROM [User] WHERE [Email]='" + email + "'", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            return ds.Tables[0].Rows[0].ItemArray[0].ToString();
        }

        public User GetUserByEmail(string email)
        {
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [User] WHERE [Email]='" + email + "'", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            User user = new User();
            user.UserId = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0].ToString());
                user.UserName=ds.Tables[0].Rows[0].ItemArray[1].ToString();
                user.Email = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                user.Password=ds.Tables[0].Rows[0].ItemArray[3].ToString();
                user.Mobile=ds.Tables[0].Rows[0].ItemArray[4].ToString();
                user.Gender = Convert.ToChar(ds.Tables[0].Rows[0].ItemArray[5].ToString());
                user.Verified = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[6].ToString());
                user.Image = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            return user;
        }

        //public string GetID(string name)
        //{
        //    SqlDataAdapter adp = new SqlDataAdapter("SELECT COUNT(*) FROM User", dal.OpenConn());
        //    DataSet ds = new DataSet();
        //    adp.Fill(ds);
        //    dal.CloseConn();

        //    string nm = name.Substring(0, 3);
        //    Random rnd = new Random();
        //    string ran = rnd.Next(100, 999).ToString();
        //    string count = (int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString()) + 1).ToString();
        //    string id = "OFC/EMP/" + nm + "/" + ran + count;
        //    return id;
        //}
        public void InsertData(string userName, string email, string password, string mobile, char gender, int verified, int agreement)
        {
            dal.OpenConn();
            SqlCommand cmd = new SqlCommand("INSERT INTO [User] ([UserName],[Email],[Password],[Mobile],[Gender],[Verified]) VALUES('" + userName + "','" + email + "','" + password + "','" + mobile + "','"+gender.ToString()+"','" + verified.ToString() +  "')", dal.OpenConn());
            cmd.ExecuteNonQuery();
            dal.CloseConn();
        }
    }
    public class RegistrationReceived
    {
        public string UserName { get; set; }
        public string Email { get; set; }
        public string UserPassword { get; set; }
        public string Mobile { get; set; }
        public char Gender { get; set; }
        public int Verified { get; set; }
        public string Image { get; set; }
        public int Agreement { get; set; }
    }
   
    public class EmailResponse
    {
        public bool Exists { get; set; }
        
        public string Name { get; set; }
    }

    public class LoginDetails
    {
        public string UserEmail { get; set; }
        public string UserPassword { get; set; }
    }

    public class User
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Mobile { get; set; }
        public char Gender { get; set; }
        public int Verified { get; set; }
        public string Image { get; set; }
        
    }
}