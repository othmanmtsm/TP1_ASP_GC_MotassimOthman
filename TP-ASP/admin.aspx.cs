using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var userStore = new UserStore<IdentityUser>();
        var userManager = new UserManager<IdentityUser>(userStore);

        var user = userManager.Find(txtName.Text, txtPassword.Text);

        if (user != null)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            Response.Redirect("~/dashboard.aspx");
        }
        else
        {
            Msg.Text = "Invalid username or password";
            LoginStatus.Visible = true;
        }
    }
}