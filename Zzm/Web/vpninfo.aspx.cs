using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zzm.Web
{
    public partial class vpninfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //这个是手动将各个值打进去- - 。
            if (DropDownList1.SelectedValue.ToString() == "科南楼B103")
            {
                SqlDataSource1.SelectCommand = "SELECT vpn.* FROM vpn where PLACE='科南楼B103' order by IP地址";
            }
            //else
            //    if (DropDownList1.SelectedValue.ToString() == "计算中心")
            //{
            //    SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='计算中心' order by IP";
            //}
            else
                if (DropDownList1.SelectedValue.ToString() == "11-430")
            {
                SqlDataSource1.SelectCommand = "SELECT vpn.* FROM vpn where PLACE='11-430' order by IP地址";
            }
            else
                if (DropDownList1.SelectedValue.ToString() == "Fit-1-106")
            {
                SqlDataSource1.SelectCommand = "SELECT vpn.* FROM vpn where PLACE='Fit-1-106' order by IP地址";
            }
            //else
            //    if (DropDownList1.SelectedValue.ToString() == "腾讯云")
            //{
            //    SqlDataSource1.SelectCommand = "SELECT Server_detail.* FROM Server_detail where PLACE='腾讯云' order by IP";
            //}
            else
                if (DropDownList1.SelectedValue.ToString() == "All")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM vpn order by IP地址";
            }
            else
            {
                Common.Message.RegScript(this, "找不到相关服务器信息");
            }
        }
    }
}