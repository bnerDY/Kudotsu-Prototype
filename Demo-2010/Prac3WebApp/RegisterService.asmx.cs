using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Prac3WebApp
{
    /// <summary>
    /// Summary description for RegisterService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class RegisterService : System.Web.Services.WebService
    {

        [WebMethod]
        public string getID(string username1, string password1)
        {
            LINQdatabaseDataContext dc = new LINQdatabaseDataContext();
            var result = (from l in dc.logins
                         where l.username == username1
                         & l.password == password1
                         select l.id).FirstOrDefault();
           // string result1 = result.ToString();
            string result1 = result.ToString();
            //int id1 = int.Parse(result1);
            if (result == 0)
            {
                return "Invalid Username or Password";
            }
            else
            {
                return result1;
            }

        }
        [WebMethod]
        public string Register(string username2, string password2)
        {
            LINQdatabaseDataContext dc = new LINQdatabaseDataContext();
            try
            {
                //check the database get the same username or not
                var check = (from l in dc.logins
                              where l.username == username2
                              select l.id).FirstOrDefault();
                string check1 =check.ToString();
                int check2 = int.Parse(check1);
                if (check == 0)
                {


                    //register code
                    var result = (from l in dc.logins
                                  select l.id).Max();
                    string result1 = result.ToString();
                    int id1 = int.Parse(result1);
                    int id2 = id1 + 1;

                    login re = new login();
                    re.id = id2;
                    re.username = username2;
                    re.password = password2;
                    

                    dc.logins.InsertOnSubmit(re);
                    dc.SubmitChanges();
                    return null;
                }
                else
                {
                    return "Username Exist";
                }
            }
            catch
            {
                return "Register failure!!!";
            }

        }
    }
}
