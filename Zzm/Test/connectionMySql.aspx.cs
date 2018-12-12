using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Zzm.Test
{
    public partial class connectionMySql : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string count = "";
            MySqlConnection conn = new MySqlConnection();
            string connectionString = "server=166.111.80.202;database=nagios;uid=root;pwd=123456";
            conn.ConnectionString = connectionString;
            conn.Open();
            string sqlStr = "select count(*) AS COUNT from nagios_services";
            MySqlCommand cmd = new MySqlCommand
            {
                Connection = conn,
                CommandText = sqlStr
            };
            MySqlDataReader cc = cmd.ExecuteReader();
            while (cc.Read())
            {
                 //count = (int)cc["COUNT"];
                count = (string)(cc["COUNT"].ToString());
               
            }
            Label1.Text = count.ToString();





        }
    }
}