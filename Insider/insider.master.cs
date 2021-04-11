using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insider_insider : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] != null && Session["post"] != null && Session["cemail"] != null)
            {
                if (Session["login"].ToString() == "true" && Session["post"].ToString() == "in")
                {
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }

        if (!IsPostBack)
        {
            if (Session["login"] != null)
            {
                withoutlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
                usename.InnerText += Session["fname"].ToString();
            }
            else
            {
                withoutlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
            }
        }
        if (IsPostBack)
        {
            if (Session["login"] != null)
            {
                withoutlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
            }
            else
            {
                withoutlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
            }
        }
    }
}
