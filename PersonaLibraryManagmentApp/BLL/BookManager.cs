using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.DAL;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.BLL
{
    public class BookManager
    {
        BookGateway bookGateway = new BookGateway();

        public string Save(Book aBook)
        {
            int result = bookGateway.Save(aBook);

            if (result > 0)
            {
                return "Save succesfully.";
            }
            else
            {
                return "Save Failed.";
            }
        }

        public List<Book> GetAllBooks()
        {
            return bookGateway.Getbooklist();
        }

        public Book getBokkById(int id)
        {
            return bookGateway.GetbookById(id);
        }
    }
}