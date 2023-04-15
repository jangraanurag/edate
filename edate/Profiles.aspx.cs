using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace edate
{
    
    public partial class Profiles : System.Web.UI.Page
    {
        King king=new King();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["seek"] != null)
                {
                    DateTime curent_date = DateTime.Now;
                    string toage = Request.QueryString["toage"].ToString();
                    if(Request.QueryString["toage"].ToString()=="65+")
                    {
                        toage = "150";
                    }
                    string frmage = Request.QueryString["frmage"].ToString();
                    if (Request.QueryString["frmage"].ToString()=="65+")
                    {
                        frmage = "150";
                    }
                    DateTime startdate = DateTime.Now.AddYears(Convert.ToInt32("-" + frmage));
                    DateTime enddate = DateTime.Now.AddYears(Convert.ToInt32("-" + toage));
                    string seek = Request.QueryString["seek"].ToString();
                    if(seek.ToLower()=="man" || seek.ToLower() == "men")
                    {
                        seek = "Male";
                    }
                    else
                    {
                        seek = "Female";
                    }
                    king.rptr_load(rptrlastadded, "select Top 8 *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as [nimg] from [Username] where [Gender]='" + seek+"' and [DOB]>='"+enddate.ToString("yyyy-MM-dd")+ "' and [DOB]<='" + startdate.ToString("yyyy-MM-dd") + "' and [image]<>'' order by [createdDate] desc");
                    king.rptr_load(rptractive, "select Top 8 *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as nimg from [Username] where [image] is not null and [Gender]='" + seek + "' and [DOB]>='" + enddate.ToString("yyyy-MM-dd") + "' and [DOB]<='" + startdate.ToString("yyyy-MM-dd") + "' and [image]<>'' order by [createdDate] desc");
                    king.rptr_load(rptrprof, "select *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as nimg from [Username] where [Gender]='" + seek + "' and [DOB]>='" + enddate.ToString("yyyy-MM-dd") + "' and [DOB]<='" + startdate.ToString("yyyy-MM-dd") + "' and [image]<>'' order by [createdDate] desc");
                }
                else
                {
                    king.rptr_load(rptrlastadded, "select Top 8 *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as nimg from [Username] where [image]<>'' order by [createdDate] desc");
                    king.rptr_load(rptractive, "select Top 8 *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as nimg from [Username] where [image] is not null and [image]<>'' order by [createdDate] desc");
                    king.rptr_load(rptrprof, "select *,iif(len([Image])<40,concat('images/profile/',[Image]),[Image]) as nimg from [Username] and [image]<>''  order by [createdDate] desc");
                }

            }
        }

        protected void rptractive_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            HiddenField hf = (HiddenField)e.Item.FindControl("hdndob");
            DateTime dt=Convert.ToDateTime(hf.Value);
            Literal lt = (Literal)e.Item.FindControl("ltage");
            lt.Text=CalculateYourAge(dt);
        }

        protected void rptrlastadded_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            HiddenField hf = (HiddenField)e.Item.FindControl("hdndob");
            DateTime dt = Convert.ToDateTime(hf.Value);
            Literal lt = (Literal)e.Item.FindControl("ltage");
            lt.Text = CalculateYourAge(dt);
        }

        protected void rptrprof_ItemDataBound(object sender, RepeaterItemEventArgs e)
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