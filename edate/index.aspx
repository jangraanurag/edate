<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="edate.index" enableEventValidation="false" %>

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
<link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />

<!-- mega menu -->
<link href="css/mega-menu/mega_menu.css" rel="stylesheet" type="text/css" />

<!-- font-awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<!-- Flaticon -->
<link href="css/flaticon.css" rel="stylesheet" type="text/css" />

<!-- Magnific popup -->
<link href="css/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

<!-- owl-carousel -->
<link href="css/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />

<!-- General style -->
<link href="css/general.css" rel="stylesheet" type="text/css" />

<!-- main style -->
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Style customizer -->
<link rel="stylesheet" type="text/css" href="css/animate.min.css">
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
 preloader --> 

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

<section id="home-slider" class="fullscreen">
  <div id="main-slider" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner"> 
      <!--/ Carousel item end -->
      <div class="carousel-item active h-100 bg-overlay-red" style="background: url(images/bg/bg-1.jpg ) no-repeat 0 0; background-size: cover;" >
        <div class="slider-content">
          <div class="container">
            <div class="row carousel-caption align-items-center h-100">
              <div class="col-md-12 text-right">
                <div class="slider-1">
                  <h1 class="animated2 text-white">Are You <span>Waiting</span> For <span> Dating ?</span></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item h-100 bg-overlay-red" style="background: url(images/bg/bg-2.jpg ) no-repeat 0 0; background-size: cover;">
        <div class="slider-content">
          <div class="container">
            <div class="row carousel-caption align-items-center h-100">
              <div class="col-md-12 text-left">
                <div class="slider-1">
                  <h1 class="animated7 text-white">Meet big <span> and </span> beautiful love <span> here!</span></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/ Carousel item end --> 
    </div>
    <!-- Controls --> 
    <a class="left carousel-control" href="#main-slider" data-slide="prev"> <span><i class="fa fa-angle-left"></i></span> </a> <a class="right carousel-control" href="#main-slider" data-slide="next"> <span><i class="fa fa-angle-right"></i></span> </a> </div>
</section>

<!--=================================
 banner --> 

<!--=================================
 Page Section -->

<section class="form-1 py-3">
  <div class="container">
    <div class="banner-form">
      <div class="row">
        <div class="col-md-2">
          <div class="form-group row">
            <div class="col-lg-4 col-md-12">
              <label class="control-label text-white">I am a</label>
            </div>
            <div class="col-lg-8 col-md-12">
                <asp:DropDownList ID="ddlfgender" CssClass="selectpicker" runat="server">
                    <asp:ListItem>Man</asp:ListItem>
                 <asp:ListItem>Woman</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>
        </div>
        <div class="col-md-2">
          <div class="form-group row">
            <div class="col-lg-5 col-md-12">
              <label class="control-label text-white">Seeking a</label>
            </div>
            <div class="col-lg-7 col-md-12">
             <asp:DropDownList ID="ddlsgender" CssClass="selectpicker" runat="server">
                 <asp:ListItem>Man</asp:ListItem>
                 <asp:ListItem>Woman</asp:ListItem>
             </asp:DropDownList>

            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group row">
                <div class="col-lg-4 col-md-12">
                  <label class="control-label text-white">From</label>
                </div>
                <div class="col-lg-8 col-md-12">
                 <asp:DropDownList ID="ddlagefrm" CssClass="selectpicker" runat="server">
                     
                 </asp:DropDownList>

                  
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group row">
                <div class="col-lg-4 col-md-12">
                  <label class="control-label text-white pl-0">To</label>
                </div>
                <div class="col-lg-8 col-md-12">
               <asp:DropDownList ID="ddlageto" CssClass="selectpicker" runat="server"></asp:DropDownList>

                </div>
              </div>
            </div>
              <div class="col-md-4">
              <div class="form-group row">
                <div class="col-lg-4 col-md-12">
                  <label class="control-label text-white pl-0">Country</label>
                </div>
                <div class="col-lg-8 col-md-12">

               <asp:DropDownList ID="ddlcountry" CssClass="selectpicker" runat="server"></asp:DropDownList>

                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-2">
            <asp:LinkButton CssClass="button btn-lg btn-theme full-rounded animated right-icn" ID="lbsearch" OnClick="lbsearch_Click" runat="server"><span>search <i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></asp:LinkButton>
           </div>
      </div>
    </div>
  </div>
</section>

<!--=================================
 Page Section -->

