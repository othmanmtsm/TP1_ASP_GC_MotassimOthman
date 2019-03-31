using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["pCnx"].ConnectionString;
    SqlConnection cnx = new SqlConnection(cnxstr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into msgs(name,email,msgttl,msg) values(@name,@email,@msgttl,@msg)", cnx);
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@email", textMail.Text);
        cmd.Parameters.AddWithValue("@msgttl", txtMsgT.Text);
        cmd.Parameters.AddWithValue("@msg", txtMessage.Text);
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
        mp.sendMail("your message has been successfully sent !", textMail.Text);
    }
}