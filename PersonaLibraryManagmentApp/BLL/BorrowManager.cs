using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.DAL;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.BLL
{
    public class BorrowManager
    {
        BorrowGateway borrowGateway=new BorrowGateway();
        public string Save(Borrow aBorrow)
        {
            int result = borrowGateway.Save(aBorrow);

            if (result > 0)
            {
                return "Save succesfully.";
            }
            else
            {
                return "Save Failed.";
            }
        }

        public List<Book> GetBorrowedBooksByMember(string member_No)
        {
            return borrowGateway.GetBorrowedBookList(member_No);
        }
        public string DeleteBookFromBorrowList(string memberNo ,int bookId)
        {
            int result = borrowGateway.DeleteBookFromBorrowList(memberNo,bookId);

            if (result > 0)
            {
                return "Save succesfully.";
            }
            else
            {
                return "Save Failed.";
            }
        }
    }
}