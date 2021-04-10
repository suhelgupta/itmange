using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["post"] != null)
        {
            if(Session["post"].ToString() == "out")
            {
                MasterPageFile = "~/outsider/outsider.master";
            }
            if (Session["post"].ToString() == "in")
            {
                MasterPageFile = "~/Insider/Insider.master";
            }
            if (Session["post"].ToString() == "tec")
            {
                MasterPageFile = "~/teachers/teachers.master";
            }
            if (Session["post"].ToString() == "lib")
            {
                MasterPageFile = "~/Library/Library..master";
            }
            if (Session["post"].ToString() == "out")
            {
                MasterPageFile = "~/outsider/outsider.master";
            }

        }
    }
}