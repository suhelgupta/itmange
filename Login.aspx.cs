using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        string email = TextBox1.Text;
        string password = TextBox2.Text;
        //string uniqueID = TextBox3.Text;
        string tablename = "";
        string redrict = "";
        string posts = postss.Value;
        bool login = false;
        string post = "";
        string fname = "";
        string roll = "";


        //encording the password
        byte[] EncodePass = Encoding.UTF8.GetBytes(TextBox1.Text);
        string Epassword = Convert.ToBase64String(EncodePass);

        // select the table name
        if(posts == "1") { tablename = "Register"; redrict = "/outsider/Home.aspx"; post = "out";  }
        else if(posts == "2") { tablename = "Register"; redrict = "/Insider/Home.aspx"; post = "in"; }
        else if (posts == "3") { tablename = "staf"; redrict = "/Library/Home.aspx"; post = "lib"; }
        else if (posts == "4") { tablename = "staf"; redrict = "/outsider/Home.aspx"; post = "hod"; }
        else if (posts == "5") { tablename = "staf"; redrict = "/teachers/Home.aspx"; post = "tec"; }
        else { ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please select the post')", true); }

        // connction String
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        try
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand myCommand = con.CreateCommand();
            myCommand.CommandText = ("SELECT email, Password, fname from "+ tablename); // Where Login is your table . UserName and Password Columns
            SqlDataReader myReader = myCommand.ExecuteReader();

            // Check Email and phone no.
            while (myReader.Read())
            {
                if (email.CompareTo(myReader["email"].ToString()) == 0 && password.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
                {
                    if (post == "in")
                    {
                        roll = checkeroll(email);
                        if (roll == "not found")
                        {
                            login = false;
                            break;
                            //Response.Write("<script>alert(\"It seems you are not the insider member\")</script>");
                        }
                    }
                    login = true;
                    fname = myReader["fname"].ToString();

                }
            }
            myReader.Close();
            con.Close(); // Just close 
        }
        catch(Exception )
        {
            
        }

        if (login)
        {
            //TextBox1.Text = "Login sucess" + fname;
            Session["login"] = "true";
            Session["cemail"] = email;
            Session["post"] = post;
            Session["fname"] = fname;
            Session["roll"] = roll;

            Session.Timeout = 10;
            Response.Redirect(""+redrict);
        }
        else
        {
            //    MessageBox.Show("Invalid UserName or Password", "Access Denied"); // Error message
            //    TextBox1.Text = "Login fail" + password;
            Response.Write("<script>alert(\"Please enter the correct user id password and type\")</script>");
        }
    }

    string checkeroll(string email)
    {
        // connction String
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT Rollno fname from Students where email = '" + email + "'"); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();
        // Check Email and phone no.
        while (myReader.Read())
        {
            if (email.CompareTo(myReader["email"].ToString()) == 0)
            {
                return myReader["Rollno"].ToString();
            }
        }

        return "not found";
    }
 }


   