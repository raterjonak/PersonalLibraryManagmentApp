using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonaLibraryManagmentApp.Model
{
    public class Borrow
    {
        public string Member_Id { set; get; }
        public int Book_Id { set; get; }
    }
}