using System;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;

namespace Zzm.Web
{
    public partial class allinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["ZzmConnectionString"].ConnectionString;
            using (SqlConnection aa = new SqlConnection(connectionString))
            {
                aa.Open();
                SqlCommand bb = new SqlCommand
                {
                    Connection = aa
                };
                string sql = "Select count(*) AS COUNT from Server_detail";
                bb.CommandText = sql;
                SqlDataReader cc = bb.ExecuteReader();
                while (cc.Read())
                {
                    count = (int)cc["COUNT"];
                }
            }
            if (DropDownList1.SelectedValue.ToString() == "All")
            {
                Label1.Text = "当前" + "已登记服务器" + count + "台";
            }
            else
            {
                Label1.Text = DropDownList1.SelectedValue.ToString() + "已登记服务器" + count + "台";
            }




            /////可以让网页只刷新一次，不会守dropdownlist的刷新影响
            if (!IsPostBack)
            { }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //这个是手动将各个值打进去- - 。
            if (DropDownList1.SelectedValue.ToString() == "科南楼B103")
            {
                SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='科南楼B103' order by IP";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "计算中心")
            {
                SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='计算中心' order by IP";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "11-430")
            {
                SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='11-430' order by IP";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "Fit-1-106")
            {
                SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='Fit-1-106' order by IP";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "腾讯云")
            {
                SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='腾讯云' order by IP";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "All")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Server_detail order by IP";
            }
            else
            {
                Common.Message.RegScript(this, "找不到相关服务器信息");
            }
            ///执行的方法
;           ////以下是取gridview1的总行数
            int count = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["ZzmConnectionString"].ConnectionString;
            if (DropDownList1.SelectedValue.ToString() == "All")
            {
                using (SqlConnection aa = new SqlConnection(connectionString))
                {
                    aa.Open();
                    SqlCommand bb = new SqlCommand
                    {
                        Connection = aa
                    };
                    string sql = "Select count(*) AS COUNT from Server_detail";
                    bb.CommandText = sql;
                    SqlDataReader cc = bb.ExecuteReader();
                    while (cc.Read())
                    {
                        count = (int)cc["COUNT"];
                    }
                }
                Label1.Text = "当前" + "已登记服务器" + count + "台";
            }
            else
            {
                using (SqlConnection aa = new SqlConnection(connectionString))
                {
                    aa.Open();
                    SqlCommand bb = new SqlCommand
                    {
                        Connection = aa
                    };
                    string sql = "Select count(*) AS COUNT from Server_detail where PLACE='" + DropDownList1.SelectedValue.ToString() + "'";
                    bb.CommandText = sql;
                    SqlDataReader cc = bb.ExecuteReader();
                    while (cc.Read())
                    {
                        count = (int)cc["COUNT"];
                    }
                }
                Label1.Text = DropDownList1.SelectedValue.ToString() + "已登记服务器" + count + "台";
            }
            ////结束


            ////以下是取gridview1的总列数
            //Label1.Text = GridView1.Columns.Count.ToString()
        }
    }
}