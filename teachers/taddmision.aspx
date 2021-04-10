<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teachers.master" AutoEventWireup="true" CodeFile="taddmision.aspx.cs" Inherits="teachers_taddmision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Addmission Form</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.    5.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <style>
        .form-check .form-check-input {
            float: center;
        }

        /* The Overlay (background) */
        .overlay {
            /* Height & width depends on how you want to reveal the overlay (see JS below) */
            height: 100vh;
            width: 0;
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            background-color: rgb(0,0,0); /* Black fallback color */
            background-color: rgba(0,0,0, 0.9); /* Black w/opacity */
            overflow-x: hidden; /* Disable horizontal scroll */
            transition: 0.5s; /* 0.5 second transition effect to slide in or slide down the overlay (height or width, depending on reveal) */
        }

        /* Position the content inside the overlay */
        .overlay-content {
            position: relative;
            top: 5%; /* 25% from the top */
            left: 40%;
            width: 100%; /* 100% width */
            text-align: center; /* Centered text/links */
            margin-top: 30px; /* 30px top margin to avoid conflict with the close button on smaller screens */
        }

        /* The navigation links inside the overlay */
        .overlay .ab {
            padding: 8px;
            text-decoration: none;
            font-size: 36px;
            color: #818181;
            display: block; /* Display block instead of inline */
            transition: 0.3s; /* Transition effects on hover (color) */
        }

            /* When you mouse over the navigation links, change their color */
            .overlay .ab:hover, .overlay .ab:focus {
                color: #f1f1f1;
            }

        /* Position the close button (top right corner) */
        .overlay .closebtn {
            position: absolute;
            top: 20px;
            right: 45px;
            font-size: 60px;
        }

        /* When the height of the screen is less than 450 pixels, change the font-size of the links and position the close button again, so they don't overlap */
        @media screen and (max-height: 450px) {
            .overlay .ab {
                font-size: 20px;
            }

            .overlay .closebtn {
                font-size: 40px;
                top: 15px;
                right: 35px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <asp:scriptmanager runat="server"></asp:scriptmanager>
        <div id="myNav" class="overlay">

            <!-- Button to close the overlay navigation -->
            <a href="javascript:void(0)" class="closebtn ab" onclick="closeNav()">&times;</a>

                        <!-- Overlay content -->
            <div class="overlay-content">
            <asp:detailsview runat="server" height="50px" width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" AutoGenerateRows="False" DataKeyNames="Id">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="dateofaddmision" HeaderText="dateofaddmision" SortExpression="dateofaddmision" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="yoa" HeaderText="yoa" SortExpression="yoa" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
                    <asp:BoundField DataField="fathername" HeaderText="fathername" SortExpression="fathername" />
                    <asp:BoundField DataField="fatherocp" HeaderText="fatherocp" SortExpression="fatherocp" />
                    <asp:BoundField DataField="mothername" HeaderText="mothername" SortExpression="mothername" />
                    <asp:BoundField DataField="motherocp" HeaderText="motherocp" SortExpression="motherocp" />
                    <asp:BoundField DataField="gaurdianname" HeaderText="gaurdianname" SortExpression="gaurdianname" />
                    <asp:BoundField DataField="gaurdianocp" HeaderText="gaurdianocp" SortExpression="gaurdianocp" />
                    <asp:BoundField DataField="anualincome" HeaderText="anualincome" SortExpression="anualincome" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="parntcontact" HeaderText="parntcontact" SortExpression="parntcontact" />
                    <asp:BoundField DataField="gaurdiancontact" HeaderText="gaurdiancontact" SortExpression="gaurdiancontact" />
                    <asp:BoundField DataField="school10th" HeaderText="school10th" SortExpression="school10th" />
                    <asp:BoundField DataField="mark10th" HeaderText="mark10th" SortExpression="mark10th" />
                    <asp:BoundField DataField="uploadname10" HeaderText="uploadname10" SortExpression="uploadname10" />
                    <asp:BoundField DataField="college12th" HeaderText="college12th" SortExpression="college12th" />
                    <asp:BoundField DataField="mark12th" HeaderText="mark12th" SortExpression="mark12th" />
                    <asp:BoundField DataField="uploadname12" HeaderText="uploadname12" SortExpression="uploadname12" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:detailsview>




            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [addmision] WHERE [Id] = @Id" InsertCommand="INSERT INTO [addmision] ([dateofaddmision], [fname], [lname], [yoa], [gender], [email], [phone], [address], [city], [state], [zipcode], [fathername], [fatherocp], [mothername], [motherocp], [gaurdianname], [gaurdianocp], [anualincome], [dob], [parntcontact], [gaurdiancontact], [school10th], [mark10th], [uploadname10], [college12th], [mark12th], [uploadname12], [Status]) VALUES (@dateofaddmision, @fname, @lname, @yoa, @gender, @email, @phone, @address, @city, @state, @zipcode, @fathername, @fatherocp, @mothername, @motherocp, @gaurdianname, @gaurdianocp, @anualincome, @dob, @parntcontact, @gaurdiancontact, @school10th, @mark10th, @uploadname10, @college12th, @mark12th, @uploadname12, @Status)" SelectCommand="" UpdateCommand="UPDATE [addmision] SET [dateofaddmision] = @dateofaddmision, [fname] = @fname, [lname] = @lname, [yoa] = @yoa, [gender] = @gender, [email] = @email, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zipcode] = @zipcode, [fathername] = @fathername, [fatherocp] = @fatherocp, [mothername] = @mothername, [motherocp] = @motherocp, [gaurdianname] = @gaurdianname, [gaurdianocp] = @gaurdianocp, [anualincome] = @anualincome, [dob] = @dob, [parntcontact] = @parntcontact, [gaurdiancontact] = @gaurdiancontact, [school10th] = @school10th, [mark10th] = @mark10th, [uploadname10] = @uploadname10, [college12th] = @college12th, [mark12th] = @mark12th, [uploadname12] = @uploadname12, [Status] = @Status WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dateofaddmision" Type="DateTime" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="yoa" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zipcode" Type="String" />
                    <asp:Parameter Name="fathername" Type="String" />
                    <asp:Parameter Name="fatherocp" Type="String" />
                    <asp:Parameter Name="mothername" Type="String" />
                    <asp:Parameter Name="motherocp" Type="String" />
                    <asp:Parameter Name="gaurdianname" Type="String" />
                    <asp:Parameter Name="gaurdianocp" Type="String" />
                    <asp:Parameter Name="anualincome" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="parntcontact" Type="String" />
                    <asp:Parameter Name="gaurdiancontact" Type="String" />
                    <asp:Parameter Name="school10th" Type="String" />
                    <asp:Parameter Name="mark10th" Type="String" />
                    <asp:Parameter Name="uploadname10" Type="String" />
                    <asp:Parameter Name="college12th" Type="String" />
                    <asp:Parameter Name="mark12th" Type="String" />
                    <asp:Parameter Name="uploadname12" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dateofaddmision" Type="DateTime" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="yoa" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zipcode" Type="String" />
                    <asp:Parameter Name="fathername" Type="String" />
                    <asp:Parameter Name="fatherocp" Type="String" />
                    <asp:Parameter Name="mothername" Type="String" />
                    <asp:Parameter Name="motherocp" Type="String" />
                    <asp:Parameter Name="gaurdianname" Type="String" />
                    <asp:Parameter Name="gaurdianocp" Type="String" />
                    <asp:Parameter Name="anualincome" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="parntcontact" Type="String" />
                    <asp:Parameter Name="gaurdiancontact" Type="String" />
                    <asp:Parameter Name="school10th" Type="String" />
                    <asp:Parameter Name="mark10th" Type="String" />
                    <asp:Parameter Name="uploadname10" Type="String" />
                    <asp:Parameter Name="college12th" Type="String" />
                    <asp:Parameter Name="mark12th" Type="String" />
                    <asp:Parameter Name="uploadname12" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </div>

        </div>




        <div class="container">
            <h1 class="center">Addmission Form</h1>

            <%--<h3 class="center">Allow Student to fill the form <input class="form-check-input" type="radio" id="flexSwitchCheckChecked" checked></h3>--%>
            <center>
                <div class="form-check form-switch" style="width:300px;">
                      <label class="form-check-label" for="flexSwitchCheckChecked">Allow Student to fill the form &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                      <input class="form-check-input" style="float:none;" type="checkbox" runat="server" id="flexSwitchCheckChecked" checked>
                </div>
            </center>
        </div>
        <br />
        <br />
        <br />
        <div class="container overflow-auto">
            <div class="container" id="searchdata">
                <div class="row">
                    <div class="col-md-7"></div>
                    <div class="col-md-5">
                        <asp:DropDownList CssClass="form-select-sm" ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" Value="Id">Search By</asp:ListItem>
                            <asp:ListItem Value="dateofaddmision">Date of Addmission</asp:ListItem>
                            <asp:ListItem Value="fname">First Name</asp:ListItem>
                            <asp:ListItem Value="lname">Last Name</asp:ListItem>
                            <asp:ListItem Value="yoa">Class</asp:ListItem>
                            <asp:ListItem Value="email">Email</asp:ListItem>
                            <asp:ListItem Value="Status">Status</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox7" CssClass="form-control-sm" runat="server"></asp:TextBox>

                        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="show Table" OnClick="Button2_Click" />
                        <br />
                        <br />
                    </div>
                </div>
            </div>

            <asp:gridview runat="server" id="gridview1" CssClass="dataTable" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="#DEBA84" bordercolor="#DEBA84" borderstyle="None" borderwidth="1px" cellpadding="3" EnablePagingCallbacks="true" cellspacing="2" datakeynames="Id" datasourceid="SqlDataSource1" onrowcommand="Unnamed1_RowCommand" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="dateofaddmision" HeaderText="dateofaddmision" SortExpression="dateofaddmision" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="yoa" HeaderText="yoa" SortExpression="yoa" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="mark10th" HeaderText="mark10th" SortExpression="mark10th" />
                    <asp:HyperLinkField DataNavigateUrlFields="uploadname10" HeaderText="10th MarkSheet" Target="_blank" Text="View Result" />
                    <asp:BoundField DataField="mark12th" HeaderText="mark12th" SortExpression="mark12th" />
                    <asp:HyperLinkField DataNavigateUrlFields="uploadname12" HeaderText="12th MarksSheet" ShowHeader="False" Target="_blank" Text="View Result" />
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                <asp:ListItem>Pending</asp:ListItem>
                                <asp:ListItem>Selected</asp:ListItem>
                                <asp:ListItem>Confirm</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <%--<asp:TemplateField HeaderText="View Form" >
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" onClick="LinkButton1_Click" runat="server" Text='<%# Bind("Id") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:ButtonField HeaderText="View Full Data" Text="View Full Data" ButtonType="Button" CommandName="email" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:gridview>



            <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:It_managementConnectionString %>" Selectcommand="" DeleteCommand="DELETE FROM [addmision] WHERE [Id] = @Id" InsertCommand="INSERT INTO [addmision] ([dateofaddmision], [fname], [lname], [yoa], [gender], [email], [mark10th], [uploadname10], [mark12th], [uploadname12], [Status]) VALUES (@dateofaddmision, @fname, @lname, @yoa, @gender, @email, @mark10th, @uploadname10, @mark12th, @uploadname12, @Status)" UpdateCommand="UPDATE [addmision] SET [dateofaddmision] = @dateofaddmision, [fname] = @fname, [lname] = @lname, [yoa] = @yoa, [gender] = @gender, [email] = @email, [mark10th] = @mark10th, [uploadname10] = @uploadname10, [mark12th] = @mark12th, [uploadname12] = @uploadname12, [Status] = @Status WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dateofaddmision" Type="DateTime" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="yoa" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="mark10th" Type="String" />
                    <asp:Parameter Name="uploadname10" Type="String" />
                    <asp:Parameter Name="mark12th" Type="String" />
                    <asp:Parameter Name="uploadname12" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dateofaddmision" Type="DateTime" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="yoa" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="mark10th" Type="String" />
                    <asp:Parameter Name="uploadname10" Type="String" />
                    <asp:Parameter Name="mark12th" Type="String" />
                    <asp:Parameter Name="uploadname12" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:sqldatasource>



        </div>
        <span onclick="openNav()">open</span>
        <button class="btn btn-danger" type="button" onclick="openNav()">Show/Hide Code</button>
        <script>
            /* Open */
            function openNav() {
                document.getElementById("myNav").style.width = "100%";
            }

            /* Close */
            function closeNav() {
                document.getElementById("myNav").style.width = "0%";
            }
        </script>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

