using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    public partial class Main : System.Web.UI.MasterPage
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                if (Request.Cookies["userName"] != null)
                {
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
                        string chatid = Request.Cookies["userName"].Value.ToString();
                        if(ds.Tables[0].Rows[0]["UUD"] != DBNull.Value)
                        {
                            chatid= ds.Tables[0].Rows[0]["UUD"].ToString();
                        }
               /*          string chat = @"<script>
                   var chat_appid = '235524fe468ee74f';
                   var chat_auth = '6c18835637b6cdc2de4c71fe8f4f927f71623d98';
                     var chat_id = '" + chatid + @"';
                     var chat_name = '" + Request.Cookies["userName"].Value.ToString() + @"';
                     var chat_avatar = '" + image + @"';
                     var chat_link = '" + link + @"';
                     var chat_role = 'User (Logged-in)';



     var chat_css = document.createElement('link'); chat_css.rel = 'stylesheet'; chat_css.type = 'text/css'; chat_css.href = 'https://fast.cometondemand.net/'+chat_appid+'x_xchat.css';
     document.getElementsByTagName(""head"")[0].appendChild(chat_css);
     var chat_js = document.createElement('script'); chat_js.type = 'text/javascript'; chat_js.src = 'https://fast.cometondemand.net/' + chat_appid + 'x_xchat.js'; var chat_script = document.getElementsByTagName('script')[0]; chat_script.parentNode.insertBefore(chat_js, chat_script);
  </script>";*/
                       string chat = @"<div id='cometchat'></div>
    <script>
    window.addEventListener('DOMContentLoaded', (event) => {
       CometChatWidget.init({
  appID: '235524fe468ee74f',
  appRegion: 'eu',
  authKey: '6c18835637b6cdc2de4c71fe8f4f927f71623d98',
}).then((response) => {

  /**
   * Create user once initialization is successful
   */
  const user = new CometChatWidget.CometChat.User('"+chatid+@"');
  user.setName('"+ Request.Cookies["userName"].Value.ToString() + @"');
  /*user.setAvatar('"+image+@"');*/
  user.setLink('"+link+@"');
  CometChatWidget.createOrUpdateUser(user).then((user) => {

    // Proceed with user login
    CometChatWidget.login({
      uid: '"+chatid+ @"',
    }).then((loggedInUser) => {

      // Proceed with launching your Chat Widget
      CometChatWidget.launch({
 'widgetID': ' 961f0004-448d-4a5f-83db-734f2fd47872',
                    'docked': 'true',
                    'alignment': 'left',
                    'roundedCorners': 'true',
                    'height': '600px',
                    'width': '800px',
                    'defaultID': '"+chatid+ @"', //default UID (user) or GUID (group) to show,
                    'defaultType': 'default' //user or group
        // Embedded or docked layout configuration
      })
    });
  });
});
        });

    </script> ";
                         ltchat.Text = chat;
                        //ltchat.Text = "";
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
    }
}