<section class="page-section-ptb position-relative timeline-section">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-10 text-center">
        <h2 class="title divider mb-3">Step to find your Soul Mate</h2>
        <p class="lead">E-Date will make easy to find your soul mate here. Here are thousands of profiles. You can match here . our experts will help you to find your soul mate here as per your interests , hobbies. You can find your partner here from across the globe , no boundaries for true love, E-Date is always with you to help you.</p>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-10 col-md-12">
        <ul class="timeline list-inline">
          <li>
            <div class="timeline-badge"><img class="img-fluid" src="images/timeline/01.png" alt="" /></div>
            <div class="timeline-panel">
              <div class="timeline-heading text-center">
                <h4 class="timeline-title divider-3">CREATE PROFILE</h4>
              </div>
              <div class="timeline-body">
                <p><%--Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  enim ad minim veniam, quis--%></p>
              </div>
            </div>
          </li>
          <li class="timeline-inverted">
            <div class="timeline-badge"><img class="img-fluid" src="images/timeline/02.png" alt="" /></div>
            <div class="timeline-panel">
              <div class="timeline-heading text-center">
                <h4 class="timeline-title divider-3">Find match</h4>
              </div>
              <div class="timeline-body">
                <p><%--Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  enim ad minim veniam, quis--%></p>
              </div>
            </div>
          </li>
          <li>
            <div class="timeline-badge"><img class="img-fluid" src="images/timeline/03.png" alt="" /></div>
            <div class="timeline-panel">
              <div class="timeline-heading text-center">
                <h4 class="timeline-title divider-3">START DATING</h4>
              </div>
              <div class="timeline-body">
                <p><%--Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  enim ad minim veniam, quis--%></p>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<section class="page-section-ptb pb-0 text-center our-app position-relative overflow-h" style="background: url(images/pattern/01.png) no-repeat 0 0; background-size: cover;">
  <div class="timeline-inner" style="background: url(images/app-img.png);">
    <div class="container-fluid h-100">
      <div class="row justify-content-center mb-4">
        <div class="col-md-8">
          <h2 class="title divider">Download Our App</h2>
        </div>
      </div>
      <div class="row justify-content-center justify-content-lg-start h-75">
        <div class="col-lg-8 col-md-12 align-self-center">
          <h2 class="title mb-3">Want ot find your match..!! <br/>
            Get our app now.</h2>
   <a href="https://play.google.com/store/apps/details?id=com.edate.edate" class="button btn-lg full-rounded white-bg text-dark"><img class="img-fluid mr-2" src="images/play-icon.png" alt=""><span><span>get it on</span> google play</span></a> </div>
      </div>
    </div>
  </div>
</section>
<section class="page-section-ptb  text-white" style="background: url(images/pattern/02.png) no-repeat 0 0; background-size: cover;">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-8 text-center">
        <h2 class="title divider">Animated Fun Facts</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 text-center">
        <div class="counter"> <img src="images/counter/01.png" alt="" /> <span class="timer" data-to="1600" data-speed="10000">1600</span>
          <label>Total Members</label>
        </div>
      </div>
      <div class="col-md-3 text-center">
        <div class="counter"> <img src="images/counter/02.png" alt="" /> <span class="timer" data-to="750" data-speed="10000">750</span>
          <label>Online Members</label>
        </div>
      </div>
      <div class="col-md-3 text-center">
        <div class="counter"> <img src="images/counter/03.png" alt="" /> <span class="timer" data-to="380" data-speed="10000">380</span>
          <label>Men Online</label>
        </div>
      </div>
      <div class="col-md-3 text-center">
        <div class="counter"> <img src="images/counter/04.png" alt="" /> <span class="timer" data-to="370" data-speed="10000">370</span>
          <label>Women Online</label>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="page-section-ptb profile-slider pb-3 sm-pb-6">
  <div class="container">
    <div class="row justify-content-center mb-2 sm-mb-0">
      <div class="col-md-8 text-center">
        <h2 class="title divider">Last Added Profiles</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel" data-nav-arrow="true" data-items="4" data-lg-items="4" data-md-items="3" data-sm-items="2" data-space="30">
        <asp:Repeater id="rptr" runat="server" OnItemDataBound="rptr_ItemDataBound">
            <ItemTemplate>
                <div class="item"> <a href='profile-detail.aspx?user=<%# Eval("Username") %>' class="profile-item">
            <div class="profile-image clearfix"><img class="img-fluid w-100" src='images/profile/<%# Eval("image") %>' alt="" /></div>
            <div class="profile-details text-center">
              <h5 class="title"><%# Eval("Name") %></h5>
              <span><asp:Literal ID="ltage" runat="server"></asp:Literal> Old</span> <asp:HiddenField ID="hdndob" Value='<%# Eval("DOB") %>' runat="server" /></div>
            </a> </div>
            </ItemTemplate>
            
            </asp:Repeater>
        
        </div>
      </div>
    </div>
  </div>
</section>

