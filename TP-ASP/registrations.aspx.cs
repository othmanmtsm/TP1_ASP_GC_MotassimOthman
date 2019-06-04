using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class registrations : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!User.Identity.IsAuthenticated)
        {
            Response.Redirect("main.aspx");
        }
        using (SqlConnection cnx = new SqlConnection(cnxstr))
        {
            using (SqlCommand cmd = new SqlCommand("select id,email,name,tel,mjob,img,datep from participant",cnx))
            {
                cnx.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        HtmlGenericControl usr = new HtmlGenericControl();
                        usr.TagName = "tr";
                        usr.InnerHtml = "<td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td><td>" + dr[3].ToString() + "</td><td>" + dr[4].ToString() + "</td><td>" + dr[6].ToString() + "</td><td><img width='70' class='img-circle pull-left avatar' src="+ string.Format("data:image/Bmp;base64," + Convert.ToBase64String((byte[])dr[5])) + "></img></td><td><a class='btn' href='accptrg.aspx?id="+dr[0].ToString()+ "'>Accept</a><a class='btn' href='denyrg.aspx?id=" + dr[0].ToString() + "'>Deny</a></td>";
                        regs.Controls.Add(usr);
                    }
                }
            }
            
        }
    }
}