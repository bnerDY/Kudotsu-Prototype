using Demo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Demo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult MultiCountryVM()
        {
            return View(new CountryViewModel());
        }

        [HttpPost]
        public ActionResult MultiCountryVM(CountryViewModel vm)
        {
            ViewBag.YouSelected = "";
            if (vm.Countries != null)
                foreach (string s in vm.Countries)
                    ViewBag.YouSelected += s + " ";

            return View(vm);
        }
    }
}