using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class accptrg : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cnx = new SqlConnection(cnxstr))
        {
            using (SqlCommand cmd = new SqlCommand("select email from participant where id=@id",cnx))
            {
                cmd.Parameters.AddWithValue("@id", Request.Params[0]);
                cnx.Open();
                string to = cmd.ExecuteScalar().ToString();
                MailMessage message = new MailMessage();
                message.To.Add(to);
                message.Subject = "ANTIMICROBIAL RESISTANCE";
                message.From = new MailAddress("evvccsample@gmail.com");
                message.Body = "You've been accepted to the event";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("evvccsample@gmail.com", "Evv123!!");
                smtp.Send(message);
            }
        }
        Response.Redirect("registrations.aspx");
    }
}