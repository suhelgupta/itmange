using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teachers_taddmision : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsCallback)
        {
            string SearchBy = DropDownList1.SelectedValue;
            string Search = TextBox7.Text;
            string Qurysql1 = "SELECT [Id], [dateofaddmision], [fname], [lname], [yoa], [gender], [email], [mark10th], [uploadname10], [mark12th], [uploadname12], [Status] FROM [addmision] WHERE (" + SearchBy + " LIKE '%" + Search + "%') ";
            SqlDataSource1.SelectCommand = Qurysql1;
        }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        string SearchBy = DropDownList1.SelectedValue;
        string Search = TextBox7.Text;
        string Qurysql1 = "SELECT [Id], [dateofaddmision], [fname], [lname], [yoa], [gender], [email], [mark10th], [uploadname10], [mark12th], [uploadname12], [Status] FROM [addmision] WHERE (" + SearchBy + " LIKE '%" + Search + "%') ";
        SqlDataSource1.SelectCommand = Qurysql1;
    }

    //protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    string SearchBy = DropDownList1.SelectedValue;
    //    string Search = TextBox7.Text;
    //    string Qurysql1 = "SELECT [Id], [dateofaddmision], [fname], [lname], [yoa], [gender], [email], [mark10th], [uploadname10], [mark12th], [uploadname12], [Status] FROM [addmision] WHERE (" + SearchBy + " LIKE '%" + Search + "%') ";

    //}

    protected void Unnamed1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "email")
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string s = gridview1.Rows[crow].Cells[6].Text;

            String Query = "SELECT * FROM [addmision] WHERE email = '" + s + "'";
            SqlDataSource2.SelectCommand = Query;

            string script = "window.onload = function() { openNav(); };";
            ClientScript.RegisterStartupScript(this.GetType(), "openNav", script, true);
        }

        //buttonfid.Attributes.Add("onclick", "return hideButton()")
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string SearchBy = DropDownList1.SelectedValue;
        string Search = TextBox7.Text;
        //(" + Searchby + " like '%" + search + "%') "
        string Qurysql1 = "SELECT [Id], [dateofaddmision], [fname], [lname], [yoa], [gender], [email], [mark10th], [uploadname10], [mark12th], [uploadname12], [Status] FROM [addmision] WHERE ("+ SearchBy +" LIKE '%"+Search+"%') ";
        SqlDataSource1.SelectCommand = Qurysql1;
        //Response.Redirect(Request.RawUrl);
        DropDownList1.SelectedValue = SearchBy;
         TextBox7.Text = Search;
        //buttonfid.Attributes.Add("onclick", "return hideButton()")
    }


}