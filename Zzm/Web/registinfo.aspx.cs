using System;
using System.Web.UI;
using Zzm.Common;
using Zzm.Common.ise;
namespace Zzm.Web
{
    public partial class registinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //IseService iseserver = new NewsDAL.IseService();

            //Ise ise = new Ise
            //{
            //    PLACE1 = TXTPLACE.Text.Trim(),
            //    IP1 = TXTIP.Text.Trim(),
            //    USER1 = TXTUSER.Text.Trim(),
            //    STARTDATE1 = TXTSTARTDATE.Text.Trim(),
            //    ENDDATE1 = TXTENDDATE.Text.Trim(),
            //    PURPOSE1 = TXTPURPOSE.Text.Trim(),
            //    REMARKS1 = TXTREMARKS.Text.Trim()
            //};
            //string sql = "INSERT dbo.[use] (PLACE,IP地址,[USER],开始日期,截止日期,用途,备注)" + " VALUES ("+ise.PLACE1+ "," + ise.PLACE1 + "," + ise.PLACE1 + "," + ise.PLACE1 + "," + ise.PLACE1 + "," + ise.PLACE1 + "," + ise.PLACE1 + ")";
            //int aaa = SqlHelper.ExecuteNonQuery(connectionString, CommandType.Text, sql);


            if (Page.IsValid)
            {
                iseService iseserver = new iseService();

                ise ise = new ise
                {
                    PLACE1 = DropDownList1.Text.Trim(),
                    IP1 = TXTIP.Text.Trim(),
                    USER1 = TXTUSER.Text.Trim(),
                    STARTDATE1 = TXTSTARTDATE.Text.Trim(),
                    ENDDATE1 = TXTENDDATE.Text.Trim(),
                    PURPOSE1 = TXTPURPOSE.Text.Trim(),
                    REMARKS1 = TXTREMARKS.Text.Trim()
                };
                iseserver.AddUseRecord(ise);
                Message.RegScript(this, "插入成功");
                Response.Redirect("/Web/registinfo.aspx");
            }
            else
            {
                Message.RegScript(this, "插入失败");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //这个是手动将各个值打进去- - 。
            if (DropDownList2.SelectedValue.ToString() == "科南楼B103")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER],  [开始日期], [截止日期], [用途],[备注],ID FROM [use] where [PLACE] = '科南楼B103' ORDER BY [IP地址]";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "计算中心")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER],  [开始日期], [截止日期],[用途], [备注],ID FROM [use] where [PLACE] = '计算中心' and   [USER] <> '冯飘'  ORDER BY [IP地址]";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "11-430")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER],[开始日期], [截止日期],  [用途], [备注],ID FROM [use] where [PLACE] = '11-430' ORDER BY [IP地址]";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "Fit-1-106")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER],  [开始日期], [截止日期],[用途], [备注],ID FROM [use] where [PLACE] = 'Fit-1-106' ORDER BY [IP地址]";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "腾讯云")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER],  [开始日期], [截止日期], [用途],[备注],ID FROM [use] where [PLACE] = '腾讯云' ORDER BY [IP地址]";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "All")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER], [开始日期], [截止日期], [用途], [备注],ID FROM [use] ORDER BY PLACE, IP地址";
            }
            else
                if (DropDownList2.SelectedValue.ToString() == "其他")
            {
                SqlDataSource2.SelectCommand = "SELECT [PLACE], [IP地址], [USER], [开始日期], [截止日期],[用途],  [备注],ID FROM [use]  where [PLACE] = '其他' ORDER BY [IP地址]";
            }
            else
            {
                Common.Message.RegScript(this, "找不到相关服务器信息");
            }
        }
    }
}