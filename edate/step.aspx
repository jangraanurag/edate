<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="step.aspx.cs" Inherits="edate.step" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Cupid Love - Dating HTML5 Template" />
<meta name="author" content="potenzaglobalsolutions.com" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Edate -International friend website</title>

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" />

<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-slider.min.css" rel="stylesheet" type="text/css" />

<!-- mega menu -->
<link href="css/mega-menu/mega_menu.css" rel="stylesheet" type="text/css" />

<!-- font-awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<!-- Flaticon -->
<link href="css/flaticon.css" rel="stylesheet" type="text/css" />

<!-- General style -->
<link href="css/general.css" rel="stylesheet" type="text/css" />

<!-- main style -->
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Style customizer -->
<link rel="stylesheet" type="text/css" href="css/skins/skin-default.css" data-style="styles" />
<link rel="stylesheet" type="text/css" href="css/style-customizer.css" />
    <style>
        #FileUpload1
        {
            display:none;
        }
        .custom-file-upload {
    
    color:white !important;
   
    cursor: pointer;
}
        input[type=text]
        {
           background: rgba(0, 0, 0, 0.2) !important;
        }
        select{
           background: rgba(0, 0, 0, 0.2) !important;
           height:auto !important;
        }
       option,form .form-group .form-control
        {
           background: rgba(0, 0, 0, 0.2) !important;

        }

    </style>
</head>

<body>
    <form runat="server"><!--=================================
 preloader -->
<div id="preloader">
  <div class="clear-loading loading-effect"><img src="images/loading.gif" alt="" /></div>
</div>

<!--=================================
 preloader --> 

<!--=================================
 header -->

<header id="header" class="dark">
  <div class="topbar">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="topbar-left text-left">
            <ul class="list-inline">
              <li><a href="mailto:support@edateworld.com"><i class="fa fa-envelope-o"> </i> support@edateworld.com  </a></li>
              <li><a href="tel:(+91)9817434170"><i class="fa fa-phone"></i> (+91)981-743-4170 </a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6">
          <div class="topbar-right text-right">
            <ul class="list-inline social-icons color-hover">
              <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li class="social-instagram"><a href="#"><i class="fa fa-instagram"></i></a></li>
              <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
            </ul>
               <ul class="list-inline text-uppercase top-menu" runat="server" id="primary_side">
              <li><a href="Register.aspx">register</a></li>
              <li><a href="Login.aspx">login</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--=================================
 mega menu -->
  
  <div class="menu"> 
    <!-- menu start -->
    <nav id="menu" class="mega-menu"> 
      <!-- menu list items container -->
      <section class="menu-list-items">
        <div class="container">
          <div class="row">
            <div class="col-md-12"> 
              <!-- menu logo -->
               <!-- menu logo -->
              <ul class="menu-logo">
                <li> <a href="index.aspx"><img src="images/logo.png" alt="logo" /> </a> </li>
              </ul>
              <!-- menu links -->
              <ul class="menu-links">
                <!-- active class -->
                <li><a href="index.aspx"> Home</a> 
                    <li><a href="About.aspx"> About Us</a> 
                  <!-- drop down multilevel  -->
                 
                </li>
                 <li> 
                    <a href="#" id="myaccount_parent" runat="server">My Account <i class="fa fa-angle-down fa-indicator"></i></a> 
                    <ul class="drop-down-multilevel left-menu" id="myaccount_child" runat="server">
                        <li><a href="Profile-detail.aspx">Profile</a></li>
                         <li><a href="step.aspx">Edit Profile</a></li>
                         <li><a href="preferences.aspx">Set Preference</a></li>
                        <li><a href="step.aspx">Edit Profile</a></li>
                    <li><a href="wallet.aspx">Wallet</a></li>
                    <li><a href="gift.aspx"> Send Me Gift</a>  </li>
                        <li> <asp:LinkButton ID="lblogout" OnClick="lblogout_Click" runat="server">Log Out</asp:LinkButton> </li>
                        </ul> 

                </li>
                
                
                
                
                <li><a href="Contact.aspx"> Contact Us</a> 
                  <!-- drop down multilevel  -->
               
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </nav>
    <!-- menu end --> 
  </div>
</header>

<!--=================================
 header --> 

<!--=================================
 inner-intro-->

<section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image:url(images/bg/inner-bg-1.jpg);">
  <div class="container">
    <div class="row intro-title text-center">
      <div class="col-md-12">
        <div class="section-title">
          <h1 class="position-relative divider">step  <span class="sub-title">step </span></h1>
        </div>
      </div>
      <div class="col-md-12 mt-7">
        <ul class="page-breadcrumb">
          <li><a href="index.aspx"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
          
          <li><span>Step</span> </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!--=================================
 inner-intro--> 

<!--=================================
 login-->

