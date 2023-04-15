using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class preferences : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
               // Response.Cookies["userName"].Value = "jangraanurag";
                for (int i = 18; i < 65; i++)
                {
                    ddlagefrom.Items.Add(i.ToString());
                    ddlagetp.Items.Add(i.ToString());
                }
                ddlagefrom.Items.Add("65+");
                ddlagetp.Items.Add("65+");
                king.generate_dropdown(ddledu, "select distinct [Education] from [Username]", true, 0, 0);
                king.generate_dropdown(ddllang, "select distinct [Language] from [Username]", true, 0, 0);
                if (Request.Cookies["userName"] != null && Request.Cookies["userName"].Value != "")
                {
                    DataSet ds = king.getdataset("select * from [preference] where [P_User]='" + Request.Cookies["userName"].Value + "'");
                    if(ds.Tables[0].Rows.Count > 0)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];
                        ddlseek.Text = dr["P_Seek"].ToString();
                        ddllook.Text= dr["P_lookAt"].ToString();
                        ddllang.Text= dr["P_Lang"].ToString();
                        ddledu.Text= dr["P_Edu"].ToString();
                        ddlagetp.Text= dr["P_ageTo"].ToString();
                        ddlagefrom.Text= dr["P_ageFrom"].ToString();
                        
                    }
                }
            }
        }

        protected void lbpreference_Click(object sender, EventArgs e)
        {
            if(Request.Cookies["userName"]!=null && Request.Cookies["userName"].Value!="")
            { 
                if(king.execquery("insert into [preference]([P_ageFrom],[P_ageTo],[P_lookAt],[P_Seek],[P_Lang],[P_Edu],[P_User]) values('"+ddlagefrom.Text+"','"+ddlagetp.Text+"','"+ddllook.Text+"','"+ddlseek.Text+"','"+ddllang.Text+"','"+ddledu.Text+"','"+Request.Cookies["userName"].Value+"')"))
                {
                    Response.Redirect("Profile-detail.aspx");
                }
            }
        }
    }
}