using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac3WebApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerb_Click(object sender, EventArgs e)
        {
            if (password1.Text != password2.Text)
            {
                error.Text = "Password does not match";
            }
            else
            {

                LoginRef.RegisterService first = new LoginRef.RegisterService();
                error.Text = first.Register(username1.Text, password1.Text);
                if (error.Text.Length == 0)
                {
                    Server.Transfer("Login.aspx");
                }
            }
        }
    }
}