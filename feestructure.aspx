<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feestructure.aspx.cs" Inherits="feestructure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>FEES STRUCTURE</title>
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
       
        .a{
             max-width: 1000px;
             margin:4px,7px,2px,4px;
        }
        p{
            margin-bottom: 2rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="container">
        <h4>B.SC. INFORMATION TECHNOLOGY FEES STRUCTURE </h4>
    <p>College runs an unaided course in B.Sc. Information technology course to provide a competitive edge to the young and aspiring graduates. This course covers subjects as diverse as programming, algorithms, mathematics, digital electronics, microprocessors, management practices, Web designing, etc. The total number of seats is 60 for each year.</p>
        
        <div>
            <table class="table caption-top">
  <caption>Fee structure for the course is as follows:</caption>
  <thead>
    <tr>
      
      <th class="th1" scope="col">Year</th>
      <th class="th1" scope="col">Semester</th>
      <th class="th1" scope="col">Fees</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     
      <td>F.Y.B.Sc.</td>
      <td>I & II</td>
      <td>22,315</td>
    </tr>
    <tr>
      
      <td>S.Y.B.Sc</td>
      <td>III & IV</td>
      <td>23,381</td>
    </tr>
    <tr>
      
      <td>T.Y.B.Sc</td>
      <td>V & VI</td>
      <td>23,611</td>
    </tr>
  </tbody>
</table>
            If the student intends to withdraw admission at S.Y. OR T.Y. will have to pay fees for full course
        </div>

        <div class="a">
            <p>Details of the Course :</p>

<p style="font-weight:bold">1. Introduction :</p>
<p>The course in Bachelor of Science-Information Technology B.Sc. (I.T.) is an integrated course of three years duration (Six semester). After completion of the course, a candidate can enroll for a Post Graduation of 2 years duration leading to Master of Science in Information technology (M.Sc.I.T.) degree or a 3 year post-graduate degree of MCA.</p>

<p style="font-weight:bold">2. Eligibility :</p>
<p>(a) A candidate for being eligible for admission to the degree course of Bachelor of Science-Information Technology, should have passed XII Standard examination of the Maharashtra Board of Higher Secondary Education or its equivalent with Mathematics as one of the subjects and should have secured not less than 45% marks in aggregate for Open Category students and 40% marks in aggregate in case of Reserved category students.
(b) (b) A student who has passed Diploma in Computer Engineering /Computer Science/Computer Technology/ Information Technology/Electrical, Electronics & Video Engineering and allied branches/Mechanical and allied branches, civil and allied branches of Engineering after S.S.C. (Xth Standard) is eligible for direct admission to the Second Year of the B.Sc. (I.T.) degree course. However, the Diploma should be recognized by the Board of Technical Education or any other recognized Government Body. Minimum marks required are 45% aggregate for Open Category student and 40% aggregate for student belonging to reserved category.
</p>

<p style="font-weight:bold">3. Admission:</p>
<p>Eligible candidates will be admitted directly by the college on merit as per the schedule given by University of Mumbai. Reservation of seats will be observed as per government rules.
</p>
<p style="font-weight:bold">4. Examination:</p>
<p>Examination for Semester I, II, III and IV will be conducted by the College, on behalf of the University of Mumbai, at the end of each semester. Examination for the semester V and VI will be conducted by the university.
</p>
<p style="font-weight:bold">5. Syllabus:</p>
<p>The detailed syllabus is available in the Department of Information Technology.
</p>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
</div>
    </form>
</asp:Content>


