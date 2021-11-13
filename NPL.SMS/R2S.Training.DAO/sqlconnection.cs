using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace R2S.Training.DAO
{
    class sqlconnection
    {
        // Connection string
        private const string CONN_STRING = @"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=SMS;Integrated Security=True";

        public static SqlConnection GetSqlConnection()
        {
            SqlConnection conn = new SqlConnection(CONN_STRING);
            return conn;
        }

        public static SqlCommand GetSqlCommand(string query, SqlConnection conn)
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            return cmd;
        }
    }
}
