using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class Register : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    SqlConnection cnx = new SqlConnection(cnxstr);

    public object MasterPageClassName { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into participant(email,name,password,tel,mjob) values(@email,@name,@password,@tel,@mjob)", cnx);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@name", fname.Text);
        cmd.Parameters.AddWithValue("@password", pass.Text);
        cmd.Parameters.AddWithValue("@tel", tel.Text);
        cmd.Parameters.AddWithValue("@mjob", job.Text);
        using (cnx)
        {
            try
            {
                cnx.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error while inserting data " + ex.Message);
            }
        }

        MasterPage mp = (MasterPage)Page.Master;
        mp.sendMail("Thank you for registering " + fname.Text, email.Text);

        Response.Redirect("Schedule.aspx");

    }
}