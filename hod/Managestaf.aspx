<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Managestaf.aspx.cs" Inherits="hod_Managestaf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Manage staf</title>
     <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.    5.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <style>
        .paddmarg {
            padding: 4px 12px;
        }

        body {
            font-family: "Lato", sans-serif;
            /*background: url("/Images/libimg.jpg") center center/cover;*/
        }

        .col-md-6 {
            display: inline-block;
        }

        .container1 {
            width: 35%;
            margin: 2px auto;
            padding: 15px;
        }

        .backccolor {
            background-color: aquamarine;
            border-radius : 10px;
        }

        h3 {
            text-align: center;
        }

        input[type="text" i] {
            padding: 8px 30px;
        }

        input[type="text1" i] {
            padding: 20px 150px;
        }



        /*.btn-outline-success {
             width: 149px;
             height: 22px;
             margin-left: 150px;
             margin-top: 8px;
             margin-bottom: 5px;
             background-color:wheat;
        }*/
    </style>
    <%--        <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            //$('#GridView1').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
            $('#ContentPlaceHolder1_myGrid').DataTable();
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


    <form id="frm" runat="server">
        <div class="container1 backccolor background">
            <div class="row">
                <h3>ADD Staff</h3>
                <div class="col-md-6">
                    <label for="inputname">First name</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Last Name</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Last name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Email</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Phone</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Phone"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Rool</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Rool"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Password</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Password" TextMode="password"></asp:TextBox>
                </div>
            </div>
            <div class="p-3">
                <center>
                    <span id="TextBox7" runat="server"></span><br />
                    <asp:button id="Button1" runat="server" cssclass=" btn btn-success" text="ADD" OnClick="Button1_Click" />
                </center>
            </div>
            <div>
            </div>
        </div>
        <br />
        <br />
        <br />

        <style>
            #showbooks {
                border: 2px solid black;
                background-color: aquamarine;
            }
        </style>

    <div class="container overflow-auto center" id="showbooks" runat="server"> 
        <asp:gridview runat="server" cssClass="dataTable" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle CssClass="btn btn-primary" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle CssClass="btn btn-primary" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:gridview>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [staf] WHERE [Id] = @Id" InsertCommand="INSERT INTO [staf] ([fname], [lname], [email], [phone], [role], [password]) VALUES (@fname, @lname, @email, @phone, @role, @password)" SelectCommand="SELECT * FROM [staf]" UpdateCommand="UPDATE [staf] SET [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone, [role] = @role WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        </div>          

        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
        <%--<script type="text/javascript">
    $(function () {
        $("[id*=ContentPlaceHolder1_myGrid]").DataTable(
            {// bLengthChange: true,
                lengthMenu: [[5, 10, -1], [5, 10, "All"]],
                paging: true,
                bFilter: true,
                Sort: true,
                Paginate: true,
                searching: true,
                ordering: true,}
                );
        });
</script>--%>


        <br />
        <br />
        <br />
    </form>



</asp:Content>

