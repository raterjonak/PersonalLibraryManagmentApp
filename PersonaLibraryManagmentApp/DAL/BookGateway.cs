using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.DAL
{
    public class BookGateway
    {
        private string connectionString =
           ConfigurationManager.ConnectionStrings["PersonalLibraryManagementConString"].ConnectionString;

        public int Save(Book aBook)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO tbl_Book VALUES('" + aBook.Title + "','" + aBook.Author +"','"+aBook.Publisher+ "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }

       public List<Book> Getbooklist()
        {
           List<Book> bookList=new List<Book>();

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM tbl_Book";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
           SqlDataReader reader = command.ExecuteReader();
           while (reader.Read())
           {
               Book aBook=new Book();
               aBook.Id = Convert.ToInt16(reader["Id"].ToString());   
               aBook.Title = reader["Title"].ToString();
               aBook.Author = reader["Author"].ToString();
               aBook.Publisher = reader["Publisher"].ToString();
               bookList.Add(aBook);
           }
           reader.Close();
            connection.Close();
            return bookList;

        }
       public Book GetbookById( int id)
       {
           Book aBook = new Book();
           SqlConnection connection = new SqlConnection(connectionString);
           string query = "SELECT * FROM tbl_Book WHERE Id='"+id+"'";
           SqlCommand command = new SqlCommand(query, connection);
           connection.Open();
           SqlDataReader reader = command.ExecuteReader();
           while (reader.Read())
           {
               
               aBook.Id = Convert.ToInt16(reader["Id"].ToString());
               aBook.Title = reader["Title"].ToString();
               aBook.Author = reader["Author"].ToString();
               aBook.Publisher = reader["Publisher"].ToString();
              
           }
           reader.Close();
           connection.Close();
           return aBook;

       }
    }
}