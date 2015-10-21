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
    public class HouseService
    {
        public string connString = "Data Source=.;Initial Catalog=House;User ID=sa;pwd=123";
        public List<House> GetAllHouse()
        {
            string sql = "SELECT [HouseId],[Title],[TypeId],[Floorage],[Price],[StreetId],[Contract],[Description],[PublishUser],[PublishTime]  FROM [House].[dbo].[House]";
            List<House> list = new List<House>();
            SqlConnection connection = null;
            SqlDataReader dr = null;
            try
            {
                connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand(sql, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    House house = new House();
                    house.HouseId = Convert.ToInt32(dr["houseid"].ToString());
                    house.Title = dr["title"].ToString();
                    house.TypeId = Convert.ToInt32(dr["typeid"].ToString());
                    house.Floorage = Convert.ToDecimal(dr["floorage"].ToString());
                    house.Price = Convert.ToDecimal(dr["price"].ToString());
                    house.StreetId = Convert.ToInt32(dr["streetid"].ToString());
                    house.Contract = dr["constact"].ToString();
                    house.Description = dr["description"].ToString();
                    house.PublishUser = Convert.ToInt32(dr["publishuser"].ToString());
                    house.PublishTime = Convert.ToDateTime(dr["publishtime"].ToString());
                    list.Add(house);
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
            return list;
        }

        public House GetHouseById(int id)
        {
            string sql = string.Format("SELECT [HouseId],[Title],[TypeId],[Floorage],[Price],[StreetId],[Contract],[Description],[PublishUser],[PublishTime]  FROM [House].[dbo].[House] WHERE [HouseId]={0}", id);
            House house = new House();
            SqlConnection connection = null;
            SqlDataReader dr = null;
            try
            {
                connection = new SqlConnection(connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand(sql, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    house.HouseId = Convert.ToInt32(dr["houseid"].ToString());
                    house.Title = dr["title"].ToString();
                    house.TypeId = Convert.ToInt32(dr["typeid"].ToString());
                    house.Floorage = Convert.ToDecimal(dr["floorage"].ToString());
                    house.Price = Convert.ToDecimal(dr["price"].ToString());
                    house.StreetId = Convert.ToInt32(dr["streetid"].ToString());
                    house.Contract = dr["contract"].ToString();
                    house.Description = dr["description"].ToString();
                    house.PublishUser = Convert.ToInt32(dr["publishuser"].ToString());
                    house.PublishTime = Convert.ToDateTime(dr["publishtime"].ToString());
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
            return house;
        }

        public bool UpdateHouse(House house, int id)
        {
            string sql = string.Format("UPDATE [House].[dbo].[House]   SET [Title] = '{0}',[TypeId] = {1},[Floorage] = '{2}',[Price] = '{3}',[StreetId] = {4},[Contract] = '{5}',[Description] = '{6}',[PublishUser] = {7},[PublishTime] = '{8}' WHERE HouseId={9}", house.Title, house.TypeId, house.Floorage, house.Price, house.StreetId, house.Contract, house.Description, house.PublishUser, house.PublishTime, id);
            bool success = false;
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

        public bool DeleteHouse(int id)
        {
            string sql = string.Format("DELETE FROM [House].[dbo].[House]      WHERE HouseId={0}", id);
            bool success = false;
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
