using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class step : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if(Request.Cookies["userName"].Value!=null)
                {
                    DataSet ds = king.getdataset("select * from [Username] where [Username]='"+ Request.Cookies["userName"].Value+"'");
                    if(ds.Tables[0].Rows.Count>0)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];
                        if(!dr["Name"].Equals(DBNull.Value))
                        {
                            txtname.Text = dr["Name"].ToString();
                        }
                        if (!dr["Email"].Equals(DBNull.Value))
                        {
                            txtemail.Text = dr["Email"].ToString();
                        }
                        if (!dr["City"].Equals(DBNull.Value))
                        {
                            txtcity.Text = dr["City"].ToString();
                        }
                        if (!dr["State"].Equals(DBNull.Value))
                        {
                            txtstate.Text = dr["State"].ToString();
                        }
                        if (!dr["Country"].Equals(DBNull.Value))
                        {
                            txtcountry.Text = dr["Country"].ToString();
                        }
                        if (!dr["Gender"].Equals(DBNull.Value))
                        {
                            if(dr["Gender"].ToString().ToLower()=="male")
                            {
                                rdomale.Checked=true;
                            }
                            else
                            {
                                rdofemale.Checked = true;
                            }
                        }
                        if (!dr["Education"].Equals(DBNull.Value))
                        {
                            txtedu.Text = dr["Education"].ToString();
                        }
                        if (!dr["Height"].Equals(DBNull.Value))
                        {
                            txtheight.Text = dr["Height"].ToString();
                        }
                        if (!dr["DOB"].Equals(DBNull.Value))
                        {
                            txtdob.Text = dr["DOB"].ToString();
                        }
                        if (!dr["Smoke"].Equals(DBNull.Value))
                        {
                            if (dr["Smoke"].ToString() == "0")
                                chksmoke.Checked = false;
                            else
                                chksmoke.Checked = true;
                        }
                        if (!dr["Relationship"].Equals(DBNull.Value))
                        {
                            if (dr["Relationship"].ToString() == "0")
                                chkrelationship.Checked = false;
                            else
                                chkrelationship.Checked = true;
                        }
                        if (!dr["Eye Colour"].Equals(DBNull.Value))
                        {
                            ddleyecolor.Text = dr["Eye Colour"].ToString();
                        }
                        if (!dr["Marital Status"].Equals(DBNull.Value))
                        {
                            ddlmarital.SelectedIndex = Convert.ToInt32(dr["Marital Status"].ToString());
                        }
                        if (!dr["Work as"].Equals(DBNull.Value))
                        {
                            txtworkas.Text = dr["Work as"].ToString();
                        }
                        if (!dr["Diet"].Equals(DBNull.Value))
                        {
                            ddldiet.Text = dr["Diet"].ToString();
                        }
                        if (!dr["Kids"].Equals(DBNull.Value))
                        {
                            txtkids.Text = dr["Kids"].ToString();
                        }
                        if (!dr["About Me"].Equals(DBNull.Value))
                        {
                            txtaboutme.Text = dr["About Me"].ToString();
                        }
                        if (!dr["image"].Equals(DBNull.Value))
                        {
                            hdnimage.Value= dr["image"].ToString();
                            Image1.ImageUrl = "/images/profile/" + hdnimage.Value;
                        }

                        //DataRow dr = ds.Tables[0].Rows[0];
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

                    }

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

        protected void lbupload_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string myfile = DateTime.Now.ToString("ddMMyyhhmmssk")+System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("/images/profile/" + myfile));
                Image1.ImageUrl = "/images/profile/" + myfile;
                hdnimage.Value = myfile;
            }
        }

        protected void lbupdate_Click(object sender, EventArgs e)
        {
            string gender = "";
            if (rdofemale.Checked)
                gender = "Female";
            if (rdomale.Checked)
                gender = "Male";
            int smoke = 0;
            if (chksmoke.Checked)
                smoke = 1;
            string relation = "Yes";
            if (chkrelationship.Checked)
                relation = "No";
            string uname = Request.Cookies["userName"].Value;
            if (king.execquery("update [Username] set [Name]='"+txtname.Text+"',[Email]='"+txtemail.Text+"',[City]='"+txtcity.Text+"',[State]='"+txtstate.Text+"',[Country]='"+txtcountry.Text+"',[Gender]='"+gender+"',[Education]='"+txtedu.Text+"',[Language]='"+ddllang.Text+"',[Height]='"+txtheight.Text+"',[DOB]='"+txtdob.Text+"',[Smoke]="+smoke+",[Relationship]='"+relation+"',[Eye Colour]='"+ddleyecolor.Text+"',[Looking For a]='"+ddllooking.Text+"',[Marital Status]="+ddlmarital.SelectedIndex+",[Work as]='"+txtworkas.Text+"',[Diet]='"+ddldiet.Text+"',[Kids]="+txtkids.Text+",[About Me]='"+txtaboutme.Text+"',[image]='"+hdnimage.Value+"' where [Username]='"+uname +"'"))
            {

                Response.Redirect("Profile-detail.aspx");
            }
        }
    }
}