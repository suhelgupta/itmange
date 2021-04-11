using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hod_Managestaf : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string fname = TextBox1.Text;
        string lname = TextBox2.Text;
        string email = TextBox3.Text;
        string phone = TextBox4.Text;
        string rool  = TextBox5.Text;
        string  password = TextBox6.Text;

        bool success = false;

        try
        {
            // Making Connection to database
            // connection 2 ---------- connection string is present at the top of the page
            SqlConnection con1 = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("INSERT INTO staf (fname,lname,email,phone,role,password) VALUES('" + fname + "','" + lname + "','" + email + "','" + phone + "','" + rool + "','" + password + "')", con1);
            con1.Open();
            cmd.ExecuteNonQuery();
            con1.Close();

            success = true;
            // setting success message
            message.InnerText = "Staff Added Successfully";
            //TextBox6.InnerText += "sucess";

        }
        catch (Exception f)
        {
            string er = f.Message;
            message.InnerText = er;
            success = false;
        }

        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        //TextBox6.InnerText += "  suhel";
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