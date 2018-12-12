using MySql.Data.MySqlClient;
using System;
using System.Data.SqlClient;
namespace Zzm.Test
{
    public partial class test : System.Web.UI.Page
    {


        protected void Page_Load(object sender, System.EventArgs e)
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
            conn.Close();

            ////往下是另外一个表查询
            string count2 = "";
            conn.Open();
            string sqlcount = "select count(*) AS COUNT from nagios_hosts";
            MySqlCommand cmd2 = new MySqlCommand
            {
                Connection = conn,
                CommandText = sqlcount
            };
            MySqlDataReader cc2 = cmd2.ExecuteReader();
            while (cc2.Read())
            {
                count2 = (string)(cc2["COUNT"].ToString());
            }
            conn.Close();
            ////over

            ////Label1.Text = "（全部服务数" + count.ToString() + "）";
            Label1.Text = "（当前已监控主机" + count2.ToString() + "台，已定义服务项" + count.ToString() + "项）";
        }
    }
}
