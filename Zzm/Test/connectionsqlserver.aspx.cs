using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Zzm.Test
{
    public partial class connectionsqlserver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            string connectionString = "server=166.111.7.244;database=Zzm;uid=zzm; pwd=zzm";
            conn.ConnectionString = connectionString;
            conn.Open();
            //Console.Write(conn.State.ToString());
            string sqlStr = "select count(*) AS COUNT from Server_detail";
            SqlCommand cmd = new SqlCommand
            {
                Connection = conn,
                CommandText = sqlStr
            };
            SqlDataReader cc = cmd.ExecuteReader();
            int i = 0;
            while (cc.Read())
            {
                i = (int)cc["COUNT"];
            }
            Label1.Text = i.ToString();


        }



    }
}