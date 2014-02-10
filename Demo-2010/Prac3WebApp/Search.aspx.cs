using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Prac3WebApp
{
    public partial class About : System.Web.UI.Page
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
            if (Drop.Text == "Last Name")
            {
                label.Text = "Last Name: ";
                searchbox.Visible = true;

                //get id
                HttpCookie myCookie = new HttpCookie("my cookie");
                myCookie = Request.Cookies["my cookie"];
                int user_id = int.Parse(myCookie["id"]);
                //

                string lastname = searchbox.Text;
                //read line
                searchRef.Searchwebservice first = new searchRef.Searchwebservice();

                if (searchbox.Text.Length == 0)
                {
                    searchi.Text = "Please enter search criteria !!";
                    info.Text = null;

                }
                else
                {
                    searchi.Text = null;
                    info.Text = first.searchL(lastname,user_id);


                }
                if (info.Text == "Contact Information: ")
                {

                    fullname.Visible = true;
                    namebox1.Visible = true;
                    namebox1.Text = first.getName(lastname,user_id).firstname;
                    namel.Visible = true;
                    namebox2.Visible = true;
                    namebox2.Text = first.getName(lastname,user_id).lastname;
                    code.Visible = true;
                    codeDrop.Visible = true;
                    codeDrop.SelectedItem.Text = first.getName(lastname,user_id).area;
                    phone.Visible = true;
                    phoneBox.Visible = true;
                    phoneBox.Text = first.getName(lastname,user_id).phone;
                    address1.Visible = true;
                    addBox.Visible = true;
                    addBox.Text = first.getName(lastname,user_id).address;
                    state1.Visible = true;
                    stateD.Visible = true;
                    stateD.SelectedItem.Text = first.getName(lastname,user_id).state;
                    email1.Visible = true;
                    emailBox.Visible = true;
                    emailBox.Text = first.getName(lastname,user_id).email;
                    dob.Visible = true;
                    day1.Visible = true;
                    dayDrop.Visible = true;
                    dayDrop.SelectedItem.Text = first.getName(lastname,user_id).day.ToString();
                    month1.Visible = true;
                    monthDrop.Visible = true;
                    monthDrop.SelectedItem.Text = first.getName(lastname,user_id).month.ToString();
                    Year1.Visible = true;
                    yearD.Visible = true;
                    yearD.SelectedItem.Text = first.getName(lastname,user_id).year.ToString();
                    update.Visible = true;
                }
                else
                {
                    fullname.Visible = false;
                    namebox1.Visible = false;
                    namel.Visible = false;
                    namebox2.Visible = false;
                    code.Visible = false;
                    codeDrop.Visible = false;
                    phone.Visible = false;
                    phoneBox.Visible = false;
                    address1.Visible = false;
                    addBox.Visible = false;
                    state1.Visible = false;
                    stateD.Visible = false;
                    email1.Visible = false;
                    emailBox.Visible = false;
                    dob.Visible = false;
                    day1.Visible = false;
                    dayDrop.Visible = false;
                    month1.Visible = false;
                    monthDrop.Visible = false;
                    Year1.Visible = false;
                    yearD.Visible = false;
                    update.Visible = false;
                }






            }
            else
            {
                label.Text = "Phone Number: ";
                searchbox.Visible = true;

                //get id
                HttpCookie myCookie = new HttpCookie("my cookie");
                myCookie = Request.Cookies["my cookie"];
                int user_id = int.Parse(myCookie["id"]);
                //

                string phone1 = searchbox.Text;
                //read line
                searchRef.Searchwebservice first = new searchRef.Searchwebservice();

                if (searchbox.Text.Length == 0)
                {
                    searchi.Text = "Please enter search criteria !!";
                    info.Text = null;

                }
                else
                {
                    searchi.Text = null;
                    info.Text = first.searchP(phone1,user_id);

                }
                if (info.Text == "Contact Information: ")
                {

                    fullname.Visible = true;
                    namebox1.Visible = true;
                    namebox1.Text = first.getPhone(phone1,user_id).firstname;
                    namel.Visible = true;
                    namebox2.Visible = true;
                    namebox2.Text = first.getPhone(phone1,user_id).lastname;
                    code.Visible = true;
                    codeDrop.Visible = true;
                    codeDrop.SelectedItem.Text = first.getPhone(phone1,user_id).area;
                    phone.Visible = true;
                    phoneBox.Visible = true;
                    phoneBox.Text = first.getPhone(phone1,user_id).phone;
                    address1.Visible = true;
                    addBox.Visible = true;
                    addBox.Text = first.getPhone(phone1,user_id).address;
                    state1.Visible = true;
                    stateD.Visible = true;
                    stateD.SelectedItem.Text = first.getPhone(phone1,user_id).state;
                    email1.Visible = true;
                    emailBox.Visible = true;
                    emailBox.Text = first.getPhone(phone1,user_id).email;
                    dob.Visible = true;
                    day1.Visible = true;
                    dayDrop.Visible = true;
                    dayDrop.SelectedItem.Text = first.getPhone(phone1,user_id).day.ToString();
                    month1.Visible = true;
                    monthDrop.Visible = true;
                    monthDrop.SelectedItem.Text = first.getPhone(phone1,user_id).month.ToString();
                    Year1.Visible = true;
                    yearD.Visible = true;
                    yearD.SelectedItem.Text = first.getPhone(phone1,user_id).year.ToString();
                    update.Visible = true;
                }
                else
                {
                    fullname.Visible = false;
                    namebox1.Visible = false;
                    namel.Visible = false;
                    namebox2.Visible = false;
                    code.Visible = false;
                    codeDrop.Visible = false;
                    phone.Visible = false;
                    phoneBox.Visible = false;
                    address1.Visible = false;
                    addBox.Visible = false;
                    state1.Visible = false;
                    stateD.Visible = false;
                    email1.Visible = false;
                    emailBox.Visible = false;
                    dob.Visible = false;
                    day1.Visible = false;
                    dayDrop.Visible = false;
                    month1.Visible = false;
                    monthDrop.Visible = false;
                    Year1.Visible = false;
                    yearD.Visible = false;
                    update.Visible = false;
                }
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            namebox1.Enabled = false;
            namebox2.Enabled = false;
            codeDrop.Enabled = true;
            phoneBox.Enabled = true;
            addBox.Enabled = true;
            stateD.Enabled = true;
            emailBox.Enabled = true;
            dayDrop.Enabled = true;
            monthDrop.Enabled = true;
            yearD.Enabled = true;
            confirm.Visible = true;
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            searchRef.Searchwebservice first = new searchRef.Searchwebservice();
            string code = codeDrop.Text;

            string year0 = yearD.Text;
            int year1 = int.Parse(year0);
            string month0 = monthDrop.Text;
            int month1 = int.Parse(month0);
            string day0 = dayDrop.Text;
            int day1 = int.Parse(day0);
            if (namebox1.Text.Length == 0 || namebox2.Text.Length == 0 || codeDrop.Text.Length == 0 || phoneBox.Text.Length == 0 || addBox.Text.Length == 0
                && stateD.Text.Length == 0 || emailBox.Text.Length == 0 || dayDrop.Text.Length == 0 || monthDrop.Text.Length == 0 || yearD.Text.Length == 0)
            {
                message.Text = "Please Enter All the information";
            }
            else
            {
                message.Text = first.update(namebox1.Text, namebox2.Text, code, phoneBox.Text, addBox.Text, stateD.Text, emailBox.Text, year1, month1, day1);
                codeDrop.Enabled = false;
                phoneBox.Enabled = false;
                addBox.Enabled = false;
                stateD.Enabled = false;
                emailBox.Enabled = false;
                dayDrop.Enabled = false;
                monthDrop.Enabled = false;
                yearD.Enabled = false;
                confirm.Visible = false;
            }
        }



    }
}