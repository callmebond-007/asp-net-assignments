using Assignment_Mobile_Management_Templated.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Assignment_Mobile_Management_Templated.ADO
{
    public class ManufacturerRepository
    {
        string connectionString = @"data source=(localdb)\MSSQLLocalDB;database=MobileDB;integrated security=SSPI";

        public List<Manufacturer> GetManufacturer()
        {
            List<Manufacturer> manufacturerList = new List<Manufacturer>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = "sp_GetManufacturer";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Manufacturer manufacturer = new Manufacturer();
                        manufacturer.Id = Convert.ToInt32(reader["Id"]);
                        manufacturer.ManufacturedBy = Convert.ToString(reader["ManufacturedBy"]);
                        manufacturerList.Add(manufacturer);
                    }
                }

            }
            return manufacturerList;
        }

    }
}
