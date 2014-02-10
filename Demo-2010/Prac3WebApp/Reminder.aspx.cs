using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac3WebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            HttpCookie myCookie = new HttpCookie("my cookie");
            myCookie = Request.Cookies["my cookie"];


            if (myCookie == null)
            {
                Server.Transfer("Login.aspx");
            }
            else
            {
                ReminderRef.ReminderWebService first = new ReminderRef.ReminderWebService();
                birthday.Text = first.Reminder();
                if (birthday.Text.Length == 0)
                {
                    Server.Transfer("Default.aspx");
                }
            }
        }
    }
}