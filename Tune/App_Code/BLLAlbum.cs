using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tune.App_Code
{
    public class BLLAlbum
    {
        DAL dal = new DAL();
        public List<Album> GetAlbumNames()
        {
            List<Album> res = new List<Album>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select * from [Album]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
           

            for (int i = 0; i < affected; i++)
            {
                Album obj = new Album();
                obj.AlbumId =Convert.ToInt32( ds.Tables[0].Rows[i].ItemArray[0]);
                obj.AlbumName = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                obj.year = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
                obj.path = ds.Tables[0].Rows[i].ItemArray[3].ToString();
                res.Add(obj);
            }
            return res;
        }

        public int GetLastId()
        {
            List<Album> res = new List<Album>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select * from [Album]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            int id;
            if (affected > 0)
            {
                 id = Convert.ToInt32(ds.Tables[0].Rows[affected - 1].ItemArray[0]);
            }
            else
                id = 1;

            return id;
        }


        public string GetAllAlbums()
        {
            List<Album> res = new List<Album>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select * from [Album]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            for (int i = 0; i < affected; i++)
            {
                Album obj = new Album();
                obj.AlbumId= Convert.ToInt32( ds.Tables[0].Rows[i].ItemArray[0]);
                obj.AlbumName=ds.Tables[0].Rows[i].ItemArray[1].ToString();
                obj.year= Convert.ToInt32( ds.Tables[0].Rows[i].ItemArray[2]);
                obj.path = ds.Tables[0].Rows[i].ItemArray[3].ToString();
                res.Add(obj);
            }
            var json = JsonConvert.SerializeObject(res);
            return json;
        } 
        public int GetAlbumId(string name)
        {
            int id;
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select [AlbumId] from [Album] where [AlbumName]='"+name+"'", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();            
            id = Convert.ToInt32( ds.Tables[0].Rows[0].ItemArray[0]);
            return id;
        }
        public void InsertData(string albumName,int albumYear, string path)
        {
            dal.OpenConn();
            SqlCommand cmd = new SqlCommand("INSERT INTO [Album] ([AlbumName],[Year],[AlbumArt]) VALUES('" + albumName + "','" + albumYear.ToString() + "','" + path  +"')", dal.OpenConn());
            cmd.ExecuteNonQuery();
            dal.CloseConn();
        }


    }

    public class Album
    {
        public int AlbumId { get; set; }
        public string AlbumName { get; set; }

        public int year { get; set; }

        public string path { get; set; }
    }
}