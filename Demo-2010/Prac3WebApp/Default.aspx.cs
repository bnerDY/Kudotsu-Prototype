using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;

namespace Prac3WebApp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("my cookie");
            myCookie = Request.Cookies["my cookie"];
          

            if (myCookie == null)
            {
                Server.Transfer("Login.aspx");
            }
 
                
            
            
        }

        protected void button_Click(object sender, EventArgs e)
        {

            ValidationRef.Validation first = new ValidationRef.Validation();
            string emailAddress = emailBox.Text;

            //error2.Text = first.ValidEmail(emailBox.Text);



            if (namebox1.Text.Length == 0)
            {
                errorf.Text = " *Required Field";

            }
            else
            {
                errorf.Text = null;
            }

            //

            if (namebox2.Text.Length == 0)
            {
                errorl.Text = " *Required Field";
            }
            else
            {
                errorl.Text = null;
            }
            //

            if (addBox.Text.Length == 0)
            {
                errora.Text = " *Required Field";
            }
            else
            {
                errora.Text = null;
            }
            //


            error2.Text = first.ValidEmail(emailAddress);


            //

            string state = stateDrop.Text;
            string code = codeDrop.Text;
          



            if (phoneBox.Text.Length == 0)
            {
                error1.Text = " *Required Field";
            }
            else
            {
                string strPhoneInput = phoneBox.Text;
                Regex strPhone = new Regex(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$");

                if (strPhone.IsMatch(strPhoneInput))
                {

                    error1.Text = null;
                }
                else
                {
                    error1.Text = "Please Enter a Valid Phone Number!!!";
                }
            }




            //match code to state
            errorc.Text = first.IsValid(state, code);
            //
            string firstname = namebox1.Text;
            string lastname = namebox2.Text;
            string phone = phoneBox.Text;     
            string address = addBox.Text;
            string email = emailBox.Text;
            string year0 = yearBox.Text;
            int year1 = int.Parse(year0);
            string month0 = monthBox.Text;
            int month1 = int.Parse(month0);
            string day0 = dayBox.Text;
            int day1 = int.Parse(day0);
            string title = titleDrop.Text;
            string comment = commentbox.Text;


            HttpCookie myCookie = new HttpCookie("my cookie");
            myCookie = Request.Cookies["my cookie"];
            int id = int.Parse(myCookie["id"]);
          
           if (errorf.Text.Length == 0 && errorl.Text.Length == 0 && errora.Text.Length == 0 && error1.Text.Length == 0 && error2.Text.Length == 0)
           {
               connRef.ADOWebService second = new connRef.ADOWebService();
               message1.Text = second.Insert(id,firstname,lastname,code,phone,address,state,email,year1,month1,day1,title,comment);
               if (message1.Text.Length == 0)
               {
                   Server.Transfer("Search.aspx");
               }
               
           }





                
        }
    }
}
