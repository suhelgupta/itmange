using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class Library_AddBooks : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        string sqlcmd = "SELECT * FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ";
        SqlDataSource1.SelectCommand = sqlcmd;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int count;
        bool success = true;
        string bookname = TextBox1.Text;
        string authorname = TextBox2.Text;
        string publication = TextBox3.Text;
        string bookid = TextBox4.Text;
        string quantity = TextBox5.Text;
        count = Convert.ToInt16(quantity);
        int checkexist = checktotalbook(bookid);
        TextBox6.InnerText = checkexist.ToString();

        if (checkexist == 0)
        {
            try
            {
                // Making Connection to database
                // connection 2 ---------- connection string is present at the top of the page
                SqlConnection con1 = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("INSERT INTO libaddbook (bookname,Authorname,publicationname,bookcode,totalquantity,avquantity) VALUES('" + bookname + "','" + authorname + "','" + publication + "','" + bookid + "'," + count + "," + count + ")", con1);
                con1.Open();
                cmd.ExecuteNonQuery();
                con1.Close();

                success = true;
                // setting success message
                message.InnerText = "Book Added Successfully";
                TextBox6.InnerText += "sucess";

            }
            catch (Exception f)
            {
                string er = f.Message;
                message.InnerText = er;
                success = false;
            }
        }
        else
        {
            int count1 = count + checkexist;
            try
            {
                // Making Connection to database
                // connection 3 ---------- connection string is present at the top of the page
                SqlConnection con2 = new SqlConnection(cs);
                //SqlConnection con3 = new SqlConnection(cs);
                
                SqlCommand cmd2 = new SqlCommand("UPDATE libaddbook SET totalquantity ="+ count1 + ",avquantity=avquantity+" + count + " WHERE bookcode='" + bookid + "'", con2);
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();

                success = true;

                // setting success message
                message.InnerText = "Book Added Successfully";

            }
            catch (Exception f1)
            {
                string er1 = f1.Message;
                message.InnerText = er1;
                success = false;
            }
        }

        TextBox6.InnerText += " sucess2";

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

    int checktotalbook(string bookid)
    {
        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT bookcode,totalquantity from libaddbook "); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();

        // Check Email and phone no.
        while (myReader.Read())
        {
            if (bookid.CompareTo(myReader["bookcode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                string totalbook = myReader["totalquantity"].ToString();
                return Convert.ToInt16(totalbook);
            }

        }
        myReader.Close();
        con.Close(); // Just close everything
        return 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        //TextBox1.Text = Searchby;
        //TextBox2.Text = search;
        SqlDataSource1.SelectCommand = "SELECT * FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [avquantity] DESC";


        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
        //string sqlcmd = "SELECT * FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ";



    }


    //protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    //{

    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{

    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    dt.Rows.RemoveAt(e.RowIndex);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //}

    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    GridView1.EditIndex = e.NewEditIndex;

    //}

    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string Searchby = DropDownList1.SelectedValue;
    //    string search = TextBox7.Text;
    //    SqlDataSource1.SelectCommand = "SELECT * FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [avquantity] DESC";
    //}

    //protected void TextBox7_TextChanged(object sender, EventArgs e)
    //{
    //    string Searchby = DropDownList1.SelectedValue;
    //    string search = TextBox7.Text;
    //    SqlDataSource1.SelectCommand = "SELECT * FROM [libaddbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [avquantity] DESC";

    //}
}