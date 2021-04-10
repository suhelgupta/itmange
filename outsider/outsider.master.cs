using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class outsider_outsider : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] != null)
            {
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
                usename.InnerText += Session["fname"].ToString();
            }
            else
            {
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
            }
        }
        if (IsPostBack)
        {
            if (Session["login"] != null)
            {
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "inline-block");
            }
            else
            {
                withlogin.Style.Add(HtmlTextWriterStyle.Display, "none");
            }
        }
    }
}
