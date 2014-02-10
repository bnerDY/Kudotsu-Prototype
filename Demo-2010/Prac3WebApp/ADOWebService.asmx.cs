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
    /// Summary description for ADOWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ADOWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string Insert(int user_id1, string firstname1, string lastname1, string area1, string phone1, string address1, string state1, string email1, int year1, int month1, int day1, string title1, string comment1)
        {
            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            try
            {
                //check name exist?
                var check = (from c in db.Contact1s
                             where c.firstname == firstname1
                             & c.lastname ==lastname1
                             select c.id).FirstOrDefault();

                //check name exist?

                //check phone exist
                var checkp = (from c in db.Contact1s
                             where c.phone == phone1
                             select c.id).FirstOrDefault();

                //check phone exist
                if (check == 0 && checkp == 0)
                {


                    //inser into contact
                    var result = (from c in db.Contact1s
                                  select c.id).Max();
                    string result1 = result.ToString();
                    int id1 = int.Parse(result1);
                    int id2 = id1 + 1;

                    Contact1 co = new Contact1();
                    co.id = id2;
                    co.user_id = user_id1;
                    co.firstname = firstname1;
                    co.lastname = lastname1;
                    co.area = area1;
                    co.phone = phone1;
                    co.address = address1;
                    co.state = state1;
                    co.email = email1;
                    co.year = year1;
                    co.month = month1;
                    co.day = day1;
                    co.title = title1;
                    co.comment = comment1;


                    db.Contact1s.InsertOnSubmit(co);
                    db.SubmitChanges();
                    return null;
                    //insert into contact
                }
                else
                {
                    return "Fullname Exist or phone number exist!!";
                }
                
            }catch {
                return "Insert failure";
            }
          
         
        }



    }
}
