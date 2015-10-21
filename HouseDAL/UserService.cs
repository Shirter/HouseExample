using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

using HouseModel;

namespace HouseDAL
{
    public class UserService
    {
        public string connString = "Data Source=.;Initial Catalog=House;User ID=sa;pwd=123";
        public bool LogIn(string username, string password)
        {
            bool success = false;
            string sql = string.Format("SELECT [LoginName],[Password]  FROM [House].[dbo].[User] WHERE LoginName='{0}' AND Password='{1}'", username, password);
            SqlConnection connection = null;
            SqlDataReader dr = null;
            try
            {
                connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand(sql, connection);
                dr = cmd.ExecuteReader();
                success = false;
                if (dr.Read())
                {
                    success = true;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                dr.Close();
                connection.Close();
            }
            return success;
        }

        public bool Register(User user)
        {
            bool success = false;
            string sql = string.Format("INSERT INTO [House].[dbo].[User]([LoginName],[UserName],[Password],[Telephone])     VALUES('{0}','{1}','{2}','{3}')", user.LoginName, user.UserName, user.Password, user.Telephone);
            SqlConnection connection = null;
            try
            {
                connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand(sql, connection);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    success = true;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
            return success;
        }
    }
}