<section class="page-section-ptb text-white bg-overlay-black-70 bg text-center" style="background: url(images/bg/bg-4.jpg) no-repeat 0 0; background-size: cover;">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-10">
        <h2 class="title divider mb-3">Nothing say better, then a video</h2>
        <p class="lead">You don’t need to share your personal details, you can enjoy voice calling and video calling here.Enjoy the best features of E-Date.</p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <h5 class="title mb-3">see video</h5>
        <div class="popup-gallery"> <a href="https://www.youtube.com/embed/8xg3vE8Ie_E" class="play-btn popup-youtube"> <span><i class="glyph-icon flaticon-play-button"></i></span></a> </div>
      </div>
    </div>
  </div>
</section>
<%--<section class="page-section-ptb grey-bg">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-2">
      <div class="col-md-10 text-center">
        <h2 class="title divider mb-3">Our Recent Blogs</h2>
        <p class="lead">Nulla quis lorem ut libero malesuada feugiat. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>
      </div>
    </div>
    <div class="row post-article mb-5 sm-mb-0">
      <div class="col-md-6">
        <div class="post post-artical">
          <div class="post-image clearfix"><img class="img-fluid" src="images/blog/01.jpg" alt="" /></div>
          <div class="post-details">
            <div class="post-title mt-2">
              <h5 class="title text-uppercase mt-2"><a href="blog-singal-fullwidth.html">Intentions That Energize You</a></h5>
            </div>
            <p>March, 2018 by<a href="#">John Doe</a></p>
            <div class="post-icon">
              <div class="post-content">
                <p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam.Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci.</p>
              </div>
              <a class="button" href="blog-singal-fullwidth.html">read more..</a> </div>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="post post-artical">
          <div class="post-image clearfix"><img class="img-fluid" src="images/blog/02.jpg" alt="" /></div>
          <div class="post-details">
            <div class="post-title mt-2">
              <h5 class="title text-uppercase mt-2"><a href="blog-singal-fullwidth.html">A Brief History Of Creation</a></h5>
            </div>
            <p>March, 2018 by<a href="#">John Doe</a></p>
            <div class="post-icon">
              <div class="post-content">
                <p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam.Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci.</p>
              </div>
              <a class="button" href="blog-singal-fullwidth.html">read more..</a> </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row post-article">
      <div class="col-lg-4 col-md-6">
        <div class="post post-artical">
          <div class="post-image clearfix"><img class="img-fluid" src="images/blog/03.jpg" alt="" /></div>
          <div class="post-details">
            <div class="post-title mt-2">
              <h5 class="title text-uppercase mt-2"><a href="blog-singal-fullwidth.html">A Time Travel Postcard</a></h5>
            </div>
            <p>November, 2018 by<a href="#">John Doe</a></p>
            <div class="post-icon">
              <div class="post-content">
                <p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam.</p>
              </div>
              <a class="button" href="blog-singal-fullwidth.html">read more..</a> </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="post post-artical">
          <div class="post-image clearfix"><img class="img-fluid" src="images/blog/04.jpg" alt="" /></div>
          <div class="post-details">
            <div class="post-title mt-2">
              <h5 class="title text-uppercase mt-2"><a href="blog-singal-fullwidth.html">Major Motives Of Our Lives</a></h5>
            </div>
            <p>November, 2018 by<a href="#">John Doe</a></p>
            <div class="post-icon">
              <div class="post-content">
                <p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam.</p>
              </div>
              <a class="button" href="blog-singal-fullwidth.html">read more..</a> </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="post post-artical sm-mb-0">
          <div class="post-image clearfix"><img class="img-fluid" src="images/blog/05.jpg" alt="" /></div>
          <div class="post-details">
            <div class="post-title mt-2">
              <h5 class="title text-uppercase mt-2"><a href="blog-singal-fullwidth.html">All Faith Needs Feet</a></h5>
            </div>
            <p>November, 2018 by<a href="#">John Doe</a></p>
            <div class="post-icon">
              <div class="post-content">
                <p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam.</p>
              </div>
              <a class="button" href="blog-singal-fullwidth.html">read more..</a> </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center mt-5 sm-mt-2">
      <div class="col-sm-10 text-center"> <a class="button  btn-lg btn-theme full-rounded animated right-icn"><span>Show More<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></a> </div>
    </div>
  </div>
