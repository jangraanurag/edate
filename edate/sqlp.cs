using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace edate
{
    internal class sqlp
    {
        SqlConnection cn = new SqlConnection(@"Data Source=edate.co.in;Initial Catalog=edateredhot_db;User ID=edateredhot_usr;Password=Anurag@1990");
        public DataSet getdataset(string query)
        {

            DataSet ds = new DataSet();
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, cn);
            da.Fill(ds);
            cn.Close();
            return ds;
        }
        public DataTable getdatatable(string query)
        {
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, cn);
            da.Fill(ds);
            dt = ds.Tables[0];
            cn.Close();
            return dt;
        }
        public bool execquery(string query)
        {
            string msg;
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlCommand cmd = new SqlCommand(query, cn);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                msg = ex.Message;
                return false;
            }
            return true;

        }

    }
}
