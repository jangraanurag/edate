using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class index : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                for(int i=18;i<65;i++)
                {
                    ddlagefrm.Items.Add(i.ToString());
                    ddlageto.Items.Add(i.ToString());
                }
                ddlagefrm.Items.Add("65+");
                ddlageto.Items.Add("65+");
                king.generate_dropdown(ddlcountry,"select distinct [Country] from [Username]",false);
                ddlcountry.Items.Add("All");
                if (Request.Cookies["userName"] != null)
                {
                    myaccount_parent.InnerHtml = Request.Cookies["userName"].Value.ToString() + " <i class='fa fa-angle-down fa-indicator'></i>";
                    myaccount_parent.Visible = true;
                    myaccount_child.Visible = true;
                    primary_side.Visible = false;
                    DataSet ds = king.getdataset("select * from [Username] where [Username]='" + Request.Cookies["userName"].Value + "'");
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];
                        string image = "";
                        if (!(dr["image"].ToString() == "" || dr["image"].Equals(DBNull.Value)))
                        {
                            image = "./images/profile/" + dr["image"].ToString();
                        }
                        string link = king.getsitename(false) + "Profile-detail.aspx?user=" + Request.Cookies["userName"].Value;
                        string chat = @"<script>
                  var chat_appid = '235524fe468ee74f';
                  var chat_auth = '6c18835637b6cdc2de4c71fe8f4f927f71623d98';
                    var chat_id = '" + Request.Cookies["userName"].Value.ToString() + @"';
                    var chat_name = '" + Request.Cookies["userName"].Value.ToString() + @"';
                    var chat_avatar = '" + image + @"';
                    var chat_link = '" + link + @"';
                    var chat_role = 'User (Logged-in)';



    var chat_css = document.createElement('link'); chat_css.rel = 'stylesheet'; chat_css.type = 'text/css'; chat_css.href = 'https://fast.cometondemand.net/'+chat_appid+'x_xchat.css';
    document.getElementsByTagName(""head"")[0].appendChild(chat_css);
    var chat_js = document.createElement('script'); chat_js.type = 'text/javascript'; chat_js.src = 'https://fast.cometondemand.net/' + chat_appid + 'x_xchat.js'; var chat_script = document.getElementsByTagName('script')[0]; chat_script.parentNode.insertBefore(chat_js, chat_script);
 </script>";
                        ltchat.Text = chat;
                        ltchat.Text = "";
                    }
                    }
                else
                {
                    myaccount_parent.Visible = false;
                    myaccount_child.Visible = false;
                    primary_side.Visible = true;
                }
            }
           
        }

        protected void lbsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Profiles.aspx?seek=" + ddlsgender.Text + "&frmage=" + ddlagefrm.Text + "&toage=" + ddlageto.Text+"&country="+ddlcountry.Text);
        }

        protected void lblogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Value = null;
            Response.Cookies["Email"].Value = null;
           
            myaccount_parent.Visible = false;
            myaccount_child.Visible = false;
            primary_side.Visible = true;
         
        }

        protected void rptr_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            HiddenField hf = (HiddenField)e.Item.FindControl("hdndob");
            DateTime dt = Convert.ToDateTime(hf.Value);
            Literal lt = (Literal)e.Item.FindControl("ltage");
            lt.Text = CalculateYourAge(dt);
        }
        public string CalculateYourAge(DateTime Dob)
        {
            DateTime Now = DateTime.Now;
            int _Years = new DateTime(DateTime.Now.Subtract(Dob).Ticks).Year - 1;
            DateTime _DOBDateNow = Dob.AddYears(_Years);
            int _Months = 0;
            for (int i = 1; i <= 12; i++)
            {
                if (_DOBDateNow.AddMonths(i) == Now)
                {
                    _Months = i;
                    break;
                }
                else if (_DOBDateNow.AddMonths(i) >= Now)
                {
                    _Months = i - 1;
                    break;
                }
            }
            int Days = Now.Subtract(_DOBDateNow.AddMonths(_Months)).Days;

            return $"{_Years} Years {_Months} Months";
        }

    }
}