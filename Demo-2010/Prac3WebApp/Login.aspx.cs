using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac3WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("my cookie");
            myCookie = Request.Cookies["my cookie"];

            if (myCookie != null)
            {
                Server.Transfer("Default.aspx");
            }
                
            
                



        }

        protected void loginb_Click(object sender, EventArgs e)
        {

            LoginRef.RegisterService first = new LoginRef.RegisterService();
            error.Text = first.getID(username1.Text, password1.Text);

            if (error.Text != "Invalid Username or Password")
            {

                string id = error.Text;
                HttpCookie myCookie = new HttpCookie("my cookie");
                myCookie["id"] = id;               
                myCookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myCookie);


                Server.Transfer("Default.aspx");
            }
        }
    }
}