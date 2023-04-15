using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RestSharp;
using Newtonsoft.Json.Linq;

namespace edate
{
    
    public partial class Profile_detail : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = "";
            //Response.Cookies["userName"].Value = "jangraanurag";
            if(Request.Cookies["userName"] !=null)
            {
                user = Request.Cookies["userName"].Value;
            }
            if(Request.QueryString["user"]!=null)
            {
                user = Request.QueryString["user"].ToString();   
            }
            if (user != "" && user!=null)
            {
                DataSet ds = king.getdataset("select *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as [nimg] from [Username] where [Username]='" + user + "'");
                if(ds.Tables[0].Rows.Count > 0)
                {
                    DataRow dr = ds.Tables[0].Rows[0];
                    if(!dr["About Me"].Equals(DBNull.Value))
                    ltabout.Text = dr["About Me"].ToString();
                    if (!dr["DOB"].Equals(DBNull.Value))
                    {
                        DateTime dob = Convert.ToDateTime(dr["DOB"]);
                        ltage.Text = CalculateYourAge(dob);
                        ltage1.Text = ltage.Text;
                        ltdob.Text = dob.ToString("dd MMMM, yyyy");
                        ltdob1.Text= dob.ToString("dd MMMM, yyyy");
                    }
                    if (!dr["Country"].Equals(DBNull.Value))
                    {
                        
                        ltcountry.Text = dr["Country"].ToString();
                    }
                    if (!dr["Diet"].Equals(DBNull.Value))
                    {

                        ltdiet.Text = dr["Diet"].ToString();
                    }
                    if (!dr["Education"].Equals(DBNull.Value))
                    {

                        ltedu.Text = dr["Education"].ToString();
                    }
                    if (!dr["Eye Colour"].Equals(DBNull.Value))
                    {

                        lteyecolor.Text = dr["Eye Colour"].ToString();
                    }
                    if (!dr["Gender"].Equals(DBNull.Value))
                    {

                        ltgender.Text = dr["Gender"].ToString();
                    }
                    if (!dr["Height"].Equals(DBNull.Value))
                    {

                        ltheight.Text = dr["Height"].ToString();
                    }
                    if (!dr["Language"].Equals(DBNull.Value))
                    {

                        ltlang.Text = dr["Language"].ToString();
                    }
                    if (!dr["Looking For a"].Equals(DBNull.Value))
                    {

                        ltlook.Text = dr["Looking For a"].ToString();
                    }
                    if (!dr["Marital Status"].Equals(DBNull.Value))
                    {

                        ltmarital.Text = dr["Marital Status"].ToString();
                    }
                    if (!dr["Name"].Equals(DBNull.Value))
                    {

                        ltname.Text = dr["Name"].ToString();
                    }
                    if (!dr["Relationship"].Equals(DBNull.Value))
                    {

                        ltrelation.Text = dr["Relationship"].ToString();
                    }
                    if (!dr["smoke"].Equals(DBNull.Value))
                    {
                        int smoke = Convert.ToInt32(dr["smoke"]);
                        if(smoke==0)
                        ltsmoke.Text = "No";
                        ltsmoke.Text = "Yes";

                    }
                    if (!dr["Work as"].Equals(DBNull.Value))
                    {

                        ltworkas.Text = dr["Work as"].ToString();
                    }
                    if(!dr["image"].Equals(DBNull.Value))
                    {
                        myimg.Src =dr["nimg"].ToString();
                      
                    }

                    if(dr["UUD"]!=DBNull.Value)
                    {
                        hlmsg.NavigateUrl = "javascript:jqcc.cometchat.launch({uid:'"+dr["UUD"].ToString()+"'});";
                    }
                    else
                    {
                        hlmsg.NavigateUrl = "javascript:jqcc.cometchat.launch({uid:'" + user + "'});";

                    }
                }
            }

            int scounter = 0;
            int rcounter = 0;
            int ucounter = 0; /*
           List<List<string>> messages = getrcvdmessages(user);
            if (messages.Count>0)
            {
                foreach(List<string> msg in messages)
                {
                    if(msg[0]==user)
                    {
                        rcounter++;
                        if(msg[3]=="0")
                        {

                            ucounter++;
                        }
                    }
                    if (msg[1] == user)
                    {
                        scounter++;


                    }
                 
                }
                lturmsg.Text = ucounter.ToString();
                ltsmsg.Text = scounter.ToString();
                ltallmsg.Text = messages.Count.ToString();
            }
            */
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

            return $"{_Years} Years {_Months} Months {Days} Days";
        }


        public List<List<string>> getrcvdmessages(string user)
        {
            
            List<List<string>> messages = new List<List<string>>();


            var client = new RestSharp.RestClient("https://api.cometondemand.net/api/v2/getMessages");


            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("api-key", "38459b57ee2cc3591cb1b829b62fe08de89ca92c");
            //request.AddHeader("Cookie", "AWSELB=1D4DDD910AA5A55998F2054945C22351A919089087DA39C896F29CDB34CEFB16B13E74E6A2BCC8167A4F8544070B318CB6DE8A81A979E263E57FF558809F0FB177CADD0E18; AWSELBCORS=1D4DDD910AA5A55998F2054945C22351A919089087DA39C896F29CDB34CEFB16B13E74E6A2BCC8167A4F8544070B318CB6DE8A81A979E263E57FF558809F0FB177CADD0E18");
            request.AlwaysMultipartFormData = true;
            request.AddParameter("UIDs", user);

            IRestResponse response = client.Execute(request);

            var jObject = JObject.Parse(response.Content);
            var j = jObject["success"]["data"][user]["one-on-one"];
            int counter = j.Count();
            
            for (int i = 0; i < counter; i++)
            {
               
                    string ruid = j[i]["reciever_uid"].ToString();
                    string suid = j[i]["sender_uid"].ToString();
                    string read = j[i]["read"].ToString();
                string message= j[i]["message"].ToString();
                string message_id = j[i]["message_id"].ToString();
                string timestamp = j[i]["timestamp"].ToString();
                List<string> msg= new List<string>();
                msg.Add(ruid);
                msg.Add(suid);
                msg.Add(read);
                msg.Add(message);
                msg.Add(message_id);
                msg.Add(timestamp);
                messages.Add(msg);



            }
            return messages;


        }
    }
}