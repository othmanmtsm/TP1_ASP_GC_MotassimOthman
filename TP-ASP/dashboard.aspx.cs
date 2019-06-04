using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class dashboard : System.Web.UI.Page
{
    static string cnxstr = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    public static int regc;
    public static string usr = HttpContext.Current.User.Identity.Name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!User.Identity.IsAuthenticated)
        {
            Response.Redirect("main.aspx");
        }
        using (SqlConnection cnx = new SqlConnection(cnxstr))
        {
            using (SqlCommand cmd = new SqlCommand("select name,mjob,img,datep from participant",cnx))
            {
                cnx.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        HtmlGenericControl userr = new HtmlGenericControl();
                        userr.TagName = "li";
                        userr.InnerHtml = @"<img src='" + string.Format("data:image/Bmp;base64," + Convert.ToBase64String((byte[])dr[2])) + @"' alt='Avatar' class='img-circle pull-left avatar'>
                                    <p><a href ='#'>"+dr[0].ToString()+"</a><br/>"+dr[1].ToString()+"<span class='timestamp'>"+dr[3].ToString()+"</span></p>";
                        users.Controls.Add(userr);
                    }
                }
                else
                {
                      
                }
                dr.Close();
                cnx.Close();
                
            }
            using (SqlCommand cmd = new SqlCommand("select top 5 name,email,msgttl,msg from msgs",cnx))
            {
                cnx.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        HtmlGenericControl message = new HtmlGenericControl();
                        message.TagName = "tr";
                        message.InnerHtml = "<td>"+dr[0].ToString()+"</td><td>"+dr[1].ToString()+"</td><td>"+dr[2].ToString()+ "</td><td><p style='width: 10ch;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;'>" + dr[3].ToString()+"</p></td>";
                        msgs.Controls.Add(message);
                    }
                }
                dr.Close();
                cnx.Close();
            }
            using (SqlCommand cmd = new SqlCommand("select count(*) from participant", cnx))
            {
                cnx.Open();
                regc = Convert.ToInt32(cmd.ExecuteScalar());
            }
        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();
        Response.Redirect("main.aspx");
    }
}