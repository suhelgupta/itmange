using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("login");
        Session.Remove("cemail");
        Session.Remove("post");
        Session.Remove("fname");


        //Session["login"] = null;
        //Session["cemail"] = null;
        //Session["post"] = null;
        Response.Redirect("Login.aspx");
        //Response.Redirect("www.google.com");

    }
}