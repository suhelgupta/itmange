using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Library_Issubook : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        SqlDataSource1.SelectCommand = "SELECT [Id], [rollno], [bookcode], [uniquecode], [dateofissue], [dateofreturn] FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [Id] DESC";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool success = true;
        string rollno = TextBox1.Text;
        string bookcode = TextBox2.Text;
        string uniquecode = TextBox3.Text;
        bool checkcode = checkbookcode(bookcode);

        if (checkcode)
        {
            try
            {
                SqlConnection con1 = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("INSERT INTO libissubook (rollno,bookcode,uniquecode,dateofissue,dateofreturn,Retundate,fine,status) VALUES('" + rollno + "','" + bookcode + "','" + uniquecode + "','" + DateTime.Today + "','" + DateTime.Today.AddDays(7) + "','Not Returned',0,'pending')", con1);
                con1.Open();
                cmd.ExecuteNonQuery();
                con1.Close();

                success = true;
                // setting success message
                message.InnerText = "Book Added Successfully";
                success = true;
            }
            catch (Exception ex)
            {
                success = false;
                message.InnerText = "exception as "+ ex;
            }
        }
        else
        {
            success = false;
            message.InnerText = "Book Code Doesnt fount";
        }

        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        TextBox6.InnerText += "  suhel";
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        TextBox1.Text = Searchby;
        TextBox2.Text = search;

        //string query = "SELECT * from libaddbook where(" + Searchby + " like '%" + search + "%') ";
        //SqlDataSource2.SelectCommand = query;

        SqlDataSource1.SelectCommand = "SELECT[Id], [rollno], [bookcode], [uniquecode], [dateofissue], [dateofreturn] FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [Id] DESC";


        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
    }



    bool checkbookcode(string bookcode1)
    {
        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT bookcode,avquantity from libaddbook "); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();


        
        // Check Email and phone no.
        while (myReader.Read())
        {
            //checkme.InnerHtml += bookcode1+ " " + myReader["bookcode"].ToString() + "<br>";
            if (bookcode1.CompareTo(myReader["bookcode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                string avbook = myReader["avquantity"].ToString();
                int avlablebook = Convert.ToInt32(avbook);
                
                avlablebook = avlablebook - 1;
                SqlConnection con2 = new SqlConnection(cs);
                SqlCommand cmd2 = new SqlCommand("UPDATE libaddbook SET avquantity = " + avlablebook + "WHERE bookcode='"+ bookcode1 +"'", con2);
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
                return true;
            }

        }
        myReader.Close();
        con.Close(); // Just close everything



        return false;
    }
}
