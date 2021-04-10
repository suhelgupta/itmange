<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Login Form</title>
    <style>
        body {
            background-color: white;
            background: url("/Images/login1.jpg") center center/cover;
        }

        /*form {
            border: 3px solid #f1f1f1;
        }*/

        /* Full-width inputs */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
        }
        .inputtpes{
             width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        .button12 {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        /* Add a hover effect for buttons */
        .button12:hover {
            opacity: 0.8;
        }

        /* Extra style for the cancel button (red) */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the avatar image inside this container */
        .imgcontainer {
            text-align: left;
            margin: 15px 0 1% 20%;
        }

        /* Avatar image */
        img.avatar {
            width: 13%;
            border-radius: 100%;
        }

        .loginimage {
        }

        /* Add padding to containers */
        .container1 {
            border-radius: 15px;
            background-color: aqua;
            padding: 2em;
            text-align: center;
            width: 30%;
            margin: 0% 10%;
        }

        /* The "Forgot password" text */
        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="loginimage">
        <form id="form1" runat="server">
            <div class="imgcontainer">
                <img src="Images/Avtar1.png" alt="Avatar" class="avatar">
            </div>

            <div class="container1">
                <label for="fname"><b>Email</b></label>
                <asp:TextBox ID="TextBox1" CssClass="inputtpes" runat="server"></asp:TextBox>

                <label for="lname"><b>Password</b></label>
                <asp:TextBox ID="TextBox2" CssClass="inputtpes" runat="server" TextMode="Password"></asp:TextBox> 

                <label for="postss" class="form-label fw-bold">Select post</label>
                <select id="postss" runat="server" class="form-select" placeholder="Choose">
                    <option selected="selected" value="1">Outsider</option>
                    <option value="2">Insider</option>
                    <option value="3">Librarian</option>
                    <option value="4">hod</option>
                    <option value="5">teachers</option>
                </select>
                <br /><br />

                <asp:Button ID="Button6" CssClass="button12" runat="server" Text="Button" OnClick="Button6_Click" />
                <br />

            </div>
        </form>
    </div>

</asp:Content>

