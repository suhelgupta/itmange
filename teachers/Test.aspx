<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teachers.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="teachers_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Slot" HeaderText="Slot" SortExpression="Slot" />
                <asp:BoundField DataField="Mon" HeaderText="Mon" SortExpression="Mon" />
                <asp:BoundField DataField="Tue" HeaderText="Tue" SortExpression="Tue" />
                <asp:BoundField DataField="Wed" HeaderText="Wed" SortExpression="Wed" />
                <asp:BoundField DataField="thur" HeaderText="thur" SortExpression="thur" />
                <asp:BoundField DataField="fri" HeaderText="fri" SortExpression="fri" />
                <asp:BoundField DataField="sat" HeaderText="sat" SortExpression="sat" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [Timetable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Timetable] ([Slot], [Mon], [Tue], [Wed], [thur], [fri], [sat]) VALUES (@Slot, @Mon, @Tue, @Wed, @thur, @fri, @sat)" SelectCommand="SELECT * FROM [Timetable]" UpdateCommand="UPDATE [Timetable] SET [Slot] = @Slot, [Mon] = @Mon, [Tue] = @Tue, [Wed] = @Wed, [thur] = @thur, [fri] = @fri, [sat] = @sat WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Slot" Type="String" />
                <asp:Parameter Name="Mon" Type="String" />
                <asp:Parameter Name="Tue" Type="String" />
                <asp:Parameter Name="Wed" Type="String" />
                <asp:Parameter Name="thur" Type="String" />
                <asp:Parameter Name="fri" Type="String" />
                <asp:Parameter Name="sat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Slot" Type="String" />
                <asp:Parameter Name="Mon" Type="String" />
                <asp:Parameter Name="Tue" Type="String" />
                <asp:Parameter Name="Wed" Type="String" />
                <asp:Parameter Name="thur" Type="String" />
                <asp:Parameter Name="fri" Type="String" />
                <asp:Parameter Name="sat" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </form>

</asp:Content>

