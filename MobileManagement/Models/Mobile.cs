using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileManagement.Models
{
    public class Mobile
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string ManufacturedBy { get; set; }

        public int Price { get; set; }
    }
}