using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace FiboWeb.Models
{
    public class User
    {
        private int _userId;
        private string _loginName;
        private string _firstName;
        private string _lastName;
        private string _password;

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }

        public string LoginName
        {
            get { return _loginName; }
            set { _loginName = value; }
        }

        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }

        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }

        public string Password
        {
            get { return HashPassword(_password); }
            set { _password = value; }
        }
        
        private static string HashPassword(string password)
        {
            byte[] passwordData = Encoding.ASCII.GetBytes(password);
            passwordData = new System.Security.Cryptography.SHA256Managed().ComputeHash(passwordData);
            return Encoding.ASCII.GetString(passwordData);
        }

        public static List<User> GetAllUser()
        {
            List<User> allUser = new List<User>();
            string sql = "select * from [User]";

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["fiboConnection"].ConnectionString);
            con.Open();


            SqlCommand cmd = new SqlCommand
            {
                CommandText = sql,
                Connection = con
            };
           
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    allUser.Add(CreateUser(reader));
                }
            }
            return allUser;        
        }

        private static User CreateUser(SqlDataReader reader)
        {
            return new User
            {
                UserId = Convert.ToInt32(reader["UserId"].ToString()),
                LoginName = reader["LoginName"].ToString(),
                FirstName = reader["FirstName"].ToString(),
                LastName = reader["LastName"].ToString(),
                Password = reader["PasswordHash"].ToString()
            };

        }

        public bool RegisterUser()
        {
            string sql = "insert into [User] (LoginName, FirstName, LastName, PasswordHash) values (@loginName, @firstName, @lastName, @passwordHash)";
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["fiboConnection"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand
            {
                CommandText = sql,
                Connection = con
            };

            cmd.Parameters.Add(new SqlParameter("@loginName", LoginName));
            cmd.Parameters.Add(new SqlParameter("@firstName", FirstName));
            cmd.Parameters.Add(new SqlParameter("@lastName", LastName));
            cmd.Parameters.Add(new SqlParameter("@passwordHash", Password));

            return cmd.ExecuteNonQuery() > 0;
        }
    }
}