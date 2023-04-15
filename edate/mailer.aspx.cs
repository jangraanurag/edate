using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Rest;
using RestSharp;
using Newtonsoft.Json.Linq;

namespace edate
{
    public partial class mailer : System.Web.UI.Page
    {
        King king = new King();
        //mysqlp msql = new mysqlp();
        sqlp psql = new sqlp();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["user"] != null)
                {
                    txtname.Text = Request.QueryString["user"].ToString();
                }
            }
        }
        protected void lbgift_Click(object sender, EventArgs e)
        {
            /*
            var client = new RestSharp.RestClient("https://api.cometondemand.net/api/v2/getMessages");


            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("api-key", "56199x1ae9a89f8a744cf536c35fbe869ebb31");
            //request.AddHeader("Cookie", "AWSELB=1D4DDD910AA5A55998F2054945C22351A919089087DA39C896F29CDB34CEFB16B13E74E6A2BCC8167A4F8544070B318CB6DE8A81A979E263E57FF558809F0FB177CADD0E18; AWSELBCORS=1D4DDD910AA5A55998F2054945C22351A919089087DA39C896F29CDB34CEFB16B13E74E6A2BCC8167A4F8544070B318CB6DE8A81A979E263E57FF558809F0FB177CADD0E18");
            request.AlwaysMultipartFormData = true;
            //request.AddParameter("UIDs", "34");
            
            IRestResponse response = client.Execute(request);

            var jObject = JObject.Parse(response.Content);
            var j = jObject["success"]["data"]["one-on-one"];
            int counter = 100;
            if(txtname.Text!="" || txtname.Text.Trim()==" ")
            {
                counter = Convert.ToInt32(txtname.Text);
            }
            for (int i = 0; i < counter; i++)
            {
                if (Convert.ToInt32(j[i]["read"]) == 0)
                {
                    string ruid = j[i]["reciever_uid"].ToString();
                    string suid = j[i]["sender_uid"].ToString();
                    if (ruid != "dineshvashu" && suid != "dineshvashu")
                    {

                        DataSet sds = msql.getdataset("SELECT * FROM wp_users where `ID`=" + suid + "  ORDER BY ID asc");
                        DataSet rds = new DataSet();
                        rds = msql.getdataset("SELECT * FROM wp_users where `ID`=" + ruid + "  ORDER BY ID asc");
                        myMail mm = new myMail();
                        if (rds.Tables[0].Rows.Count > 0)
                        {
                            if (mm.sendmail(rds.Tables[0].Rows[0]["user_email"].ToString(), "noreply@edateworld.com", sds.Tables[0].Rows[0]["display_name"].ToString(), rds.Tables[0].Rows[0]["display_name"].ToString()))
                            {
                                if (Label1.Text == "")
                                {
                                    Label1.Text = "1";
                                }
                                else
                                {
                                    Label1.Text = Convert.ToString(Convert.ToInt32(Label1.Text) + 1);

                                }
                            }
                        }
                    }
                }
            }
            
            */
        }
    }
}