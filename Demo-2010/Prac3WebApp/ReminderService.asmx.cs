using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Prac3WebApp
{
    /// <summary>
    /// Summary description for ReminderService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/" ,Name ="Reminder Web Service")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ReminderService : System.Web.Services.WebService
    {


        [WebMethod]
        public string Reminder()
        {
            DateTime now = DateTime.Today;
            int month = now.Month;
            int day = now.Day;

            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            //match day and month
            var check = (from c in db.Contact1s
                         where c.month == month
                         & c.day == day
                         select c);
            string check1 = check.ToString();
            string BirthDayReminders = string.Empty;
            if (check1.Length > 0)
            {
                foreach (var x in check)
                    {
                    string firstname = x.firstname;
                    string lastname = x.lastname;
                    string email = x.email;
                    BirthDayReminders += "First Name " + firstname + ", Last Name " + lastname + ", email " + email + "\n";
                    }

                    
                    return BirthDayReminders;
            
            }

            else
            {
                return " ";
            }
           


                

          
     

       
        }
    }
}
