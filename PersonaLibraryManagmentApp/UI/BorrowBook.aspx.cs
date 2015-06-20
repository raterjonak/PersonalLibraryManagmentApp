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
    public partial class BorrowBook : System.Web.UI.Page
    {
        BookManager bookManager=new BookManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bookDropDownList.DataSource = bookManager.GetAllBooks();
                bookDropDownList.DataTextField = "Title";
                bookDropDownList.DataValueField = "Id";
                bookDropDownList.DataBind();
                //borrowAuthorTextBox.Text = bookDropDownList.SelectedItem.Text;
                //borrowPublisherTextBox.Text=bookDropDownList.
                //int id = Convert.ToInt16(bookDropDownList.SelectedValue);
                //Book selectedBook = bookManager.getBokkById(id);

                //borrowAuthorTextBox.Text = selectedBook.Author;
                //borrowPublisherTextBox.Text = selectedBook.Publisher;
               
            }
           

        }

        protected void borrowButton_Click(object sender, EventArgs e)
        {
            Borrow aBorrow = new Borrow();
            aBorrow.Member_Id = borrwMemNoTextBox.Text;
            aBorrow.Book_Id = Convert.ToInt16(bookDropDownList.SelectedValue);

            BorrowManager borrowManager = new BorrowManager();

            String msg = borrowManager.Save(aBorrow);
            borrowSaveMessLabel.Text = msg;
        }

        protected void bookDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(bookDropDownList.SelectedValue);
            Book selectedBook = bookManager.getBokkById(id);

            borrowAuthorTextBox.Text = selectedBook.Author;
            borrowPublisherTextBox.Text = selectedBook.Publisher;
        }
    }
}