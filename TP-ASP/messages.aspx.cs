using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class messages : System.Web.UI.Page
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
            using (SqlCommand cmd = new SqlCommand("select id,name,email,msgttl,msg from msgs",cnx))
            {
                cnx.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    int i = 1;
                    while (dr.Read())
                    {
                        HtmlGenericControl message = new HtmlGenericControl();
                        message.TagName = "tr";
                        message.InnerHtml = "<td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td><td>" + dr[3].ToString() + "</td><td><p style='width: 10ch;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;'>" + dr[4].ToString()+"</p></td><td><button class='btn' data-toggle='modal' data-target='#mod"+i+"'>show</button></td>";
                        msgs.Controls.Add(message);

                        HtmlGenericControl shw = new HtmlGenericControl();
                        shw.TagName = "div";
                        shw.Attributes["class"] = "modal fade";
                        shw.Attributes["id"] = "mod" + i;
                        shw.Attributes["tabindex"] = "-1";
                        shw.Attributes["role"] = "dialog";
                        shw.Attributes["aria-labelledby"] = "exampleModalScrollableTitle";
                        shw.Attributes["aria-hidden"] = "true";
                            shw.InnerHtml = @"<div class='modal-dialog modal-dialog-scrollable' role='document'>
                              <div class='modal-content'>
                          <div class='modal-header'>
                            <h5 class='modal-title' id='exampleModalScrollableTitle'>"+dr[3].ToString()+@"</h5>
                            <button type = 'button' class='close' data-dismiss='modal' aria-label='Close'>
                              <span aria-hidden='true'>&times;</span>
                            </button>
                          </div>
                          <div class='modal-body'>
                            "+dr[4].ToString()+@"
                          </div>
                          <div class='modal-footer'>
                            <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
                            <a href='deletemsg.aspx?id="+dr[0].ToString()+@"' class='btn btn-danger'>Delete</a>
                          </div>
                        </div>
                      </div>";

                        pnlbd.Controls.Add(shw);

                        i++;
                    }
                }
            }
        }
    }
}