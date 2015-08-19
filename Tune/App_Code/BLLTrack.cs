using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tune.App_Code
{
    public class BLLTrack
    {
        DAL dal = new DAL();
        //slect*
        //modify all
        //insert all
        //delete


        public string GetSuso()
        {
            List<Suso> res = new List<Suso>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select [TrackName],[Path]  from [Track]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            for (int i = 0; i < affected; i++)
            {
                Suso suso = new Suso();
                suso.TrackName = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                suso.TrackPath = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                res.Add(suso);
            }
            var jstring = JsonConvert.SerializeObject(res);

            return jstring;

        }

        public string GetTracksByAlbum(int AlbumId)
        {
            List<Track> res = new List<Track>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select *  from [Track] inner join [Album] on Track.AlbumId=Album.AlbumId where [Featured]=1", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            for (int i = 0; i < affected; i++)
            {
                
                Track objTrack = new Track();
                

                objTrack.TrackID = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[0]);
                objTrack.TrackName = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                objTrack.AlbumID = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
                objTrack.Price = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[3]);
                objTrack.Downloads = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[4]);
                objTrack.Length = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[5]);
                objTrack.Genre = ds.Tables[0].Rows[i].ItemArray[6].ToString();
                objTrack.Path = ds.Tables[0].Rows[i].ItemArray[7].ToString();
                objTrack.Artist = ds.Tables[0].Rows[i].ItemArray[8].ToString();
                objTrack.Featured = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[9]);
                
                
                res.Add(objTrack);

            }
            var jstring = JsonConvert.SerializeObject(res);

            return jstring;
        }
        public string GetJson()
        {
            FinalJson fjson = new FinalJson();

            List<SubJson> res = new List<SubJson>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select *  from [Track] inner join [Album] on Track.AlbumId=Album.AlbumId where [Featured]=1", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            if (affected > 10)
                affected = 10;
            dal.CloseConn();
            for (int i = 0; i < affected; i++)
            {
                SubJson obj = new SubJson();
                Track objTrack = new Track();
                Album objAlbum = new Album();

                objTrack.TrackID = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[0]);
                objTrack.TrackName = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                objTrack.AlbumID = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
                objTrack.Price = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[3]);
                objTrack.Downloads = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[4]);
                objTrack.Length = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[5]);
                objTrack.Genre = ds.Tables[0].Rows[i].ItemArray[6].ToString();
                objTrack.Path = ds.Tables[0].Rows[i].ItemArray[7].ToString();
                objTrack.Artist = ds.Tables[0].Rows[i].ItemArray[8].ToString();
                objTrack.Featured = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[9]);
                objAlbum.AlbumId = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[10]);
                objAlbum.AlbumName = ds.Tables[0].Rows[i].ItemArray[11].ToString();
                objAlbum.year = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[12]);
                objAlbum.path = ds.Tables[0].Rows[i].ItemArray[13].ToString();
                obj.objTrack = objTrack;
                obj.objAlbum = objAlbum;
                res.Add(obj);
            }
            fjson.Featured = res;


            List<SubJson> res1 = new List<SubJson>();
            dal.OpenConn();
            SqlDataAdapter adp1 = new SqlDataAdapter("select *  from [Track] inner join [Album] on Track.AlbumId=Album.AlbumId ORDER BY Album.Year DESC ", dal.OpenConn());
            DataSet ds1 = new DataSet();
            int affected1 = adp1.Fill(ds1);
            if (affected1 > 10)
                affected1 = 10;
            dal.CloseConn();
            for (int i = 0; i < affected1; i++)
            {
                SubJson obj = new SubJson();
                Track objTrack = new Track();
                Album objAlbum = new Album();
                objTrack.TrackID = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[0]);
                objTrack.TrackName = ds1.Tables[0].Rows[i].ItemArray[1].ToString();
                objTrack.AlbumID = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[2]);
                objTrack.Price = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[3]);
                objTrack.Downloads = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[4]);
                objTrack.Length = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[5]);
                objTrack.Genre = ds1.Tables[0].Rows[i].ItemArray[6].ToString();
                objTrack.Path = ds1.Tables[0].Rows[i].ItemArray[7].ToString();
                objTrack.Artist = ds1.Tables[0].Rows[i].ItemArray[8].ToString();
                objTrack.Featured = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[9]);
                objAlbum.AlbumId = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[10]);
                objAlbum.AlbumName = ds1.Tables[0].Rows[i].ItemArray[11].ToString();
                objAlbum.year = Convert.ToInt32(ds1.Tables[0].Rows[i].ItemArray[12]);
                objAlbum.path = ds1.Tables[0].Rows[i].ItemArray[13].ToString();
                obj.objTrack = objTrack;
                obj.objAlbum = objAlbum;
                res1.Add(obj);
            }
            fjson.Recent = res1;


            List<SubJson> res2 = new List<SubJson>();
            dal.OpenConn();
            SqlDataAdapter adp2 = new SqlDataAdapter("select *  from [Track] inner join [Album] on Track.AlbumId=Album.AlbumId order by Track.Downloads DESC", dal.OpenConn());
            DataSet ds2 = new DataSet();
            int affected2 = adp2.Fill(ds2);
            if (affected2 > 10)
                affected2 = 10;
            dal.CloseConn();
            for (int i = 0; i < affected2; i++)
            {
                SubJson obj = new SubJson();
                Track objTrack = new Track();
                Album objAlbum = new Album();
                objTrack.TrackID = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[0]);
                objTrack.TrackName = ds2.Tables[0].Rows[i].ItemArray[1].ToString();
                objTrack.AlbumID = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[2]);
                objTrack.Price = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[3]);
                objTrack.Downloads = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[4]);
                objTrack.Length = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[5]);
                objTrack.Genre = ds2.Tables[0].Rows[i].ItemArray[6].ToString();
                objTrack.Path = ds2.Tables[0].Rows[i].ItemArray[7].ToString();
                objTrack.Artist = ds2.Tables[0].Rows[i].ItemArray[8].ToString();
                objTrack.Featured = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[9]);
                objAlbum.AlbumId = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[10]);
                objAlbum.AlbumName = ds2.Tables[0].Rows[i].ItemArray[11].ToString();
                objAlbum.year = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[12]);
                objAlbum.path = ds2.Tables[0].Rows[i].ItemArray[13].ToString();
                obj.objTrack = objTrack;
                obj.objAlbum = objAlbum;
                res2.Add(obj);
            }
            fjson.Popular = res2;

            var jstring = JsonConvert.SerializeObject(fjson);

            return jstring;

        }   
        public List<TrackDisplay> GetViewSongs()
        {
            List<TrackDisplay> res = new List<TrackDisplay>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select Track.trackName, Album.albumName, Track.price, Track.downloads, Track.genre, Track.[length] from Track, Album, Singer where Track.TrackId = Singer.TrackID and Track.AlbumId = Album.AlbumId order by Album.Year DESC", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            TrackDisplay obj = new TrackDisplay();

            for (int i = 0; i < affected; i++)
            {
                obj.TrackName=ds.Tables[0].Rows[i].ItemArray[0].ToString();
                obj.AlbumName=ds.Tables[0].Rows[i].ItemArray[1].ToString();
                obj.Price=Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
                obj.Downloads=Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[3]);
                obj.Genre=ds.Tables[0].Rows[i].ItemArray[4].ToString();
                obj.Length = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[5]);
                res.Add(obj);
            }                      
            return res;
        }

        public int GetLastId()
        {
            List<TrackDisplay> res = new List<TrackDisplay>();
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select * from [Track]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            int id = 1; 
            if(affected>0)
            id = Convert.ToInt32(ds.Tables[0].Rows[affected-1].ItemArray[0]);
            
            return id;
        } 

        public void InsertData(string trackName,int albumId,int price,int length,string genre,string path,string artist,int featured)
        {
            dal.OpenConn();
            SqlCommand cmd = new SqlCommand("INSERT INTO [Track] ([TrackName],[AlbumId],[Price],[Length],[Genre],[Path],[Artist],[Featured]) VALUES('" + trackName + "','" + albumId + "','" + price + "','" + length + "','" + genre + "','" +path +"','" + artist +"','" +featured.ToString()+ "')", dal.OpenConn());
            cmd.ExecuteNonQuery();
            dal.CloseConn();
        }




        //public TrackDisplay GetSelectedSong(string TrackName,string AlbumName,int Price,int Downloads,string Genre,int Length)
        public TrackDisplay GetSelectedSong(TrackDisplay obj)
        {

            //TrackDisplay obj = new TrackDisplay();
            //obj.TrackName = TrackName;
            //obj.AlbumName = AlbumName;
            //obj.Price = Price;
            //obj.Downloads = Downloads;
            //obj.Genre = Genre;
            //obj.Length = Length;

            //dal.OpenConn();
            //SqlDataAdapter adp = new SqlDataAdapter("select Track.trackName, Album.albumName, Track.price, Track.downloads, Track.genre, Track.[length] from Track, Album, Singer where Track.TrackId = Singer.TrackID and Track.AlbumId = Album.AlbumId", dal.OpenConn());
            //DataSet ds = new DataSet();
            //int affected = adp.Fill(ds);
            //dal.CloseConn();
            //TrackDisplay obj = new TrackDisplay();

            //for (int i = 0; i < affected; i++)
            //{
            //    obj.TrackName = ds.Tables[0].Rows[i].ItemArray[0].ToString();
            //    obj.AlbumName = ds.Tables[0].Rows[i].ItemArray[1].ToString();
            //    obj.Price = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
            //    obj.Downloads = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[3]);
            //    obj.Genre = ds.Tables[0].Rows[i].ItemArray[4].ToString();
            //    obj.Length = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[5]);
            //    res.Add(obj);
            //}

            return obj;
        }

        public void UpdateSongs(TrackDisplay obj)
        {
        //    dal.OpenConn();
        //    SqlDataAdapter adp = new SqlDataAdapter("update  Track.trackName, Album.albumName, Track.price, Track.downloads, Track.genre, Track.[length] from Track, Album, Singer where Track.TrackId = Singer.TrackID and Track.AlbumId = Album.AlbumId", dal.OpenConn());
        //    DataSet ds = new DataSet();
        //    int affected = adp.Fill(ds);
        //    dal.CloseConn();
        //    TrackDisplay obj = new TrackDisplay();

        //    for (int i = 0; i < affected; i++)
        //    {
        //        obj.TrackName = ds.Tables[0].Rows[i].ItemArray[0].ToString();
        //        obj.AlbumName = ds.Tables[0].Rows[i].ItemArray[1].ToString();
        //        obj.Price = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[2]);
        //        obj.Downloads = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[3]);
        //        obj.Genre = ds.Tables[0].Rows[i].ItemArray[4].ToString();
        //        obj.Length = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[5]);
        //        res.Add(obj);
        //    }

        //    return res;
        }


    }

    public class TrackDisplay
    {
        public string TrackName { get; set; }
        public string AlbumName { get; set; }
        public int Price { get; set; }
        public int Downloads { get; set; }
        public int Length { get; set; }
        public string Genre { get; set; }
        //public string ArtistName { get; set; }
    }

    public class Track
    {
        public int TrackID { get; set; }
        public string TrackName { get; set; }
        public int AlbumID { get; set; }
        public int Price { get; set; }
        public double Downloads { get; set; }
        public double Length { get; set; }
        public string Genre { get; set; }

        public string Path { get; set; }
        public string Artist { get; set; }
        public int Featured { get; set; }
    }

    public class FinalJson
    {
        public List<SubJson> Featured { get; set; }
        public List<SubJson> Recent { get; set; }

        public List<SubJson> Popular { get; set; }
    }

    public class SubJson
    {
        public Track objTrack { get; set; }
        public Album objAlbum { get; set; }
        
    }

    public class Suso
    {
        public string TrackName { get; set; }
        public string TrackPath { get; set; }
    }
}