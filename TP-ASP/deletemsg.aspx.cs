using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class deletemsg : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cnx = new SqlConnection(cnxstr))
        {
            using (SqlCommand cmd = new SqlCommand("delete from msgs where id=@id",cnx))
            {
                cmd.Parameters.AddWithValue("@id", Request.Params[0]);
                cnx.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("messages.aspx");
            }
        }
    }
}