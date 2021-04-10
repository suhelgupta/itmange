<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Registration</title>
        <style>
            * {
                box-sizing: border-box;
            }

            h2 {
                text-align: center;
                color: Silver;
            }

            body {
                background-color: Black;
            }

            input[type=text], select, textarea {
                width: 95%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            .input1{
                width: 95%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }

            .typesubmit {
                background-color: #4CAF50;
                color: white;
                padding: 10px 10px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 95%;
                text-align: center;
                margin:auto;
            }

            .typesubmit:hover {
                background-color: #45a049;
            }

            .container1 {
                border-radius: 15px;
                /*background-color: rgb(114, 64, 194);*/
                background: none;
                padding: 2em;
                margin: 5px, 10px, 5px, 10px;
                margin:auto;
                text-align: center;
                width: 50%;
                

            }

            .col-25 {
                /*float: left;*/
                width: 25%;
                margin-top: 6px;
            }

            body{
                background: url(/Images/register.jpg) center center/cover;
             
            }

            .col-75 {
                float: left;
                width: 75%;
                margin-top: 6px;
            }

            .heading1{
               font-family:Algerian;
               color: black;
               font-weight:bolder;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, .typesubmit {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"> </span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <%--<div class="alert alert-danger alert-dismissible fade " id="ErrorAlert" runat="server" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
          <form runat="server">
            <asp:Label ID="TextBox7" runat="server" Text=""></asp:Label>
        <%--</form>--%>

    <div class="mt-3 me-5">
        <h2 class=" heading1">REGISTRATION FORM</h2>
        <div class="container1">
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="fname">First Name</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox1" cssclass="input1" runat="server" placeholder="Your first Name.."></asp:textbox><br />
                        <span class=""><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></span>&nbsp;
                    </div>

                </div>
                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="lname">Last Name</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox2" cssclass="input1" runat="server" placeholder="Your Last Name.."></asp:textbox><br />
                        <span class="font-weight-normal"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></span>&nbsp;
                    </div>
                </div>
                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="mno">Mobile no</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox3" cssclass="input1" runat="server" placeholder="Your contact no.." TextMode="Phone" MaxLength="10"></asp:textbox><br />
                        <span class="font-weight-normal"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox3"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="mail">Email ID</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox4" cssclass="input1" runat="server" placeholder="Your emailid.." TextMode="Email"></asp:textbox><br />
                        <span class="m-0"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="@ missing...." ControlToValidate="TextBox4"  ValidationExpression=".+@.+"></asp:RegularExpressionValidator></span> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="mail">Password</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox5" cssclass="input1" runat="server" placeholder="Your password.." TextMode="Password"></asp:textbox><br />
                        <span class=""><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></span>&nbsp;

                    </div>
                </div>
                <div class="row">
                    <div class="col-25 fw-bold">
                        <label for="mail">Confirm-Password</label>
                    </div>
                    <div class="col-75">
                        <asp:textbox id="TextBox6" cssclass="input1" runat="server" placeholder="Your Confirm password.." TextMode="Password"></asp:textbox><br />
                        <span class="font-weight-normal fs-6"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match..." ControlToCompare="TextBox5"  ControlToValidate="TextBox6"></asp:CompareValidator></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-25"></div>
                    <div class="col-75">
                        <asp:button runat="server" cssClass="typesubmit" text="Register" OnClick="Unnamed1_Click" />
                    </div>
               </div>
            </form>
        </div>
    </div>
    <br />
    <br />
</asp:Content>

