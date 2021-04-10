<%@ Page Title="" Language="C#" MasterPageFile="~/Library/Library.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="Library_AddBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Add Book</title>
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
        <div class="container1 backccolor background">
            <div class="row">
                <h3>ADD BOOKS</h3>
                <div class="col-md-6">
                    <label for="inputname">Name of Book</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Book Name"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Author</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Author"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="inputState">Publication</label><br />
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Publication"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Book Code</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Book Code"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Quantity</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Quantity" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="p-3">
                <center>
                    <span id="TextBox6" runat="server"></span><br />
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
            <div class="container" id="searchdata">
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

                        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="show Table" OnClick="Button2_Click" />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <%-- <asp:GridView ID="GridView1" CssClass="dataTable" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" >
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowDeleteButton="True">
                        <ControlStyle CssClass="btn btn-primary btn-sm" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle CssClass="btn btn-primary btn-sm" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />

                </asp:GridView>--%>

            <%-- <asp:GridView id="GridView1" allowpaging="true" CssClass="dataTable" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="" ForeColor="Black" GridLines="Vertical"   AllowSorting="True" EnableSortingAndPagingCallbacks="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating1">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="Authorname" HeaderText="Authorname" SortExpression="Authorname" />
                        <asp:BoundField DataField="publicationname" HeaderText="publicationname" SortExpression="publicationname" />
                        <asp:BoundField DataField="bookcode" HeaderText="bookcode" SortExpression="bookcode" />
                        <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" SortExpression="totalquantity" />
                        <asp:BoundField DataField="avquantity" HeaderText="avquantity" SortExpression="avquantity" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True">
                        <ControlStyle CssClass="btn btn-primary btn-sm" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle CssClass="btn btn-primary btn-sm" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"  />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>    
                    <pagerstyle backcolor="LightBlue" height="30px" verticalalign="Bottom" horizontalalign="right"/>
                </asp:GridView>--%>















            <div class="container" id="alldata">
                <asp:GridView ID="myGrid" AllowPaging="True" CssClass="dataTable" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowSorting="True" EnableSortingAndPagingCallbacks="True">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="Authorname" HeaderText="Authorname" SortExpression="Authorname" />
                        <asp:BoundField DataField="publicationname" HeaderText="publicationname" SortExpression="publicationname" />
                        <asp:BoundField DataField="bookcode" HeaderText="bookcode" SortExpression="bookcode" />
                        <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" SortExpression="totalquantity" />
                        <asp:BoundField DataField="avquantity" HeaderText="avquantity" SortExpression="avquantity" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" ItemStyle-Wrap="True">
                            <ControlStyle CssClass="btn btn-primary btn-sm" />

                            <ItemStyle Wrap="True"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    <PagerSettings Mode="Numeric" Position="Bottom" PageButtonCount="10" />
                    <PagerStyle BackColor="LightBlue" Height="30px" VerticalAlign="Bottom" HorizontalAlign="right" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [libaddbook] WHERE [Id] = @Id" InsertCommand="INSERT INTO [libaddbook] ([bookname], [Authorname], [publicationname], [bookcode], [totalquantity], [avquantity]) VALUES (@bookname, @Authorname, @publicationname, @bookcode, @totalquantity, @avquantity)" SelectCommand="" UpdateCommand="UPDATE [libaddbook] SET [bookname] = @bookname, [Authorname] = @Authorname, [publicationname] = @publicationname, [bookcode] = @bookcode, [totalquantity] = @totalquantity, [avquantity] = @avquantity WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="Authorname" Type="String" />
                        <asp:Parameter Name="publicationname" Type="String" />
                        <asp:Parameter Name="bookcode" Type="String" />
                        <asp:Parameter Name="totalquantity" Type="Int32" />
                        <asp:Parameter Name="avquantity" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="Authorname" Type="String" />
                        <asp:Parameter Name="publicationname" Type="String" />
                        <asp:Parameter Name="bookcode" Type="String" />
                        <asp:Parameter Name="totalquantity" Type="Int32" />
                        <asp:Parameter Name="avquantity" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [libaddbook] WHERE [Id] = @Id" InsertCommand="INSERT INTO [libaddbook] ([bookname], [Authorname], [publicationname], [bookcode], [totalquantity], [avquantity]) VALUES (@bookname, @Authorname, @publicationname, @bookcode, @totalquantity, @avquantity)" SelectCommand="SELECT * FROM [libaddbook]" UpdateCommand="UPDATE [libaddbook] SET [bookname] = @bookname, [Authorname] = @Authorname, [publicationname] = @publicationname, [bookcode] = @bookcode, [totalquantity] = @totalquantity, [avquantity] = @avquantity WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bookname" Type="String" />
                    <asp:Parameter Name="Authorname" Type="String" />
                    <asp:Parameter Name="publicationname" Type="String" />
                    <asp:Parameter Name="bookcode" Type="String" />
                    <asp:Parameter Name="totalquantity" Type="Int32" />
                    <asp:Parameter Name="avquantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="bookname" Type="String" />
                    <asp:Parameter Name="Authorname" Type="String" />
                    <asp:Parameter Name="publicationname" Type="String" />
                    <asp:Parameter Name="bookcode" Type="String" />
                    <asp:Parameter Name="totalquantity" Type="Int32" />
                    <asp:Parameter Name="avquantity" Type="Int32" />
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

