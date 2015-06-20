using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PersonaLibraryManagmentApp.BLL;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.UI
{
    public partial class BookEntry : System.Web.UI.Page
    {
        BookManager bookManager=new BookManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookSaveButton_Click(object sender, EventArgs e)
        {
            Book aBook = new Book();
            aBook.Title = titleTextBox.Text;
            aBook.Author = authorTextBox.Text;
            aBook.Publisher = publisherTextBox.Text;

           bookSaveMessLabel.Text= bookManager.Save(aBook);
        }  
    }
}