using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insider_Library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        string sqlcmd = "SELECT [Id], [bookname], [Authorname], [publicationname], [bookcode] FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ";
        SqlDataSource2.SelectCommand = sqlcmd;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        //TextBox1.Text = Searchby;
        //TextBox2.Text = search;
        SqlDataSource2.SelectCommand = "SELECT [Id], [bookname], [Authorname], [publicationname], [bookcode] FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [avquantity] DESC";

        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
    }
}