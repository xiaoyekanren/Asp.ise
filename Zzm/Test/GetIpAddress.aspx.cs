using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zzm.Test
{
    public partial class GetIpAddress : System.Web.UI.Page
    {

          

        protected void Page_Load(object sender, EventArgs e)
        {

            String userIP = Request.ServerVariables["REMOTE_ADDR"].ToString();
            Label1.Text = userIP;

        }
    }
}