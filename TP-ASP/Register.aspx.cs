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
using System.IO;

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
        SqlCommand cmd = new SqlCommand("insert into participant(email,name,password,tel,mjob,img) values(@email,@name,@password,@tel,@mjob,@img)", cnx);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@name", fname.Text);
        cmd.Parameters.AddWithValue("@password", pass.Text);
        cmd.Parameters.AddWithValue("@tel", tel.Text);
        cmd.Parameters.AddWithValue("@mjob", job.Text);

        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;
        string[] extentions = { ".jpg", ".png", ".jpeg", ".gif" };
        if (extentions.Contains(fileExtension.ToLower()) || fileSize < 5000000)
        {
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
            cmd.Parameters.AddWithValue("@img", bytes);
        }


        using (cnx)
        {
            try
            {
                cnx.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                email.Text = ex.Message;
            }
        }

        //MasterPage mp = (MasterPage)Page.Master;
        //mp.sendMail("Thank you for registering " + fname.Text, email.Text);

        //Response.Redirect("Schedule.aspx");

    }
}