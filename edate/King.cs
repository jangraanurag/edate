using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Diagnostics;

namespace edate
{
    public class King
    {
        SqlConnection cn = new SqlConnection(@ConfigurationManager.ConnectionStrings["edateConnectionString"].ConnectionString);
        string ffmpegFilePath = "~/ffmpeg/ffmpeg.exe";
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
        public string getsitename(bool https)
        {
            if (https)
                return "https://edateredhot.com/";
            return "http://edatered.com/";
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
        public bool chkdata(string query)
        {
            DataSet ds = new DataSet();
            ds = getdataset(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return true;
            }

            return false;
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
        public int booltoint(bool b)
        {
            if (b)
                return 1;
            return 0;
        }
        public string getfirst(string query)
        {
            DataTable dt = getdatatable(query);
            if (dt.Rows.Count > 0)
                return dt.Rows[0][0].ToString();
            else
                return "Error";
        }

        public void rptr_load(Repeater rptr,string query)
        {
            DataSet ds = getdataset(query);
            rptr.DataSource = ds;
            rptr.DataBind();
        }

        public void generate_dropdown(DropDownList ddl,string query,bool clear,string text,string value)
        {
           
            DataTable dt = getdatatable(query);
            if (clear)
                ddl.Items.Clear();
            foreach(DataRow dr in dt.Rows)
            {
                ListItem li = new ListItem();
                li.Text = dr[text].ToString();
                li.Value = dr[value].ToString();
                ddl.Items.Add(li);
            }
            
        }
        public void generate_dropdown(DropDownList ddl,string query, bool clear, int text, int value)
        {
            
            DataTable dt = getdatatable(query);
            if (clear)
                ddl.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                ListItem li = new ListItem();
                li.Text = dr[text].ToString();
                li.Value = dr[value].ToString();
                ddl.Items.Add(li);
            }
            
        }

        public void generate_dropdown(HtmlSelect ddl, string query, bool clear, int text, int value)
        {

            DataTable dt = getdatatable(query);
            if (clear)
                ddl.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                ListItem li = new ListItem();
                li.Text = dr[text].ToString();
                li.Value = dr[value].ToString();
                ddl.Items.Add(li);
            }

        }
        public void generate_dropdown(DropDownList ddl,string query, bool clear)
        {
            
            DataTable dt = getdatatable(query);
            if (clear)
                ddl.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                
                ddl.Items.Add(dr[0].ToString());
            }
            
        }

