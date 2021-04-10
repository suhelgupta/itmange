<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<% //if (Session == null) { } %>
    <title>Home</title>
    <link href="https://getbootstrap.com/docs/5.0/examples/carousel/carousel.css" rel="stylesheet">
    <style>
        .border5 {
            padding: 20px;
            border: 2px solid black;
            margin: 20px;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        .hheading {
            font-weight: bold;
            width: 30%;
            margin: 30px auto;
            text-align: center;
        }

        .campus{ 
            border: 2px solid black;
            padding: 9px;
            margin-top: 30px;
        }


        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        body {
            padding: 0;
        }

        .carousel {
            margin-bottom: 1rem;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <rect width="100%" height="100%" fill="#777" />
                    </svg>

                    <div class="container">
                        <div class="carousel-caption text-start">
                            <h1>Example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <rect width="100%" height="100%" fill="#777" />
                    </svg>

                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <rect width="100%" height="100%" fill="#777" />
                    </svg>

                    <div class="container">
                        <div class="carousel-caption text-end">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </div>

    <div class="container" id="OurFalcuty">
        <%--img , data nd principal hod pic   --%>
        <%-- img , p data  --%>
        <h1 class="hheading">Our Faculty</h1>

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">

                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>sdf</h2>
                    <p>sgfdf</p>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4"></div>
                <br />
                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>Farzin Qureshi</h2>
                    <p></p>
                </div>
                <!-- /.col-lg-4 -->

                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>Sana Khan</h2>
                    <p></p>
                </div>
                <!-- /.col-lg-4 -->


                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>Swati Mandavkar</h2>
                    <p></p>
                </div>
                <!-- /.col-lg-4 -->

                <br />
                <div class="col-lg-2"></div>


                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>Mazhar Shaikh</h2>
                    <p></p>

                </div>
                <!-- /.col-lg-4 -->


                <%--<div class="col-lg-1"></div>--%>


                <div class="col-lg-4">
                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
                    <h2>Sayema Shaikh</h2>
                    <p></p>

                </div>
                <!-- /.col-lg-4 -->

                <div class="col-lg-2"></div>
            </div>
            <!-- /.row -->
        </div>
    </div>

    <hr />

    <div class="container" id="AboutUs">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h1 class="hheading">About US</h1>
                <p class=" text-wrap">College runs an unaided course in B.Sc. Information technology course to provide a competitive edge to the young and aspiring graduates. This course covers subjects as diverse as programming, algorithms, mathematics, digital electronics, microprocessors, management practices, Web designing, etc. The total number of seats is 60 for each year.</p>
                <br />
                <button class="btn btn-dark d-block m-auto">View More</button>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

    <hr />

    <div class="container" id="Photos">
        <h1 class="hheading ">Photos</h1>
        <%-- teachers photos and personal details with experience --%>
        <div class="container marketing">
            <div class="row">
                <div class="col-lg-3">
                    <div class="card" style="width: 18rem;">
                      <img src="Images/Facebook.jpg" class="card-img-top" alt="..." />
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card" style="width: 18rem;">
                      <img src="Images/Facebook.jpg" class="card-img-top" alt="..." />
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card" style="width: 18rem;">
                      <img src="Images/Facebook.jpg" class="card-img-top" alt="..." />
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card" style="width: 18rem;">
                      <img src="Images/Facebook.jpg" class="card-img-top" alt="..." />
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <hr />

    
    
    <div class="container" id="ContactUS">
        <h1 class="hheading">Contact Us</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="container" id="ContactUs">
                    <h1>Campus</h1>
                    <div class="campus">
                        <div class="row">
                            <div class="col-md-1"><p class="fs-3"><i class="fas fa-map-marker-alt"></i></p></div>
                            <div class="col-md-9">
                                <p class="fs-5"> 156, Mahatma Gandhi Road, Mantralaya, Fort, Mumbai, Maharashtra 400023</p>
                            </div>
                        </div>
                    </div>
                    <div class="campus">
                        <p class="fs-3">&nbsp;<i class="fas fa-phone-alt"></i> &nbsp;+91 7977737042</p>
                         
                    </div>
                    
                </div>
            </div>
            <div class="container col-md-6" id="Contact">
                <div class="embed-responsive embed-responsive-2by2">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3774.096071659667!2d72.82886001531188!3d18.927141261552162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce1e3a9a13c5%3A0xa5a1ee827799317d!2sElphinstone%20College!5e0!3m2!1sen!2sin!4v1611800887339!5m2!1sen!2sin"  class="embed-responsive-item" width="600" height="450" frameborder="0" style="border:2px solid black;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>

