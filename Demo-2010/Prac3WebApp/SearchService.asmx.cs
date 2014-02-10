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
    /// Summary description for SearchService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/" ,Name= "Search web service")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SearchService : System.Web.Services.WebService
    {

        [WebMethod]
        public string searchL(string lastname,int user_id)
        {

            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            //search by lastname
            var check = (from c in db.Contact1s
                         where c.lastname == lastname
                         & c.user_id == user_id
                         select c.id).FirstOrDefault();

            if (check == 0)
            {
                return "No record Being found!!";
            }
            else
            {
                return "Contact Information: ";
            }
        }
        [WebMethod]
        public string searchP(string phone,int user_id)
        {
            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            //search by lastname
            var check = (from c in db.Contact1s
                         where c.phone == phone
                         & c.user_id == user_id
                         select c.id).FirstOrDefault();

            if (check == 0)
            {
                return "No record Being found!!";
            }
            else
            {

                return "Contact Information: ";
            }


        }
        //get information when search lastname
        [WebMethod]
        public Contact1 getName(string lastname, int user_id)
        {
            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            //search by lastname
            var check = (from c in db.Contact1s
                         where c.lastname == lastname
                         & c.user_id == user_id
                         select c).FirstOrDefault();
            return check;


        }
        //
        //get information when search phone numeber
        [WebMethod]
        public Contact1 getPhone(string phone,int user_id)
        {
            LINQdatabaseDataContext db = new LINQdatabaseDataContext();
            //search by lastname
            var check = (from c in db.Contact1s
                         where c.phone == phone
                         & c.user_id == user_id
                         select c).FirstOrDefault();
            return check;


        }
        //


        [WebMethod]
        public string update(string firstname, string lastname, string area, string phone, string address, string state, string email, int year, int month, int day)
        {
            try
            {

                LINQdatabaseDataContext db = new LINQdatabaseDataContext();
                //search by lastname
                var check = (from c in db.Contact1s
                             where c.firstname == firstname
                             & c.lastname == lastname
                             select c).FirstOrDefault();
                check.area = area;
                check.phone = phone;
                check.address = address;
                check.state = state;
                check.email = email;
                check.year = year;
                check.month = month;
                check.day = day;

                db.SubmitChanges();
                return "Update Successful!!";
            }
            catch
            {

                return "Update failure!!!";
            }
        }
    }
}
