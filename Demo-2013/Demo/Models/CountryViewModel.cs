using Demo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Demo.Models
{
    public class CountryViewModel
    {
        public List<string> Countries { get; set; }
        public MultiSelectList CountryList { get; private set; }

        public CountryViewModel()
        {
            this.CountryList = GetCountries(null);
        }

        public MultiSelectList GetCountries(string[] selectedValues)
        {
            List<Country> countrs = new List<Country>()
                {
                    new Country() { ID = 1, Name= "QLD" },
                    new Country() { ID = 2, Name= "NSW" },
                    new Country() { ID = 3, Name= "TAS" },
                    new Country() { ID = 4, Name= "VIC" },
                    new Country() { ID = 5, Name= "SA" },
                    new Country() { ID = 6, Name= "WA" },
                    new Country() { ID = 7, Name= "NT" },
                    new Country() { ID = 8, Name= "ACT" },
                };

            return new MultiSelectList(countrs, "ID", "Name", selectedValues);
        }
    }
}