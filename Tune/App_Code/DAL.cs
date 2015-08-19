using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;     //added for web.config file

using System.Data;
using System.Data.SqlClient;

namespace Tune.App_Code
{
    public class DAL
    {
        public SqlConnection OpenConn()
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            if (conn.State == ConnectionState.Open || conn.State == ConnectionState.Broken || conn.State == ConnectionState.Connecting)
            {
                conn.Dispose();
                conn.Open();
            }
            else
                conn.Open();
            return conn;
        }

        public void CloseConn()
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            conn.Close();
        }
    }
}