<%@ Page Title="" Language="C#" MasterPageFile="insider.master" AutoEventWireup="true" CodeFile="Library.aspx.cs" Inherits="Insider_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <title>Insider|Library</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server">

        <div class="container">
            <div class="container">
                <h1>Book You Have issued </h1>
                <asp:GridView runat="server" AutoGenerateColumns="False" CssClass="dataTable" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="bookcode" HeaderText="bookcode" SortExpression="bookcode" />
                        <asp:BoundField DataField="dateofissue" HeaderText="dateofissue" SortExpression="dateofissue" />
                        <asp:BoundField DataField="dateofreturn" HeaderText="dateofreturn" SortExpression="dateofreturn" />
                        <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [libissubook] WHERE [Id] = @Id" InsertCommand="INSERT INTO [libissubook] ([bookcode], [dateofissue], [dateofreturn], [rollno]) VALUES (@bookcode, @dateofissue, @dateofreturn, @rollno)" SelectCommand="SELECT [Id], [bookcode], [dateofissue], [dateofreturn], [rollno] FROM [libissubook] WHERE ([rollno] = @rollno)" UpdateCommand="UPDATE [libissubook] SET [bookcode] = @bookcode, [dateofissue] = @dateofissue, [dateofreturn] = @dateofreturn, [rollno] = @rollno WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookcode" Type="String" />
                        <asp:Parameter Name="dateofissue" Type="String" />
                        <asp:Parameter Name="dateofreturn" Type="String" />
                        <asp:Parameter Name="rollno" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="rollno" SessionField="roll" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookcode" Type="String" />
                        <asp:Parameter Name="dateofissue" Type="String" />
                        <asp:Parameter Name="dateofreturn" Type="String" />
                        <asp:Parameter Name="rollno" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <br />
            <br />
            <div class="container">
                <h1>All Librairy Books </h1>
                <div class="row">
                    <div class="col-md-7"></div>
                    <div class="col-md-5">
                        <asp:DropDownList CssClass="form-select-sm" ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" Value="Id">Search By</asp:ListItem>
                            <asp:ListItem Value="bookname">Book Name</asp:ListItem>
                            <asp:ListItem Value="Authorname">Authour Name</asp:ListItem>
                            <asp:ListItem Value="publicationname">Publication</asp:ListItem>
                            <asp:ListItem Value="bookcode">Book Code</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox7" CssClass="form-control-sm" runat="server"></asp:TextBox>

                        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="show Table" OnClick="Button2_Click"  />
                        <br />
                    </div>
                </div>
                <asp:GridView ID="GridView1" runat="server" CssClass="dataTable" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="Authorname" HeaderText="Authorname" SortExpression="Authorname" />
                        <asp:BoundField DataField="publicationname" HeaderText="publicationname" SortExpression="publicationname" />
                        <asp:BoundField DataField="bookcode" HeaderText="bookcode" SortExpression="bookcode" />
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
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [libaddbook] WHERE [Id] = @Id" InsertCommand="INSERT INTO [libaddbook] ([bookname], [Authorname], [publicationname], [bookcode]) VALUES (@bookname, @Authorname, @publicationname, @bookcode)" SelectCommand="" UpdateCommand="UPDATE [libaddbook] SET [bookname] = @bookname, [Authorname] = @Authorname, [publicationname] = @publicationname, [bookcode] = @bookcode WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="Authorname" Type="String" />
                        <asp:Parameter Name="publicationname" Type="String" />
                        <asp:Parameter Name="bookcode" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="Authorname" Type="String" />
                        <asp:Parameter Name="publicationname" Type="String" />
                        <asp:Parameter Name="bookcode" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</asp:Content>