<section class="page-section-ptb text-white" style="background: url(images/pattern/04.png) no-repeat 0 0; background-size: cover;">
  <div class="container">
    <div class="row  justify-content-center">
      <div class="col-md-8">
        <div class="step-form">
          <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
              <div class="stepwizard-step"> <a href="#step-1" class="btn btn-circle">1 <span><i class="fa fa-check" aria-hidden="true"></i></span></a>
                <p>Photo</p>
              </div>
              <div class="stepwizard-step"> <a href="#step-2" class="btn btn-circle" disabled="disabled">2 <span><i class="fa fa-check" aria-hidden="true"></i></span></a>
                <p>about you</p>
              </div>
              <div class="stepwizard-step"> <a href="#step-3" class="btn btn-circle" disabled="disabled">3 <span><i class="fa fa-check" aria-hidden="true"></i></span></a>
                <p>preferences</p>
              </div>
            </div>
          </div>
            <div class="row  justify-content-center setup-content" id="step-1">
              <div class="col-md-10">
                <h4 class="title divider-3 mb-5">Photo</h4>
                <div class="row  justify-content-center">
                  <div class="col-md-8">
                    <div class="form-group">
                      <div class="row">
                        <div class="col-md-12 pr-15">
                            <asp:Image ID="Image1" ImageUrl="images/step/01.png" CssClass="img-center w-100" runat="server" />  </div>
                        
                      </div>
                      
                    </div>
                    <div class="form-group">
                      <div class="step-social mt-3 mb-2 text-center clearfix">
                        <ul class="list-inline text-capitalize">
                          <li>
                              <label for="FileUpload1" class="custom-file-upload" >
    <i class="fa fa-cloud-upload"></i>Select
