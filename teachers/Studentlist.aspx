<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teachers.master" AutoEventWireup="true" CodeFile="Studentlist.aspx.cs" Inherits="teachers_Studentlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Student List</title>
    <style>
        .myitems {
            padding: 100px 13px;
            margin: 30px auto;
            width: 20%;
            background-color: aqua;
            border: 2px solid black;
            border-radius: 10px;
            transition: all 0.5s ease-in-out;
        }

            .myitems:hover {
                transform: scale(1.2);
                cursor: pointer;
            }

        .CodeAreaa {
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


    <form id="form" runat="server">

        <div class="container">
            <center>
                <div class="CodeAreaa">

                    <asp:button runat="server" cssclass="btn btn-danger" text="Update Student List" onclick="Unnamed1_Click"></asp:button>
                    <asp:button runat="server" cssclass="btn btn-danger" text="Year Increment"></asp:button>
                    <asp:button runat="server" cssclass="btn btn-danger" text="Alot Roll No."></asp:button>
                </div>
                <div class="container row ">
                    <div class="col-md-4 myitems" id="firstyear" onclick="Toogle(a='fylist')">
                        First Year
                    </div>

                    <div class="col-md-4 myitems" id="secondyear" onclick="Toogle(a='sylist')">
                        Second Year
                    </div>

                    <div class="col-md-4 myitems" id="thirdyear" onclick="Toogle(a='tylist')">
                        Third Year
                    </div>

                </div>

                <br /><br />
                <div id="fylist" class="container" style="display:none">
                    <asp:GridView runat="server" CssClass="dataTable" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:BoundField DataField="Rollno" HeaderText="Rollno" SortExpression="Rollno" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Students] ([year], [Rollno], [class], [fname], [lname], [email], [phone]) VALUES (@year, @Rollno, @class, @fname, @lname, @email, @phone)" SelectCommand="SELECT [year], [Rollno], [class], [fname], [lname], [email], [phone], [Id] FROM [Students] WHERE class = 'fy'" UpdateCommand="UPDATE [Students] SET [year] = @year, [Rollno] = @Rollno, [class] = @class, [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                <br /><br />
                <div id="sylist" class="container" style="display:none">
                    <asp:GridView runat="server" CssClass="dataTable" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:BoundField DataField="Rollno" HeaderText="Rollno" SortExpression="Rollno" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Students] ([year], [Rollno], [class], [fname], [lname], [email], [phone]) VALUES (@year, @Rollno, @class, @fname, @lname, @email, @phone)" SelectCommand="SELECT [year], [Rollno], [class], [fname], [lname], [email], [phone], [Id] FROM [Students] WHERE class = 'sy'" UpdateCommand="UPDATE [Students] SET [year] = @year, [Rollno] = @Rollno, [class] = @class, [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                <br /><br />
                <div id="tylist" class="container" style="display:none">
                    <asp:GridView runat="server" CssClass="dataTable" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Vertical" AllowSorting="True">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
<asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:BoundField DataField="Rollno" HeaderText="Rollno" SortExpression="Rollno" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:CommandField ShowEditButton="True" ButtonType="Button">
<ControlStyle CssClass="btn btn-primary btn-sm"></ControlStyle>
</asp:CommandField>
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Students] ([year], [Rollno], [class], [fname], [lname], [email], [phone]) VALUES (@year, @Rollno, @class, @fname, @lname, @email, @phone)" SelectCommand="SELECT [year], [Rollno], [class], [fname], [lname], [email], [phone], [Id] FROM [Students] WHERE class = 'ty'" UpdateCommand="UPDATE [Students] SET [year] = @year, [Rollno] = @Rollno, [class] = @class, [fname] = @fname, [lname] = @lname, [email] = @email, [phone] = @phone WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Rollno" Type="String" />
                            <asp:Parameter Name="class" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="phone" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>

            </center>


        </div>

        <br />
        <br />
        <br />
        <br />

    </form>
    <script>
        function Toogle(id2) {
            //let btn = document.getElementById(id1);
            let para = document.getElementById(id2);
            if (para.style.display != "none") { /* para.style.display Using this we can change the   */
                para.style.display = "none";
            }
            else {
                para.style.display = "";
            }
        }

        function hide(a) {
            let para = document.getElementById(a);
            para.style.display = "none";

        }


    </script>
</asp:Content>

