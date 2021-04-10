<%@ Page Title="" Language="C#" MasterPageFile="~/outsider/outsider.master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="outsider_admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Admission form</title>
    <style>
        .col-md-9 {
            display: inline-block;
        }

        .background {
            background-color: Gray;
        }

        .container {
            width: 100%;
            margin: 2px auto;
        }

        h3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">

        <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
            <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <div class="container background p-5" id="mainform" runat="server">
            <div class="row">
                <h3>INFORMATION TECHNOLOGY ADMISSION FORM</h3>
                <div class="col-md-6">
                    <label for="inputname">First name</label>
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Last name</label>
                    <input type="text" class="form-control" runat="server" id="lname" placeholder="" readonly="readonly" />
                    <%--<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Last name"></asp:TextBox>--%>
                </div>

                <div class="col-md-6">
                    <h4>Year of Admission</h4>
                    <input type="radio" class="form-check-input" runat="server" name="q1" id="Radio1" required="required" />
                    <label class="form-check-label" for="option1">FY.BSC.IT</label>
                    <br />
                    <input type="radio" class="form-check-input" runat="server" name="q1" id="Radio2" />
                    <label class="form-check-label" for="option2">SY.BSC.IT</label>
                    <br />
                    <input type="radio" class="form-check-input" runat="server" name="q1" id="Radio3" />
                    <label class="form-check-label" for="option3">TY.BSC.IT</label>
                </div>
                <div class="col-md-6">
                    <h4>Gender</h4>
                    <input type="radio" class="form-check-input" runat="server" name="q" id="Radio4" required="required" />
                    <label class="form-check-label" for="option1">Male</label>
                    <br />
                    <input type="radio" class="form-check-input" runat="server" name="q" id="Radio5" />
                    <label class="form-check-label" for="option2">Female</label>
                    <br />
                    <input type="radio" class="form-check-input" runat="server" name="q" id="Radio6" />
                    <label class="form-check-label" for="option3">Other</label>
                </div>

                <div class="col-md-6">
                    <label for="email">Email ID</label>
                    <input type="email" class="form-control" runat="server" placeholder="Email ID" id="emailid" readonly="readonly" />
                </div>
                <div class="col-md-6">
                    <label for="contactno">Contact No</label>
                    <input type="text" class="form-control" runat="server" placeholder="Contact NO" id="stphone" readonly="readonly" />
                </div>

                <div class="col-md-6">
                    <label for="addr">Address</label>
                    <input type="text" class="form-control" placeholder="Address" runat="server" id="address" />
                </div>
                <div class="col-md-6">
                    <label for="city">City</label>
                    <input type="text" class="form-control" placeholder="City" runat="server" id="city" />
                </div>
                <div class="col-md-6">
                    <label for="inputState" class="form-label">State</label>
                    <select id="inputState" runat="server" class="form-select" placeholder="Choose">
                        <option selected="selected">Choose...</option>
                        <option>Andhra Pradesh</option>
                        <option>Arunachal Pradesh</option>
                        <option>Assam</option>
                        <option>Bihar</option>
                        <option>Chhattisgarh</option>
                        <option>Goa</option>
                        <option>Gujarat</option>
                        <option>Haryana</option>
                        <option>Himachal Pradesh</option>
                        <option>Jharkhand</option>
                        <option>Karnataka</option>
                        <option>Kerala</option>
                        <option>Madhya Pradesh</option>
                        <option>Maharashtra</option>
                        <option>Manipur</option>
                        <option>Meghalaya</option>
                        <option>Mizoram</option>
                        <option>Nagaland</option>
                        <option>Odisha</option>
                        <option>Punjab</option>
                        <option>Rajasthan</option>
                        <option>Sikkim</option>
                        <option>Tamil Nadu</option>
                        <option>Telangana</option>
                        <option>Tripura</option>
                        <option>Uttarakhand</option>
                        <option>Uttar Pradesh</option>
                        <option>West Bengal</option>
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="zipcode">Zip Code</label>
                    <input type="text" class="form-control" runat="server" placeholder="Zip Code" id="zipcode" />
                </div>
                <h5>Parent Details</h5>
                <div class="col-md-6">
                    <label for="fathername">Father's Name</label>
                    <input type="text" class="form-control" runat="server" placeholder="Father's Name" id="fathername" />
                </div>
                <div class="col-md-6">
                    <label for="fatherocc">Father's Occupation</label>
                    <input type="text" class="form-control" runat="server" placeholder="Father's Occupation" id="fatherocc" />
                </div>
                <div class="col-md-6">
                    <label for="mothername">Mother's Name</label>
                    <input type="text" class="form-control" runat="server" id="mothername" placeholder="Mother's Name" />
                </div>
                <div class="col-md-6">
                    <label for="motherocc">Mother's Occupation</label>
                    <input type="text" class="form-control" runat="server" id="motherocc" placeholder="Mother's Occupation" />
                </div>
                <div class="col-md-6">
                    <label for="gaurname">Gaurdian's Name</label>
                    <input type="text" class="form-control" runat="server" id="gaurname" placeholder="Gaurdian's Name" />
                </div>
                <div class="col-md-6">
                    <label for="gaurocc">Gaurdian's Occupation</label>
                    <input type="text" class="form-control" runat="server" id="gaurocc" placeholder="Gaurdian's Occupation" />
                </div>
                <div class="col-md-6">
                    <label for="annualincome">Annual Income</label>
                    <input type="text" class="form-control" runat="server" id="annualincome" placeholder="Annual Income" />
                </div>
                <div class="col-md-6">
                    <label for="dob">DOB</label>
                    <input type="date" class="form-control" runat="server" id="dob" placeholder="dd-mm" />
                </div>
                <div class="col-md-6">
                    <label for="pno">Parent's Contact no</label>
                    <input type="text" class="form-control" runat="server" id="pno" placeholder="Contact no" />
                </div>
                <div class="col-md-6">
                    <label for="gno">Gaurdian's Contact No</label>
                    <input type="text" class="form-control" runat="server" id="gno" placeholder="Contact no" />
                </div>
                <h5>Qualification Details</h5>
                <div class="mb-3">
                    <label for="schoolname" class="form-label">Name and address of school</label>
                    <textarea class="form-control" runat="server" id="schoolname" rows="2"></textarea>
                </div>
                <div class="col-md-6">
                    <label for="marks">Marks obtained in 10th std</label>
                    <input type="text" class="form-control" runat="server" id="marks" placeholder="Annual Income" />
                </div>
                <div class="col-md-6">
                    <label for="marksheet">Upload marksheet</label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                    <%--<input type="file" class="form-control" aria-label="file example" >--%>
                </div>

                <div class="mb-3">
                    <label for="clgname" class="form-label">Name and address of high school</label>
                    <textarea class="form-control" runat="server" id="clgname" rows="2"></textarea>
                </div>
                <div class="col-md-6">
                    <label for="marks">Marks obtained in 12th std</label>
                    <input type="text" class="form-control" runat="server" id="mark" placeholder="Annual Income" />
                </div>
                <div class="col-md-6">
                    <label for="marksheet">Upload marksheet</label>
                    <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                    <%--<input type="file" class="form-control" runat="server" id="" aria-label="file example" />--%><br />
                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Button" OnClick="Button1_Click" /><br /><br />
                </div>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
        </div>
        <div>

        </div>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</asp:Content>

