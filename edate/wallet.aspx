<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wallet.aspx.cs" Inherits="edate.wallet" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Cupid Love - Dating HTML5 Template" />
<meta name="author" content="potenzaglobalsolutions.com" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Edate-International Friendship Site</title>

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" />

<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

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
</head>

<body>

<!--=================================
 preloader -->

<div id="preloader">
  <div class="clear-loading loading-effect"><img src="images/loading.gif" alt="" /></div>
</div>
<!--=================================
header -->
    <form runat="server">
<header id="header" class="dark">
  <div class="topbar">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="topbar-left text-left">
            <ul class="list-inline">
              <li><a href="mailto:support@edateworld.com"><i class="fa fa-envelope-o"> </i> support@edateworld.com </a></li>
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
              <ul class="menu-logo">
                <li> <a href="index-default.html"><img src="images/logo.png" alt="logo" /> </a> </li>
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
 banner -->

<section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image:url(images/bg/inner-bg-1.jpg);">
  <div class="container">
    <div class="row intro-title  justify-content-center">
      <div class="col-md-12">
        <div class="section-title">
          <h1 class="position-relative divider">My Walet<span class="sub-title w-100">My Wallet</span></h1>
        </div>
      </div>
      <div class="col-md-12 mt-7">
        <ul class="page-breadcrumb">
          <li><a href="index-default.html"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
          <li><a href="elements-data-table.html"> Profile</a> <i class="fa fa-angle-double-right"></i></li>
          <li><span>My Wallet</span> </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!--=================================
 inner-intro--> 



    
<section class="page-section-ptb data-table">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
          <h2>Amount:<asp:Literal ID="ltamt" runat="server"></asp:Literal></h2>
          <h2>Transaction Sent</h2>
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>From </th>
                <th>Amount</th>
                <th>Date</th>
                
              </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptrsent" runat="server">
                    <ItemTemplate>
                        <tr>
                <td><%# Eval("From_UID") %></td>
                <td><%# Eval("Amount") %></td>
                <td><%# Eval("Date", "{0:MMMM dd,yyyy hh:mm:ss}") %></td>
                
              </tr>
                    </ItemTemplate>
                </asp:Repeater>
              
              
            </tbody>
          </table>
        </div>
          <h2>Transaction Recieved</h2>
          <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>To </th>
                <th>Amount</th>
                <th>Date</th>
                
              </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptrrecieved" runat="server">
                    <ItemTemplate>
                        <tr>
                <td><%# Eval("To_UID") %></td>
                <td><%# Eval("Amount") %></td>
                <td><%# Eval("Date", "{0:MMMM dd,yyyy hh:mm:ss}") %></td>
                
              </tr>
                    </ItemTemplate>
                </asp:Repeater>
              
              
            </tbody>
          </table>
        </div>
   
      </div>
    </div>
  </div>
</section>

<!--=================================
 inner-intro--> 

<!--=================================
footer -->

<footer class="page-section-pt text-white text-center" style="background: url(images/pattern/04.png) no-repeat 0 0; background-size: cover;">
  
  <div class="footer-widget mt-5 sm-mt-3">
    <div class="container">
        <div class="row justify-content-center">
        <div class="col-md-12">
          <div>
            <ul>
              <li><a href="cookiesPolicy.aspx">Cookies Policy</a></li>
              <li><a href="scamNotice.aspx">Hiring Scam Public Notice</a></li>
              <li><a href="privacyPolicy.aspx">Privacy Policy</a></li>
              <li><a href="safetyGuidelines.aspx">Safety Guidelines</a></li>
              <li><a href="terms.aspx">Terms of use</a></li>
                <li><a href="trueCompatibality.aspx">True Compatbility</a></li>
                 <li><a href="trustSecurity.aspx">Trust & Security</a></li>
            </ul>
          </div>
          <p class="text-white">© 2021  - Edateworld.com All Right Reserved </p>
        </div>
      </div>
      <div class="row justify-content-center">
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

                    <asp:Literal ID="ltchat" runat="server"></asp:Literal>
        </form>

<div id="back-to-top"><a class="top arrow" href="#top"><i class="fa fa-level-up"></i></a></div>

<!--=================================
 jquery --> 
 
<!-- jquery  --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/popper.min.js"></script> 

<!-- bootstrap --> 
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script type="text/javascript" src="js/bootstrap-select.min.js"></script> 

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
