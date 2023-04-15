using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace edate
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exception = Server.GetLastError();
            Response.Clear();

            HttpException httpException = exception as HttpException;

            if (httpException != null)
            {

                switch (httpException.GetHttpCode())
                {
                    case 404:
                        // page not found 
                        Response.Redirect("index.aspx");
                        break;
                  
                    default:
                        Response.Redirect("index.aspx");
                        break;
                }



                // clear error on server 
                Server.ClearError();

            }
        }
    }
}