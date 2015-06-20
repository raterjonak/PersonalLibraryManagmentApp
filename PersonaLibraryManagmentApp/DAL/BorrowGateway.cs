using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.DAL
{
    public class BorrowGateway
    {
        private string connectionString =
           ConfigurationManager.ConnectionStrings["PersonalLibraryManagementConString"].ConnectionString;

        public int Save(Borrow aBorrow)
        {
           
            SqlConnection connection = new SqlConnection(connectionString);

            int memberId = GetMemberIdByMemberNo(aBorrow.Member_Id);
            string query = "INSERT INTO tbl_Borrow VALUES('" + memberId + "','" + aBorrow.Book_Id + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
        public int GetMemberIdByMemberNo (string number)
        {
            Member member=new Member();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT Id FROM tbl_Member WHERE Number='" + number + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                member.Id = Convert.ToInt16(reader["Id"].ToString());
               
                

            }
            reader.Close();
            connection.Close();
            return member.Id;

        }
        public List<Book> GetBorrowedBookList(string number)
        {
            List<Book> borrowedBookList=new List<Book>();
            SqlConnection connection = new SqlConnection(connectionString);
            int memberId = GetMemberIdByMemberNo(number);
            string query = "SELECT br.Book_Id,b.Title,b.Author FROM tbl_Borrow as br JOIN tbl_Book as b on br.Book_Id=b.Id WHERE br.Member_Id='" + memberId + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Book aBook=new Book();
                aBook.Id = Convert.ToInt16(reader["Book_Id"].ToString());
                aBook.Title = reader["Title"].ToString();
                aBook.Author = reader["Author"].ToString();

                borrowedBookList.Add(aBook);




            }
            reader.Close();
            connection.Close();
            return borrowedBookList;

        }
        public int DeleteBookFromBorrowList(string memberNo,int bookId)
        {

            SqlConnection connection = new SqlConnection(connectionString);

            int memberId = GetMemberIdByMemberNo(memberNo);
            string query = "DELETE FROM tbl_Borrow WHERE Member_Id='"+memberId+"' AND Book_Id='"+bookId+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
    }
}