</section>--%>
<%--<section class="page-section-ptb pb-2 sm-pb-0 dark-bg text-white" style="background: url(images/pattern/03.png) no-repeat 0 0; background-size: cover;">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10 text-center">
        <h2 class="title divider">Testimonials</h2>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-md-10">
        <div class="owl-carousel" data-nav-arrow="true" data-items="1" data-md-items="1" data-sm-items="1">
          <div class="item">
            <div class="testimonial bottom_pos">
              <div class="testimonial-avatar"> <img alt="" src="images/thumbnail/thum-1.jpg"> </div>
              <div class="testimonial-info">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                <div class="author-info"> <strong>Jack Thompson - <span>Usa</span></strong> </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimonial bottom_pos">
              <div class="testimonial-avatar"> <img alt="" src="images/thumbnail/thum-2.jpg"> </div>
              <div class="testimonial-info">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                <div class="author-info"> <strong>Miss Jorina Akter - <span>Iraq</span></strong> </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimonial bottom_pos">
              <div class="testimonial-avatar"> <img alt="" src="images/thumbnail/thum-3.jpg"> </div>
              <div class="testimonial-info">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                <div class="author-info"> <strong>Adam Cooper - <span> New york</span></strong> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>--%>
<section class="page-section-ptb o-hidden grey-bg">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-0">
      <div class="col-md-10 text-center">
        <h2 class="title divider mb-3">Why Choose Us</h2>
        <p class="lead"><%--Eum cu tantas legere complectitur, hinc utamur ea eam. Eum patrioque mnesarchum eu, diam erant convenire et vis. Et essent evertitur sea, vis cu ubique referrentur, sed eu dicant expetendis. Eum cu--%></p>
      </div>
    </div>
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-10 text-center">
        <h4 class="title divider-3 text-uppercase">we are the one</h4>
      </div>
    </div>
    <div class="row mb-5 sm-mb-2">
      <div class="col-lg-3 col-md-6">
        <div class="team team-1">
          <div class="team-images"> <img class="img-fluid" src="images/team/team1.png" alt="" /> </div>
          <div class="team-description">
            <div class="team-tilte">
              <h5 class="title"><a href="#">Dinesh Vashistha</a></h5>
              <span>Founder & CEO</span> </div>
            <p><%--Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc.--%></p>
            <div class="team-social-icon social-icons color-hover">
              <ul>
                <li class="social-facebook"><a href="https://www.facebook.com/dinesh.vashistha1"><i class="fa fa-facebook"></i></a></li>
                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="team team-1">
          <div class="team-images"> <img class="img-fluid" src="images/team/team2.png" alt="" /> </div>
          <div class="team-description">
            <div class="team-tilte">
              <h5 class="title"><a href="#">Anurag Jangra</a></h5>
              <span>CTO</span> </div>
            <p><%--Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc.--%></p>
            <div class="team-social-icon social-icons color-hover">
              <ul>
                <li class="social-facebook"><a href="https://facebook.com/jangraanurag"><i class="fa fa-facebook"></i></a></li>
                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="team team-1">
          <div class="team-images"> <img class="img-fluid" src="images/team/team3.png" alt="" /> </div>
          <div class="team-description">
            <div class="team-tilte">
              <h5 class="title"><a href="#">Dr. Rose Muyano</a></h5>
              <span>Psychologist</span> </div>
            <p></p>
            <div class="team-social-icon social-icons color-hover">
              <ul>
                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
        <div class="col-lg-3 col-md-6">
        <div class="team team-1">
          <div class="team-images"> <img class="img-fluid" src="images/team/team4.png" alt="" /> </div>
          <div class="team-description">
            <div class="team-tilte">
              <h5 class="title"><a href="#">Sonu Sharma</a></h5>
              <span>CFO</span> </div>
            <p><%--Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc.--%></p>
            <div class="team-social-icon social-icons color-hover">
              <ul>
                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="social-dribbble"><a href="#"><i class="fa fa-dribbble"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</section>

<!--=================================
 page-section -->

<section class="py-5 action-box-img bg text-center text-white bg-overlay-black-80" style="background-image:url(images/bg/bg-4.jpg)">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">
        <h5 class="pb-2">Want to hear more story, subscribe for our newsletter</h5>
        <a class="button  btn-lg btn-theme full-rounded animated right-icn"><span>Subscribe<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></a> </div>
    </div>
  </div>
</section>

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

<!-- appear --> 
<script type="text/javascript" src="js/jquery.appear.js"></script> 

<!-- Menu --> 
<script type="text/javascript" src="js/mega-menu/mega_menu.js"></script> 

<!-- owl-carousel --> 
<script type="text/javascript" src="js/owl-carousel/owl.carousel.min.js"></script> 

<!-- counter --> 
<script type="text/javascript" src="js/counter/jquery.countTo.js"></script> 

<!-- Magnific Popup --> 
<script type="text/javascript" src="js/magnific-popup/jquery.magnific-popup.min.js"></script> 

<!-- style customizer  --> 
<script type="text/javascript" src="js/style-customizer.js"></script> 

<!-- custom --> 
<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>
