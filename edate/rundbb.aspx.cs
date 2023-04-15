using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edate
{
    public partial class rundbb : System.Web.UI.Page
    {
        King king = new King();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == "Om Namah Shivaay")
                king.execquery(txtquery.Text);
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtpassword.Text = "";
            txtquery.Text = "";
        }
    }
}