        public string convertvideo(string file,string convertedExtension)
        {
            string result = string.Empty;
            string input = string.Empty;
            string output = string.Empty;
            try
            {
                FileInfo f1 = new FileInfo(HttpContext.Current.Server.MapPath(file));
                string filename= Path.GetFileNameWithoutExtension(f1.Name);
                string extension = Path.GetExtension(f1.Name);
                input = HttpContext.Current.Server.MapPath(file);
                output = HttpContext.Current.Server.MapPath("~/video/" + filename + convertedExtension);
                var processInfo = new ProcessStartInfo(HttpContext.Current.Server.MapPath(ffmpegFilePath), " -i " + input + " -ar 22050 -vf scale=640:480 -preset ultrafast " + output + "")
                {
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };
                try
                {
                    Process process = System.Diagnostics.Process.Start(processInfo);
                    //result = process.StandardError.ReadToEnd();
                    //process.WaitForExit();
                    //process.Close();
                }
                catch (Exception)
                {
                    result = string.Empty;
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return result;
        }

        public string cutvideo(string file, string convertedExtension,int start,int end,string scale)
        {
            string result = string.Empty;
            string input = string.Empty;
            string output = string.Empty;
            try
            {
                FileInfo f1 = new FileInfo(HttpContext.Current.Server.MapPath(file));
                string filename = Path.GetFileNameWithoutExtension(f1.Name);
                string extension = Path.GetExtension(f1.Name);
                input = HttpContext.Current.Server.MapPath(file);
                output = HttpContext.Current.Server.MapPath("~/video/" + filename+"_preview" + convertedExtension);
                
                var processInfo = new ProcessStartInfo(HttpContext.Current.Server.MapPath(ffmpegFilePath), " -i " + input + " -ar 22050 -vf scale="+scale+" -ss "+totime(start)+" - t "+ totime(end-start) + " - async 1 -preset ultrafast " + output + "")
                {
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };
                try
                {
                    Process process = System.Diagnostics.Process.Start(processInfo);
                    //result = process.StandardError.ReadToEnd();
                    //process.WaitForExit();
                    //process.Close();
                }
                catch (Exception)
                {
                    result = string.Empty;
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return result;
        }

        public string convertvideo(string file, string convertedExtension ,string scale)
        {
            string result = string.Empty;
            string input = string.Empty;
            string output = string.Empty;
            try
            {
                FileInfo f1 = new FileInfo(HttpContext.Current.Server.MapPath(file));
                string filename = Path.GetFileNameWithoutExtension(f1.Name);
                string extension = Path.GetExtension(f1.Name);
                input = HttpContext.Current.Server.MapPath(file);
                output = HttpContext.Current.Server.MapPath("~/video/" + filename + convertedExtension);
                var processInfo = new ProcessStartInfo(HttpContext.Current.Server.MapPath(ffmpegFilePath), " -i " + input + " -ar 22050 -vf scale="+scale+" -preset ultrafast " + output + "")
                {
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };
                try
                {
                    Process process = System.Diagnostics.Process.Start(processInfo);
                    //result = process.StandardError.ReadToEnd();
                    //process.WaitForExit();
                    //process.Close();
                }
                catch (Exception)
                {
                    result = string.Empty;
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return result;
        }

        public string getthumb(string file)
        {
            string result = string.Empty;
            string input = string.Empty;
            string output = string.Empty;
            try
            {
                FileInfo f1 = new FileInfo(HttpContext.Current.Server.MapPath(file));
                string filename = Path.GetFileNameWithoutExtension(f1.Name);
                string extension = Path.GetExtension(f1.Name);
                input = HttpContext.Current.Server.MapPath(file);
                output = HttpContext.Current.Server.MapPath("~/video/" + filename + "_thumb.png");
                var processInfo = new ProcessStartInfo(HttpContext.Current.Server.MapPath(ffmpegFilePath), " -i " + input + " -ss 00:00:01.000 -vframes 1 " + output + "")
                {
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true
                };
                try
                {
                    Process process = System.Diagnostics.Process.Start(processInfo);
                    //result = process.StandardError.ReadToEnd();
                    //process.WaitForExit();
                    //process.Close();
                }
                catch (Exception)
                {
                    result = string.Empty;
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return result;

        }

        public string totime(int second)
        {
            int start = second;
            string starttime = "00:00:00";
            if (start < 60)
            {
                if (Convert.ToString(start).Length < 2)
                {
                    starttime = "00:00:0" + Convert.ToString(start);
                }
                else
                {
                    starttime = "00:00:" + Convert.ToString(start);
                }

            }
            else
            {
                string strmin = "00";
                string strhr = "00";
                string strsec = "00";
                int hr = 0;
                int min = 0;
                int sec = 0;
                sec = start % 60;
                min = Convert.ToInt32(start / 60);
                if (min >= 60)
                {
                    hr = Convert.ToInt32(min / 60);
                    min = min % 60;
                }
                if (hr < 10)
                {
                    strhr = "0" + Convert.ToString(hr);
                }
                else
                {
                    strhr = Convert.ToString(hr);
                }
                if (min < 10)
                {
                    strmin = "0" + Convert.ToString(hr);
                }
                else
                {
                    strmin = Convert.ToString(hr);
                }
                if (sec < 10)
                {
                    strsec = "0" + Convert.ToString(hr);
                }
                else
                {
                    strsec = Convert.ToString(hr);
                }
                starttime = strhr + ":" + strmin + ":" + strsec;
            }
            return starttime;
        }

    }
}