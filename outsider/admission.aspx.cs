using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class outsider_admission : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if(Session["login"] != null && Session["post"] != null && Session["cemail"] != null)
            {
                if (Session["login"].ToString() == "true" && Session["post"].ToString() == "out")
                {
                    // connction String
                    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

                    try
                    {

                        SqlConnection con = new SqlConnection(cs);
                        con.Open();
                        SqlCommand myCommand = con.CreateCommand();
                        myCommand.CommandText = ("SELECT  * from Register WHERE email='" + Session["cemail"].ToString() + "'"); // Where Login is your table . UserName and Password Columns
                        SqlDataReader myReader = myCommand.ExecuteReader();
                        while (myReader.Read())
                        {
                            TextBox1.Text = myReader["fname"].ToString();
                            //TextBox1.Attributes.Add("placeholder", myReader["fname"].ToString());
                            lname.Value = myReader["lname"].ToString();
                            //lname.Attributes["placeholder"] = myReader["lanme"].ToString();
                            emailid.Value = myReader["email"].ToString();
                            stphone.Value = myReader["phone"].ToString();
                        }
                    }
                    catch
                    {

                    }
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }

            }
            else
            {
                Response.Redirect("../Login.aspx");
            }

        //}
        //    }
            
            bool checkusers = Checkuser();
            if (checkusers)
            {
                //Response.Write("<script>alert(\"Success\")</script>");
                mainform.Style.Add("display", "none");
            }
            else
            {
                //Response.Write("<script>alert(\"fail\")</script>");

            }
        }
            
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool success = true;

        // taking datas
        string fname = TextBox1.Text;
        string lnames = lname.Value;
        string yoa = "";
        string gender = "";
        if (Radio1.Checked) { yoa = "fy"; }
        if (Radio2.Checked) { yoa = "sy"; }
        if (Radio3.Checked) { yoa = "ty"; }
        if (Radio4.Checked) { gender = "Male"; }
        if (Radio5.Checked) { gender = "female"; }
        if (Radio6.Checked) { gender = "other"; }

        string emails = emailid.Value;
        string stphones = stphone.Value;
        string addresses = address.Value;
        string citys = city.Value;
        string state = inputState.Value;
        string zipcodes = zipcode.Value;
        string fathernames = fathername.Value;
        string fatheroccs = fatherocc.Value;
        string mothernames = mothername.Value;
        string motheroccs = motherocc.Value;
        string gaurnames = gaurname.Value;
        string gauroccs = gaurocc.Value;
        string annualincomes = annualincome.Value;
        string dobs = dob.Value;
        string ptphones = pno.Value;
        string gdphones = gno.Value;
        string schoolnames = schoolname.Value;
        string scmarks = marks.Value;
        string filename10 = "not uploaded";

        //file uploading
        if (FileUpload1.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/data/") + stphones + "_10th" + fileExt);
            filename10 = "../Images/data/" + stphones + "_10th" + fileExt;
        }

        string clgnames = clgname.Value;
        string clmarks = mark.Value;
        string filename12 = "Not uploaded";
        if (FileUpload2.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(FileUpload2.FileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Images/data/") + stphones + "_12th" + fileExt);
            filename12 = "../Images/data/" + stphones + "_12th" + fileExt;
        }

        //Label1.Text = "" + fname + lnames + yoa + gender + state;

       
        try
        {
            // connection 1
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            //command
            string addcmd = "";
            addcmd = "INSERT INTO addmision (fname,lname,yoa,gender,email,phone,address,city,state,zipcode,fathername,fatherocp,mothername,motherocp,gaurdianname,gaurdianocp,anualincome,dob,parntcontact,gaurdiancontact,school10th,mark10th,uploadname10,college12th,mark12th,uploadname12) VALUES(" +
                "'" + fname + "','" + lnames + "','" + yoa + "','" + gender + "','" + emails + "','" + stphones + "','" 
                + addresses + "','" + citys + "','" + state  + "','" + zipcodes + "','" + fathernames + "','" + fatheroccs + "','" 
                + mothernames + "','" + motheroccs + "','" + gaurnames + "','" + gauroccs + "','" + annualincomes + "','" + dobs 
                + "','" + ptphones + "','" + gdphones + "','" + schoolnames + "','" + scmarks + "','" + filename10 + "','"
                + clgnames + "','" + clmarks + "','" + filename12 + "')" ;
            TextBox2.Text = addcmd;
            SqlCommand cmd = new SqlCommand(addcmd, con);
            cmd.ExecuteNonQuery();
            //Label1.Text = addcmd;

            con.Close();

            message.InnerText = "Form Sucessfully Submitted";
        }
        catch(Exception f)
        {
            message.InnerText = "Unable to Subbmit the form " + f;
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

    public bool Checkuser()
    {
        try
        {

            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand myCommand = con.CreateCommand();
            myCommand.CommandText = ("SELECT  email from addmision "); // Where Login is your table . UserName and Password Columns
            SqlDataReader myReader = myCommand.ExecuteReader();
            while (myReader.Read())
            {
                if(Session["cemail"].ToString().CompareTo(myReader["email"].ToString()) == 0)
                {
                    return true;
                }
            }

        }
        catch
        {

        }
        return false;
    }

}