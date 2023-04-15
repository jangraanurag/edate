using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class wallet : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                //Response.Cookies["userName"].Value="jangraanurag";
                if (Request.Cookies["userName"] != null)
                {
                    string user = Request.Cookies["userName"].Value;
                    king.rptr_load(rptrsent, "select * from [Transactions] where [From_UID]='"+user+"'");
                    king.rptr_load(rptrrecieved, "select * from [Transactions] where [To_UID]='" + user + "'");
                    DataSet sent_ds = king.getdataset("select sum([Amount]) as Amt from [Transactions] where [From_UID]='" + user + "'");
                    DataSet rcvd_ds= king.getdataset("select sum([Amount]) as Amt from [Transactions] where [To_UID]='" + user + "'");
                    double sentamt = 0;
                    if(!sent_ds.Tables[0].Rows[0]["Amt"].Equals(DBNull.Value))
                    {
                        sentamt = Convert.ToDouble(sent_ds.Tables[0].Rows[0]["Amt"].ToString());
                    }
                    double rcvdamt = 0;
                    if (!sent_ds.Tables[0].Rows[0]["Amt"].Equals(DBNull.Value))
                    {
                        rcvdamt = Convert.ToDouble(rcvd_ds.Tables[0].Rows[0]["Amt"].ToString());
                    }

                   
                    ltamt.Text = (sentamt - rcvdamt).ToString();

                   
                        DataSet ds = king.getdataset("select * from [Username] where [Username]='" + Request.Cookies["userName"].Value + "'");
                        DataRow dr = ds.Tables[0].Rows[0];
                        string image = "";
                        if (!(dr["image"].ToString() == "" || dr["image"].Equals(DBNull.Value)))
                        {
                            image = "./images/profile/" + dr["image"].ToString();
                        }
                        string link = king.getsitename(false) + "Profile-detail.aspx?user=" + Request.Cookies["userName"].Value;
                    string chatid = Request.Cookies["userName"].Value.ToString();
                    if (ds.Tables[0].Rows[0]["UUD"] != DBNull.Value)
                    {
                        chatid = ds.Tables[0].Rows[0]["UUD"].ToString();
                    }
                    string chat = @"<script>
                  var chat_appid = '56199';
                  var chat_auth = '1fe0643e991b23524694bd5a05624644';
                    var chat_id = '" + chatid + @"';
                    var chat_name = '" + Request.Cookies["userName"].Value.ToString() + @"';
                    var chat_avatar = '" + image + @"';
                    var chat_link = '" + link + @"';
                    var chat_role = 'User (Logged-in)';



    var chat_css = document.createElement('link'); chat_css.rel = 'stylesheet'; chat_css.type = 'text/css'; chat_css.href = 'https://fast.cometondemand.net/'+chat_appid+'x_xchat.css';
    document.getElementsByTagName(""head"")[0].appendChild(chat_css);
    var chat_js = document.createElement('script'); chat_js.type = 'text/javascript'; chat_js.src = 'https://fast.cometondemand.net/' + chat_appid + 'x_xchat.js'; var chat_script = document.getElementsByTagName('script')[0]; chat_script.parentNode.insertBefore(chat_js, chat_script);
 </script>";
                        ltchat.Text = chat;

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

        protected void lblogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Value = null;
            Response.Cookies["Email"].Value = null;

            myaccount_parent.Visible = false;
            myaccount_child.Visible = false;
            primary_side.Visible = true;

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