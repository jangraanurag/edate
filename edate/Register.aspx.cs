using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edate
{
    public partial class Register : System.Web.UI.Page
    {
        King king = new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

            }
        }

        protected void lbregister_Click(object sender, EventArgs e)
        {
            string pGender = "Male";
         if(king.execquery("insert into [Username]([Name],[Email],[Password],[Education],[Gender],[Country],[Username]) values('"+name.Value+"','"+email.Text+"','"+Password.Value+"','"+education.Value+"','"+pGender+"','"+country.Value+"','"+userName.Value+"')"))
            {
                if(rdofemale.Checked)
                {
                    pGender = "Female";
                }
                Response.Cookies["userName"].Value = userName.Value;
                Response.Cookies["Email"].Value = email.Text;
                Response.Redirect("step.aspx");

            }
        }
    }
}