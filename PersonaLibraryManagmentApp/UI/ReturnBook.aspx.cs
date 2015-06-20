using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PersonaLibraryManagmentApp.BLL;

namespace PersonaLibraryManagmentApp.UI
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        BorrowManager borrowManager=new BorrowManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showBorrowedBooksButton_Click(object sender, EventArgs e)
        {
            string memberNO = returnMemNoTextBox.Text;
            BorrowedBookDropDownList.DataSource = borrowManager.GetBorrowedBooksByMember(memberNO);
            BorrowedBookDropDownList.DataValueField = "Id";
            BorrowedBookDropDownList.DataTextField = "Title";
            BorrowedBookDropDownList.DataBind();

        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            string memberNo = returnMemNoTextBox.Text;
            int bookId = Convert.ToInt16(BorrowedBookDropDownList.SelectedValue);
           string msg= borrowManager.DeleteBookFromBorrowList(memberNo, bookId);

            ReturnMesgLabel.Text = msg;
        }
    }
}