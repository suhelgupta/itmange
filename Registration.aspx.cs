using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        // making bool
        bool checkemail = false , checkphone = false;
        bool success = true;

        // Reteriving Registration Data
        String fname = TextBox1.Text;
        String lname = TextBox2.Text;
        String mobile = TextBox3.Text;
        String email = TextBox4.Text;
        String password = TextBox5.Text;

        // Encoding Password
        byte[] EncodePass = Encoding.UTF8.GetBytes(TextBox1.Text);
        string ThePass = Convert.ToBase64String(EncodePass);

        
        // connction String
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT email, phone from Register"); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();

        // Check Email and phone no.
        while (myReader.Read())
        {
            if (email.CompareTo(myReader["email"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                checkemail = true;
            }
            if (mobile.CompareTo(myReader["phone"].ToString()) == 0)
            {
                checkphone = true;
            }
        }

        myReader.Close();
        con.Close(); // Just close everything

        if (checkemail == true)
        {

            message.InnerText = "Email Id Already Exist";
            success = false;
        }
        else
        {
            //MessageBox.Show("Invalid UserName or Password", "Access Denied"); // Error message

            if (checkphone)
            {
                message.InnerText = "Phone Number Already Exist";
                success = false;
            }
            else
            {
                try
                {
                    // Making Connection to database
                    // connection 2 ---------- connection string is present at the top of the page
                    SqlConnection con1 = new SqlConnection(cs);
                    SqlCommand cmd = new SqlCommand("INSERT INTO Register (fname,lname,email,phone,password) VALUES('" + fname + "','" + lname + "','" + email + "','" + mobile + "','" + password + "')", con1);
                    con1.Open();
                    cmd.ExecuteNonQuery();
                    con1.Close();

                    // setting success message
                    message.InnerText = "Query entered succesfully";

                }
                catch (Exception f)
                {
                    string er = f.Message;
                    //TextBox7.Text = er;
                    message.InnerText = f.Message;
                    success = false;
                }
            
            }
        }

        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        
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

    //byte[] EncodeName = Encoding.UTF8.GetBytes(TextBox1.Text);
}