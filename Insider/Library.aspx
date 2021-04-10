<%@ Page Title="" Language="C#" MasterPageFile="~/Insider/insider.master" AutoEventWireup="true" CodeFile="Library.aspx.cs" Inherits="Insider_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <div class="container">
        <div class="container">
            <h1>Book You Have issued </h1>
            <asp:gridview runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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
            </asp:gridview>
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
        <div class="container">

        </div>
    </div>
    </form>
</asp:Content>

