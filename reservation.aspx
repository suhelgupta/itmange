<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reservation.aspx.cs" Inherits="reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>RESERVATION</title>
    <style>
         .container{
                max-width: 1000px;
                margin:4px,7px,2px,4px;
        }
        h4{
            text-align:center;
            color:cornflowerblue;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        p{
            margin-bottom: 2rem;
        }
        table, th, td {
                border: 1px solid black;
                align-content:center;
            }
        .center {
             margin-left: auto;
             margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h4>RESERVATION OF SEATS</h4>
    <br />
    <div class="container">
        <p>The percentage of reservation prescribed by the Government of Maharashtra for admissions to the various courses is given below:</p>
        <br />
        <table class="center">
            <tr>
    <th>CATEGORY</th>
    <th>PERCENTAGE(%)</th>
  </tr>
  <tr>
      <td>S.C.</td>
      <td>13</td>
      </tr>
   <tr>
      <td>S.T.</td>
      <td>7</td>
    </tr>
   <tr>
      <td>D.T.(A)</td>
       <td>3</td>
       </tr>
    <tr>
      <td>N.T.(B)</td>
      <td>2.5</td>
        </tr>
      <tr>
      <td>N.T.(C)</td>
       <td>3.5</td>
          </tr>
     <tr>
      <td>N.T.(D)</td>
      <td>2</td>
         </tr>
            <tr>
      <td>O.B.C</td>
      <td>19</td>
  </tr>
  
        </table>
    </div>
</asp:Content>

