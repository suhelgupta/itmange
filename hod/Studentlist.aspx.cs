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
                    SqlCommand myCommand2 = new SqlCommand("UPDATE Register SET post= 'in' where email = '"+ myReader["email"].ToString() +"'", con1);
                    myCommand1.ExecuteNonQuery();
                    myCommand2.ExecuteNonQuery();
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



    protected void Button2_Click(object sender, EventArgs e)
    {
        // Clear all content output from the buffer stream
        Response.ClearContent();
        // Specify the default file name using "content-disposition" RESPONSE header
        Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
        // Set excel as the HTTP MIME type
        Response.ContentType = "application/excel";
        // Create an instance of stringWriter for writing information to a string
        System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        // Create an instance of HtmlTextWriter class for writing markup 
        // characters and text to an ASP.NET server control output stream
        HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
        // Set white color as the background color for gridview header row
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF​");

        // Set background color of each cell of GridView1 header row
        foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129​";
        }

        // Set background color of each cell of each data row of GridView1
        foreach (GridViewRow gridViewRow in GridView1.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7​";
            }
        }

        GridView1.RenderControl(htw);
        Response.Write(stringWriter.ToString());
        Response.End();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Clear all content output from the buffer stream
        Response.ClearContent();
        // Specify the default file name using "content-disposition" RESPONSE header
        Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
        // Set excel as the HTTP MIME type
        Response.ContentType = "application/excel";
        // Create an instance of stringWriter for writing information to a string
        System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        // Create an instance of HtmlTextWriter class for writing markup 
        // characters and text to an ASP.NET server control output stream
        HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
        // Set white color as the background color for gridview header row
        GridView2.HeaderRow.Style.Add("background-color", "#FFFFFF​");

        // Set background color of each cell of GridView1 header row
        foreach (TableCell tableCell in GridView2.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129​";
        }

        // Set background color of each cell of each data row of GridView1
        foreach (GridViewRow gridViewRow in GridView2.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7​";
            }
        }

        GridView2.RenderControl(htw);
        Response.Write(stringWriter.ToString());
        Response.End();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // Clear all content output from the buffer stream
        Response.ClearContent();
        // Specify the default file name using "content-disposition" RESPONSE header
        Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
        // Set excel as the HTTP MIME type
        Response.ContentType = "application/excel";
        // Create an instance of stringWriter for writing information to a string
        System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        // Create an instance of HtmlTextWriter class for writing markup 
        // characters and text to an ASP.NET server control output stream
        HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
        // Set white color as the background color for gridview header row
        GridView3.HeaderRow.Style.Add("background-color", "#FFFFFF​");

        // Set background color of each cell of GridView1 header row
        foreach (TableCell tableCell in GridView3.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129​";
        }

        // Set background color of each cell of each data row of GridView1
        foreach (GridViewRow gridViewRow in GridView3.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7​";
            }
        }

        GridView3.RenderControl(htw);
        Response.Write(stringWriter.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
}