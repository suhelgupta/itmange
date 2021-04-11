<%@ Page Title="" Language="C#" MasterPageFile="teachers.master" AutoEventWireup="true" CodeFile="Examination.aspx.cs" Inherits="teachers_Examination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Teacher| Examinations</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            background-color: greenyellow;
        }

        .container{
            padding:0 30px;
            border-radius:10px;
        }

        h3 {
            text-align: center;
        }

        /*input[type="text" i] {
            padding: 8px 30px;
        }

        input[type="text1" i] {
            padding: 20px 150px;
        }*/



        /*.btn-outline-success {
             width: 149px;
             height: 22px;
             margin-left: 150px;
             margin-top: 8px;
             margin-bottom: 5px;
             background-color:wheat;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


    <form id="frm" runat="server">
        <div class="container backccolor background">
            <div class="row">
                <h3>Eximination </h3>
                <div class="col-2">
                    <label for="inputname">Type</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                        <asp:ListItem>Regular</asp:ListItem>
                        <asp:ListItem>ATKT</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-1">
                    <label for="inputname">class</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>fy</asp:ListItem>
                        <asp:ListItem>sy</asp:ListItem>
                        <asp:ListItem>ty</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-1">
                    <label for="inputname">Sem</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                        <asp:ListItem>sem 1</asp:ListItem>
                        <asp:ListItem>sem 2</asp:ListItem>
                        <asp:ListItem>sem 3</asp:ListItem>
                        <asp:ListItem>sem 4</asp:ListItem>
                        <asp:ListItem>sem 5</asp:ListItem>
                        <asp:ListItem>sem 6</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-2">
                    <label for="inputname">Subject</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Subject"></asp:TextBox>
                </div>
                <div class="col-2">
                    <label for="inputname">Date</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                </div>

                 <div class="col-2">
                    <label for="inputname">Start time</label><br />
                    <%--<input type="time" class="form-control" runat="server" id="st" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Subject" TextMode="Time"></asp:TextBox>
                </div>

                 <div class="col-2">
                    <label for="inputname">End time</label><br />
                    <%--<input type="time" class="form-control" runat="server" id="et" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Subject" TextMode="Time"></asp:TextBox>
                </div>

                <div class="col-11">
                    <label for="inputname">Google form link</label><br />
                    <%--<input type="time" class="form-control" runat="server" id="et" placeholder="Last name" />--%>
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Google form link"></asp:TextBox>
                </div>

                <%--<div class="col-3">
                  
                </div>--%>
                <div class="col-1">
                    <%--<span id="TextBox6" runat="server"></span>--%>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass=" btn btn-success" Text="Set Exam" OnClick="Button1_Click" />
                </div>
                <div class="col-md-12">
                    <p id="checkme" runat="server"></p>
                </div>
            </div>
        </div>
        </div>
        <br />
        <br />
        <div class="container">
            <asp:GridView ID="GridView1" CssClass="dataTable" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="starttime" HeaderText="starttime" SortExpression="starttime" />
                    <asp:BoundField DataField="endtime" HeaderText="endtime" SortExpression="endtime" />
                    <%--<asp:BoundField DataField="glink" HeaderText="glink" SortExpression="glink" />--%>
                    <asp:HyperLinkField DataNavigateUrlFields="glink" HeaderText="Google Link" Target="_blank" Text="View Form" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-primary" />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-primary" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:It_managementConnectionString %>" DeleteCommand="DELETE FROM [examination] WHERE [Id] = @Id" InsertCommand="INSERT INTO [examination] ([type], [class], [sem], [subject], [date], [starttime], [endtime], [glink]) VALUES (@type, @class, @sem, @subject, @date, @starttime, @endtime, @glink)" SelectCommand="SELECT * FROM [examination] ORDER BY [date] DESC" UpdateCommand="UPDATE [examination] SET [type] = @type, [class] = @class, [sem] = @sem, [subject] = @subject, [date] = @date, [starttime] = @starttime, [endtime] = @endtime, [glink] = @glink WHERE [Id] = @Id">
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

        </form>
</asp:Content>

