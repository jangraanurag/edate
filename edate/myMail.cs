using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace edate
{
    internal class myMail
    {
        public bool sendmail(string to,string from,string name,string name2)
        {
            try
            {
                string htmlString = "Dear "+name2+"<br/>, You have recieved a new message from "+name+ ". Check Message at <a href='https://edateworld.com'>Edateworld</a>.<br/><br/>With Best Wishes<br/>Edateworld<br/><img src='https://edateworld.com/wp-content/uploads/2021/08/edate_logo-1.png' height='100px'/>";
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress(from);
                message.To.Add(new MailAddress(to));
                message.Subject = "A New Message - Edateworld";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = htmlString;
                smtp.Port = 587;
                smtp.Host = "smtp.sendgrid.net"; //for gmail host  
                smtp.EnableSsl = false;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("apikey", "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");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
