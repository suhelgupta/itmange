using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teachers_Examination : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string type = DropDownList2.Text;
        string clas = DropDownList1.Text;
        string sem = DropDownList3.Text;
        string subject = TextBox2.Text;
        string date = TextBox1.Text;
        string starttime = TextBox3.Text;
        string endtime = TextBox4.Text;
        string goolink = TextBox5.Text;
        bool success = true;

        try
        {

        // connction String
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        SqlConnection con1 = new SqlConnection(cs);
        string a = "INSERT INTO examination (type,class,sem,subject,date,starttime,endtime,glink) VALUES('" + type + "','" + clas + "','" + sem + "','" + subject + "','" + date + "','" + starttime + "','" + endtime + "','" + goolink + "')";
        TextBox5.Text = a;
        SqlCommand cmd = new SqlCommand(a, con1);
        con1.Open();
        cmd.ExecuteNonQuery();
        con1.Close();

        // setting success message
        message.InnerText = "Query entered succesfully";
        }
        catch (Exception f1)
        {
            success = false;
            message.InnerText = "unable to do";
        }

        if (success)
        {

            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success", }).Concat(new string[] { "alert-success" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show", }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Success!";
        }
        else
        {
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger", }).Concat(new string[] { "alert-danger" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show" }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Error!";
        }
    }
}