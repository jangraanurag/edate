using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class gift : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if(Request.QueryString["user"]!=null)
                {
                    txtname.Text = Request.QueryString["user"].ToString();
                }
            }
        }

        protected void lbgift_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["userName"] != null && txtamount.Text!="" && Convert.ToDouble(txtamount.Text)>0)
            {
                if (king.execquery("insert into [Transactions]([From_UID],[To_UID],[Date],[Amount]) values('"+Request.Cookies["userName"].Value.ToString()+"','"+txtname.Text+"',getdate(),"+txtamount.Text+")"))
                {
                    formmessage.InnerText = "Plz Enter Amount";
                }
            }
        }
    }
}