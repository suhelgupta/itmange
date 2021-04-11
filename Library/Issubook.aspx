<%@ Page Title="" Language="C#" MasterPageFile="Library.master" AutoEventWireup="true" CodeFile="Issubook.aspx.cs" Inherits="Library_Issubook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Issu Book</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.    5.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <style>
        .paddmarg {
            padding: 4px 12px;
        }

        .col-md-6 {
            display: inline-block;
        }


        body {
            font-family: "Lato", sans-serif;
            background: url("/Images/libimg.jpg") center center/cover;
        }
        .container1 {
            width: 35%;
            margin: 2px auto;
            padding: 15px;
        }

        .backccolor {
            background-color: gray;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


    <form id="frm" runat="server">
        <div class="container backccolor background">
            <div class="row">
                <h3>ADD BOOKS</h3>
                <div class="col-md-3">
                    <label for="inputname">rollno</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Book Name"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label for="inputname">book code</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Author"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label for="inputState">unique code</label><br />
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Publication"></asp:TextBox>
                </div>
                <div class="col-md-1">
                    <span id="TextBox6" runat="server"></span>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass=" btn btn-success" Text="issu" OnClick="Button1_Click" />
                </div>
                <div class="col-md-12">
                    <p id="checkme" runat="server"></p>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />

        <div class="container overflow-auto center" id="showbooks" runat="server">
            <div class="container" id="searchdata">
                <div class="row">
                    <div class="col-md-7"></div>
                    <div class="col-md-5">
                        <asp:DropDownList CssClass="form-select-sm" ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" Value="Id">Search By</asp:ListItem>
                            <asp:ListItem Value="rollno">Roll no.</asp:ListItem>
                            <asp:ListItem Value="bookcode">Book code</asp:ListItem>
                            <asp:ListItem Value="uniquecode">Unique Code</asp:ListItem>
                            
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox7" CssClass="form-control-sm" runat="server"></asp:TextBox>

                        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="show Table" OnClick="Button2_Click" />
                        <br />
                        <br />
                    </div>
                </div>
            </div>

            <asp:GridView ID="GridView1" runat="server" CssClass="dataTable" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                    <asp:BoundField DataField="bookcode" HeaderText="bookcode" SortExpression="bookcode" />
                    <asp:BoundField DataField="uniquecode" HeaderText="uniquecode" SortExpression="uniquecode" />
                    <asp:BoundField DataField="dateofissue" HeaderText="dateofissue" SortExpression="dateofissue" />
                    <asp:BoundField DataField="dateofreturn" HeaderText="dateofreturn" SortExpression="dateofreturn" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-primary btn-sm" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [libissubook] WHERE [Id] = @Id" InsertCommand="INSERT INTO [libissubook] ([rollno], [bookcode], [uniquecode], [dateofissue], [dateofreturn]) VALUES (@rollno, @bookcode, @uniquecode, @dateofissue, @dateofreturn)" SelectCommand="" UpdateCommand="UPDATE [libissubook] SET [rollno] = @rollno, [bookcode] = @bookcode, [uniquecode] = @uniquecode, [dateofissue] = @dateofissue, [dateofreturn] = @dateofreturn WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rollno" Type="String" />
                    <asp:Parameter Name="bookcode" Type="String" />
                    <asp:Parameter Name="uniquecode" Type="String" />
                    <asp:Parameter Name="dateofissue" Type="String" />
                    <asp:Parameter Name="dateofreturn" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="rollno" Type="String" />
                    <asp:Parameter Name="bookcode" Type="String" />
                    <asp:Parameter Name="uniquecode" Type="String" />
                    <asp:Parameter Name="dateofissue" Type="String" />
                    <asp:Parameter Name="dateofreturn" Type="String" />
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

