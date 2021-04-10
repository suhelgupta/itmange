<%@ Page Title="" Language="C#" MasterPageFile="~/Insider/insider.master" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="Insider_exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <title>STUDENT| EXAMS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div class="container">
        <div class="container">
            <h1>Your Up comming Exams Are</h1>
        </div>
        <br /><br />
        <div class="container">
            <asp:GridView ID="GridView1" CssClass="dataTable" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="starttime" HeaderText="starttime" SortExpression="starttime" />
                    <asp:BoundField DataField="endtime" HeaderText="endtime" SortExpression="endtime" />
                    <asp:HyperLinkField DataNavigateUrlFields="glink" Target="_blank" Text="Srart Exam" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [examination] WHERE [Id] = @Id" InsertCommand="INSERT INTO [examination] ([type], [class], [sem], [subject], [date], [starttime], [endtime], [glink]) VALUES (@type, @class, @sem, @subject, @date, @starttime, @endtime, @glink)" SelectCommand="SELECT * FROM [examination]" UpdateCommand="UPDATE [examination] SET [type] = @type, [class] = @class, [sem] = @sem, [subject] = @subject, [date] = @date, [starttime] = @starttime, [endtime] = @endtime, [glink] = @glink WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="starttime" Type="String" />
                    <asp:Parameter Name="endtime" Type="String" />
                    <asp:Parameter Name="glink" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="starttime" Type="String" />
                    <asp:Parameter Name="endtime" Type="String" />
                    <asp:Parameter Name="glink" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
        </form>
</asp:Content>

