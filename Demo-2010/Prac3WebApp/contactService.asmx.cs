using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Prac3WebApp
{
    /// <summary>
    /// Summary description for contactService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/" ,Name ="Validation")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class contactService : System.Web.Services.WebService
    {

  [WebMethod]
        public string ValidEmail(string emailAddress)
        {
            // Confirm that the e-mail address string is not empty. 
            if (emailAddress.Length == 0)
            {
                return "e-mail address is required.";

            }

            // Confirm that there is an "@" and a "." in the e-mail address, and in the correct order.
            if (emailAddress.IndexOf("@") > -1)
            {
                if (emailAddress.IndexOf(".", emailAddress.IndexOf("@")) > emailAddress.IndexOf("@"))
                {
                    return "";

                }
            }


            return "e-mail address must be valid e-mail address format." + "For example 'someone@example.com' ";



        }
        [WebMethod]
        public string IsValid(string state, string code)
        {
            if (code == "02")
            {
                if (state != "NSW" && state != "ACT")
                {
                    return  "Not Valid!!!";
                }
                else
                {
                    return  " ";
                }
            }
            else if (code == "03")
            {
                if (state != "VIC" && state != "TAS")
                {
                    return  "Not Valid!!!";
                }
                else
                {
                    return  "";
                }
            }
            else if (code == "07" & state != "QLD")
            {
                return "Not Valid!!!";
            }
            else if (code == "08")
            {
                if (state != "WA" && state != "SA" && state != "NT")
                {
                    return "Not Valid!!!";
                }
                else
                {
                    return "";
                }
            }



            return "";
        }
    }
}
