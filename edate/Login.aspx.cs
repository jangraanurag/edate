using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class Login : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Cookies["userName"] != null)
                {
                    myaccount_parent.InnerHtml = Request.Cookies["userName"].Value.ToString() + " <i class='fa fa-angle-down fa-indicator'></i>";
                    myaccount_parent.Visible = true;
                    myaccount_child.Visible = true;
                    primary_side.Visible = false;
                }
                else
                {
                    myaccount_parent.Visible = false;
                    myaccount_child.Visible = false;
                    primary_side.Visible = true;
                }
            }
        }

        protected void lblogin_Click(object sender, EventArgs e)
        {
            DataSet ds = king.getdataset("select * from [Username] where [Username]='" + txtuname.Text + "' and ([Password]='" + txtpassword.Text + "' or [Password]=CONVERT(NVARCHAR(50),HashBytes('MD5', '" + txtpassword.Text + "'),2))");
           if(ds.Tables[0].Rows.Count>0)
            {
                Response.Cookies["userName"].Value = txtuname.Text;
                Response.Cookies["Email"].Value = ds.Tables[0].Rows[0]["Email"].ToString();
                Response.Redirect("Profile-detail.aspx");
            }
        }
        protected void lblogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Value = null;
            Response.Cookies["Email"].Value = null;

            myaccount_parent.Visible = false;
            myaccount_child.Visible = false;
            primary_side.Visible = true;

        }
    }
}