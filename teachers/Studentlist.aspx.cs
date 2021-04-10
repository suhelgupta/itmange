using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teachers_Studentlist : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        bool success = true;
        try
        {

            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand myCommand = con.CreateCommand();
            myCommand.CommandText = ("SELECT  * from addmision WHERE Status = 'Confirm' and dateofaddmision like ('%"+ DateTime.Now.Year +"%')"); 
            SqlDataReader myReader = myCommand.ExecuteReader();
            while (myReader.Read())
            {
                //bool status = false;
                bool status = checkstudent(myReader["email"].ToString());

                if (!status)
                {
                    SqlConnection con1 = new SqlConnection(cs);
                    con1.Open();
                    SqlCommand myCommand1 = new SqlCommand("INSERT INTO Students (year,class,fname,lname,email,phone) VALUES('" + DateTime.Now.Year + "','" + myReader["yoa"].ToString() + "','" + myReader["fname"].ToString() + "','" + myReader["lname"].ToString() + "','" + myReader["email"].ToString() + "','" + myReader["phone"].ToString() + "')", con1);
                    myCommand1.ExecuteNonQuery();
                    con1.Close();
                    message.InnerText = "Form UpDAted Sucessfully ";
                }
                else
                {
                    success = false;
                    message.InnerText = "There Is Nothing to UPdate";
                }

            }

            myReader.Close();
            con.Close();
    }
        catch (Exception f)
        {
            message.InnerText = "Unable to Update the form the form please Contact to developer " + f;
            success = false;
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

    protected bool checkstudent(string email)
    {
        SqlConnection con2 = new SqlConnection(cs);
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT email FROM Students" , con2);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            if(email.CompareTo(rd["email"].ToString()) == 0)
            {
                con2.Close();
                rd.Close();
                return true;
            }
        }
        return false;
    }


}