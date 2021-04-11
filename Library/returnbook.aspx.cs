using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Library_returnbook : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlcmd = "";
        if (!IsPostBack)
        {
            //sqlcmd = "SELECT * FROM [libissubook] ";
            //SqlDataSource1.SelectCommand = sqlcmd;

        }
        else
        {
            string Searchby = DropDownList1.SelectedValue;
            string search = TextBox7.Text;
            sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
            SqlDataSource1.SelectCommand = sqlcmd;
            //myfunc();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string roll = TextBox1.Text;
        string uniqueid = TextBox2.Text;
        bool a = checkbookcode(uniqueid);
        bool b = checkroll(roll);
        if (a == true && b == true)
        {
            //TextBox3.Text += "i am in";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand mycommand = con.CreateCommand();
            mycommand.CommandText = ("select * from libissubook "); // where login is your table . username and password columns
            SqlDataReader myreader = mycommand.ExecuteReader();
            while (myreader.Read())
            {
                //checkme.innerhtml += bookcode1+ " " + myreader["bookcode"].tostring() + "<br>";
                if (uniqueid.CompareTo(myreader["uniquecode"].ToString()) == 0) // passwordbox.text.compareto(myreader["password"].tostring()) == 0) // a little messy but does the job to compare your infos assuming your using a textbox for username and password
                {
                    string status = myreader["status"].ToString();
                    string bookcode = myreader["bookcode"].ToString();
                    //string avbook = myreader["avquantity"].ToString();
                    //int avlablebook = Convert.ToInt32(avbook);

                    //avlablebook = avlablebook + 1;
                    SqlConnection con2 = new SqlConnection(cs);
                    SqlCommand cmd2 = new SqlCommand("update libissubook set status='Returned' where uniquecode='" + uniqueid + "'", con2);
                    con2.Open();
                    cmd2.ExecuteNonQuery();
                    con2.Close();
                    decemet(bookcode);

                }

            }
        }
    }

    void decemet(string bookcode)
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand mycommand = con.CreateCommand();
        mycommand.CommandText = ("select * from libaddbook "); // where login is your table . username and password columns
        SqlDataReader myreader = mycommand.ExecuteReader();
        while (myreader.Read())
        {
            if (bookcode.CompareTo(myreader["bookcode"].ToString()) == 0) // passwordbox.text.compareto(myreader["password"].tostring()) == 0) // a little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                string avbook = myreader["avquantity"].ToString();
                int avlablebook = Convert.ToInt32(avbook);
                avlablebook = avlablebook + 1;
                SqlConnection con2 = new SqlConnection(cs);
                SqlCommand cmd2 = new SqlCommand("update libaddbook set avquantity = " + avlablebook + "where bookcode='" + bookcode + "'", con2);
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
                //TextBox3.Text += "i am decmet out";
            }

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // removing a class
        //successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        //successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        //string Searchby = DropDownList1.SelectedValue;
        //string search = TextBox7.Text;
        ////TextBox1.Text = Searchby;
        //TextBox2.Text = search;

        //string query = "SELECT * from libaddbook where(" + Searchby + " like '%" + search + "%') ";
        //SqlDataSource2.SelectCommand = query;

        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        string sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
        SqlDataSource1.SelectCommand = sqlcmd;
        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
        //myfunc();
    }

    //protected void myfunc()
    //{
    //    string Searchby = DropDownList1.SelectedValue;
    //    string search = TextBox7.Text;
    //    string sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
    //    SqlDataSource1.SelectCommand = sqlcmd;
    //    TextBox7.Text = search;
    //    DropDownList1.SelectedValue = Searchby;
    //}



    bool checkbookcode(string bookcode1)
    {
        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand mycommand = con.CreateCommand();
        mycommand.CommandText = ("select uniquecode from libissubook "); // where login is your table . username and password columns
        SqlDataReader myreader = mycommand.ExecuteReader();



        // check email and phone no.
        while (myreader.Read())
        {
            //checkme.innerhtml += bookcode1+ " " + myreader["bookcode"].tostring() + "<br>";
            if (bookcode1.CompareTo(myreader["uniquecode"].ToString()) == 0) // passwordbox.text.compareto(myreader["password"].tostring()) == 0) // a little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                //string avbook = myreader["avquantity"].ToString();
                //int avlablebook = Convert.ToInt32(avbook);

                //avlablebook = avlablebook + 1;
                //SqlConnection con2 = new SqlConnection(cs);
                //SqlCommand cmd2 = new SqlCommand("update libaddbook set avquantity = " + avlablebook + "where bookcode='" + bookcode1 + "'", con2);
                //con2.Open();
                //cmd2.ExecuteNonQuery();
                //con2.Close();
                //TextBox3.Text += "i am code out";

                return true;
            }

        }
        myreader.Close();
        con.Close(); // just close everything



        return false;
    }

    bool checkroll(string roll)
    {
        //// connection 1
        //SqlConnection con = new SqlConnection(cs);
        //con.Open();
        //SqlCommand mycommand = con.CreateCommand();
        //mycommand.CommandText = ("select Rollno from Students "); // where login is your table . username and password columns
        //SqlDataReader myreader = mycommand.ExecuteReader();

        //// check email and phone no.
        //while (myreader.Read())
        //{
        //    //checkme.innerhtml += bookcode1+ " " + myreader["bookcode"].tostring() + "<br>";
        //    if (roll.CompareTo(myreader["Rollno"].ToString()) == 0) // passwordbox.text.compareto(myreader["password"].tostring()) == 0) // a little messy but does the job to compare your infos assuming your using a textbox for username and password
        //    {
        //        //string avbook = myreader["avquantity"].ToString();
        //        //int avlablebook = Convert.ToInt32(avbook);
        //        //avlablebook = avlablebook + 1;
        //        //SqlConnection con2 = new SqlConnection(cs);
        //        //SqlCommand cmd2 = new SqlCommand("update libaddbook set avquantity = " + avlablebook + "where bookcode='" + bookcode1 + "'", con2);
        //        //con2.Open();
        //        //cmd2.ExecuteNonQuery();
        //        //con2.Close();
        //        TextBox3.Text += "i am roll out";

        //        return true;
        //    }
            

        //}
        //myreader.Close();
        //con.Close(); // just close everything



        return true;
    }


}
