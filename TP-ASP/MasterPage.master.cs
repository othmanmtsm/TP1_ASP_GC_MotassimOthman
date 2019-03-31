using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void sendMail(string msg, string to)
    {
        MailMessage message = new MailMessage();
        message.To.Add(to);
        message.Subject = "ANTIMICROBIAL RESISTANCE";
        message.From = new MailAddress("othman.motassim18@gmail.com");
        message.Body = msg;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.EnableSsl = true;
        smtp.Credentials = new NetworkCredential("evvccsample@gmail.com", "Evv123!!");
        smtp.Send(message);
    }
}
