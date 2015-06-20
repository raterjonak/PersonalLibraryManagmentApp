using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.DAL
{
    public class MemberGateway
    {
        private string connectionString =
            ConfigurationManager.ConnectionStrings["PersonalLibraryManagementConString"].ConnectionString;

        public int Save(Member aMember)
        {
            SqlConnection connection=new SqlConnection(connectionString);
            string query = "INSERT INTO tbl_Member VALUES('" + aMember.Number + "','" + aMember.Name + "')";
            SqlCommand command=new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
    }
}