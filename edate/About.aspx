<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="edate.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image:url(images/bg/inner-bg-1.jpg);">
  <div class="container">
    <div class="row intro-title text-center">
      <div class="col-md-12">
        <div class="section-title">
          <h1 class="position-relative divider">about<span class="sub-title">about</span></h1>
        </div>
      </div>
      <div class="col-md-12 mt-7">
        <ul class="page-breadcrumb">
          <li><a href="index-default.html"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
          <%--<li><a href="about-1.html">Pages</a> <i class="fa fa-angle-double-right"></i></li>--%>
          <li><span>About</span> </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!--=================================
 banner -->

<section class="page-section-ptb">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8 text-center mb-5">
        <h2 class="title divider-2 mb-3">What is E-Date?</h2>
        <p class="mb-0 lead">E-Date  is a specialist dating website that assists people from Asian and Western backgrounds to find their perfect match. We offer friendly service combined with sophisticated search and messaging facilities that will make your search for true love fun and enjoyable.</p>
          <p>E-Date  is focusing to have thousands of members from the following countries seeking US, Canadian, Australian or European partners:</p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 mb-3"><img class="img-fluid" src="images/about/01.jpg" alt="" /></div>
      <div class="col-md-6">
        <h3 class="title">Why use E-Date?</h3>
        <h5 class="clearfix text-orange mb-2">A World Of Infinite Opportunities</h5>
        <p class="mb-0">Unlike some other sites, E-Date  offers friendly, personalized service combined with the latest technology. We also understand the motivations and aspirations of people from diverse backgrounds seeking to find their perfect match and feel that our own experiences can be of valuable assistance. We understand that sometimes…. the perfect one for you is located at the other end of the earth! No matter where that special person is, or why you want to meet them, we can help you to find your perfect match.</p>
      </div>
    </div>
  </div>
</section>

<!--=================================
Counter -->
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

<!--=================================
 page-section -->

<section class="page-section-ptb o-hidden grey-bg">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-0">
      <div class="col-md-10 text-center">
        <h2 class="title divider mb-3">What is E-Date?</h2>
        <p class="lead mb-0">E-Date  is a specialist dating website that assists people from Asian and Western backgrounds to find their perfect match. We offer friendly service combined with sophisticated search and messaging facilities that will make your search for true love fun and enjoyable.
<br />E-Date  is focusing to have thousands of members from the following countries seeking US, Canadian, Australian or European partners:
</p>
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
    <div class="row text-center">
      <div class="col-md-4 col-sm-12">
        <div class="about-cntn">
          <h5 class="title divider-3 text-uppercase mb-3">Why use E-Date?</h5>
          <p class="mb-0">Unlike some other sites, E-Date  offers friendly, personalized service combined with the latest technology. We also understand the motivations and aspirations of people from diverse backgrounds seeking to find their perfect match and feel that our own experiences can be of valuable assistance. We understand that sometimes…. the perfect one for you is located at the other end of the earth! No matter where that special person is, or why you want to meet them, we can help you to find your perfect match.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-12">
        <div class="about-cntn">
          <h5 class="title divider-3 text-uppercase mb-3">What is E-Date?</h5>
          <p class="mb-0">E-Date  is a specialist dating website that assists people from Asian and Western backgrounds to find their perfect match. We offer friendly service combined with sophisticated search and messaging facilities that will make your search for true love fun and enjoyable.
<br />E-Date  is focusing to have thousands of members from the following countries seeking US, Canadian, Australian or European partners:
</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-12">
        <div class="about-cntn sm-mb-0">
          <h5 class="title divider-3 text-uppercase mb-3">Benefits for E-Date members:</h5>
          <p class="mb-0">Search through thousands profiles of attractive, friendly men and women from all backgrounds looking to meet someone just like you. Your own personal inbox allows you to easily and anonymously find your perfect match. Add a profile instantly and attach a photo.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!--=================================
 Testimonial -->




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

</asp:Content>