</label>
                              <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" accept="image/*"  runat="server" /></li>
                            <asp:HiddenField ID="hdnimage" runat="server" />
                          <li>
                              
                              <asp:LinkButton ID="lbupload" OnClick="lbupload_Click"  runat="server"><i class="fa fa-file-image-o" aria-hidden="true"></i> Upload</asp:LinkButton></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="profile-info">
                    <p class="mb-0"><i class="fa fa-info-circle" aria-hidden="true"></i> profile with photos get 10 times as many responses</p>
                  </div>
                </div>
                <div class="form-group mb-0"> <a class="button btn-theme full-rounded btn nextBtn btn-lg mt-2 animated right-icn"><span>Next<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></a> </div>
              </div>
            </div>
            <div class="row setup-content" id="step-2">
              <div class="col-md-12">
                <div class="row  justify-content-center">
                  <div class="col-md-8 text-left text-capitalize text-white">
                    <div class="form-group mb-0">
                      <label class="title divider-3 mb-3">gender</label>
                      <div class="row sm-mt-2">
                        <div class="col-md-4">
                          <div class="radio">
                              <asp:RadioButton ID="rdofemale" GroupName="gender" runat="server" />
                            <label for="rdofemale">female</label>
                          </div>
                        </div>
                        <div class="col-md-4 sm-mt-2">
                          <div class="radio">
                              <asp:RadioButton ID="rdomale" GroupName="gender" runat="server" />
                            <label for="rdomale">male</label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">about me</label>
                          <asp:TextBox ID="txtaboutme" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Name</label>
                          <asp:TextBox ID="txtname" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Email</label>
                          <asp:TextBox ID="txtemail" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">City</label>
                          <asp:TextBox ID="txtcity" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">State</label>
                          <asp:TextBox ID="txtstate" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Country</label>
                          <asp:TextBox ID="txtcountry" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Marital Status</label>
                            <asp:DropDownList ID="ddlmarital" CssClass="form-control" runat="server">
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Divorced</asp:ListItem>
                                <asp:ListItem>Widow</asp:ListItem>
                            </asp:DropDownList>
                      </div>
                           <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Date</label>
                          <asp:TextBox ID="txtdob" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Work As</label>
                          <asp:TextBox ID="txtworkas" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group text-center">
                        <div class="profile-info">
                          <p class="mb-0"><i class="fa fa-info-circle" aria-hidden="true"></i> by clicking submit you are agreeing to our terms and conditions of use.</p>
                        </div>
                      </div>
                      <div class="form-group text-center mb-0"> <asp:LinkButton ID="lbnext" CssClass="button btn-theme full-rounded btn nextBtn btn-lg mt-2 animated right-icn" runat="server"><span>next<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></asp:LinkButton> </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row setup-content" id="step-3">
              <div class="col-md-12">
                <div class="row  justify-content-center">
                  <div class="col-md-8 text-left text-capitalize text-white">
                    <div class="form-group mb-0">
                      <div class="row sm-mt-2">
                        <label class="title divider-3 mb-3">Education</label>
                          <asp:TextBox ID="txtedu" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                        
                        
                      </div>
                      <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Language</label>
                          <asp:DropDownList ID="ddllang" CssClass="form-control" runat="server">
                              <asp:ListItem>English</asp:ListItem>
                              <asp:ListItem>Hindi</asp:ListItem>
                          </asp:DropDownList>  

                      </div>

                      <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Height</label>
                          <asp:TextBox ID="txtheight" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>

                      </div>
                      <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Smoke</label>
                          <asp:CheckBox ID="chksmoke" CssClass="form-control" runat="server" />
                      </div>
                        <div class="form-group sm-mt-2">
                        <label for="chkrelationship" class="title divider-3 mb-3">Relationship</label>
                          <asp:CheckBox ID="chkrelationship" CssClass="form-control" runat="server" />
                      </div>
                        <div class="form-group sm-mt-2">
                        <label  class="title divider-3 mb-3">Eye Color</label>
                            <asp:DropDownList ID="ddleyecolor" CssClass="form-control" runat="server">

                                <asp:ListItem>Black</asp:ListItem>
                                <asp:ListItem Value="Brown"></asp:ListItem>
                                <asp:ListItem Value="Blue"></asp:ListItem>
                                <asp:ListItem Value="Hazel"></asp:ListItem>
                                <asp:ListItem>Amber</asp:ListItem>
                                <asp:ListItem>Grey</asp:ListItem>
                                <asp:ListItem Value="Green"></asp:ListItem>
                            </asp:DropDownList>
                      </div>
                        <div class="form-group sm-mt-2">
                        <label  class="title divider-3 mb-3">Looking for a</label>
                            <asp:DropDownList ID="ddllooking" CssClass="form-control" runat="server">

                                <asp:ListItem>Men</asp:ListItem>
                                <asp:ListItem>Women</asp:ListItem>
                                <asp:ListItem>Boy</asp:ListItem>
                                <asp:ListItem>Girl</asp:ListItem>
                                
                            </asp:DropDownList>
                      </div>

                        <div class="form-group sm-mt-2">
                        <label  class="title divider-3 mb-3">Eye Color</label>
                            <asp:DropDownList ID="ddldiet" CssClass="form-control" runat="server">

                                <asp:ListItem>Vegeterian</asp:ListItem>
                                <asp:ListItem>Non vegeterian</asp:ListItem>
                                <asp:ListItem>Eggeterian</asp:ListItem>
                              
                            </asp:DropDownList>
                      </div>

                        <div class="form-group sm-mt-2">
                        <label class="title divider-3 mb-3">Kids</label>
                          <asp:TextBox ID="txtkids" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>

                      </div>

                      <div class="form-group text-center">
                        <div class="profile-info">
                          <p class="mb-0"><i class="fa fa-info-circle" aria-hidden="true"></i> by clicking submit you are agreeing to our terms and conditions of use.</p>
                        </div>
                      </div>
                      <div class="form-group mb-0 text-center"> <asp:LinkButton ID="lbupdate" OnClick="lbupdate_Click" CssClass="button btn-theme full-rounded btn btn-lg mt-2 animated right-icn" runat="server"><span>submit<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></asp:LinkButton> </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!--=================================
 login--> 

<!--=================================
footer -->

<footer class="text-white text-center">
  <div class="footer-widget">
    <div class="container">
      <div class="row  justify-content-center">
        <div class="col-md-8">
          <div class="footer-logo mb-2"> <img class="img-center" src="images/footer-logo.png" alt="" /> </div>
          <div class="social-icons color-hover">
            <ul>
              <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
              <li class="social-youtube"><a href="#"><i class="fa fa-youtube"></i></a></li>
            </ul>
          </div>
          <p class="text-white">© 2021  - Edateworld.com All Right Reserved </p>
        </div>
      </div>
    </div>
  </div>
</footer>

<!--=================================
footer --> 

<!--=================================
Color Customizer -->

        </form>
    <asp:Literal ID="ltchat" runat="server"></asp:Literal>
<div id="back-to-top"><a class="top arrow" href="#top"><i class="fa fa-level-up"></i></a></div>

<!--=================================
 jquery --> 

<!-- jquery  --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/popper.min.js"></script> 

<!-- bootstrap --> 
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script type="text/javascript" src="js/bootstrap-select.min.js"></script> 
<script type="text/javascript" src="js/bootstrap-slider.min.js"></script> 

<!-- appear --> 
<script type="text/javascript" src="js/jquery.appear.js"></script> 

<!-- appear --> 
<script type="text/javascript" src="js/jquery.appear.js"></script> 

<!-- Menu --> 
<script type="text/javascript" src="js/mega-menu/mega_menu.js"></script> 

<!-- style customizer  --> 
<script type="text/javascript" src="js/style-customizer.js"></script> 

<!-- custom --> 
<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>
