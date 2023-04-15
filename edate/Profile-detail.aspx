<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profile-detail.aspx.cs" Inherits="edate.Profile_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
    .notification {
  background-color: #555;
  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}

.notification:hover {
  background: red;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
<section class="inner-intro details-page bg bg-fixed bg-overlay-black-20 position-relative" style="background-image:url(images/bg/inner-bg-2.jpg);">
  <div class="container">
     <div class="row">
           <div class="col-md-12">
<div class="profile-cntn text-white">
<ul>
  <li><img src="images/profile/profile-img.png" id="myimg" style="height:250px" runat="server" alt="" /></li>
  <li><div class="profile-text"> <h2>
      <asp:Literal ID="ltname" runat="server"></asp:Literal></h2> <h5>
          <asp:Literal ID="ltage" runat="server"></asp:Literal></h5></div></li>
</ul>
</div>
        </div>
           </div>

     </div>
</section>


<!--=================================
 banner -->
      
<section class="page-section-ptb pt-10 text-left">
  <div class="container">
  <div class="row mt-5 sm-mt-0">
      <div class="col-md-12 ">
          <a href="#" class="notification">
  <span>Unread Messages</span>
  <span class="badge">
      <asp:Literal ID="lturmsg" runat="server"></asp:Literal></span>
</a>

<a href="#" class="notification">
  <span>All Messages</span>
  <span class="badge"><asp:Literal ID="ltallmsg" runat="server"></asp:Literal></span>
</a>
          <a href="#" class="notification">
  <span>Sent Messages</span>
  <span class="badge"><asp:Literal ID="ltsmsg" runat="server"></asp:Literal></span>
</a>
                    <a href="#" class="notification">
  <span>Likes</span>
  <span class="badge">0</span>
</a>
      
          </div>
  <div class="col-md-12 ">
  <h4 class="title divider-3 mb-5 sm-mb-3">Basic Details(<asp:HyperLink ID="hlmsg" NavigateUrl="javascript:jqcc.cometchat.launch({uid:'1449'});" runat="server">Message Me</asp:HyperLink>)</h4>
  </div>
  </div>
          <div class="row">
          <div class="col-md-12">
  <div class="table-responsive">
<table class="table table-bordered text-center mb-0">
  <tbody>
    <tr>
      <td>Gender</td>
      <td>
          <asp:Literal ID="ltgender" runat="server"></asp:Literal></td>
      <td>Education</td>
      <td>
          <asp:Literal ID="ltedu" runat="server"></asp:Literal></td>
    </tr>
    <tr class="tr-bg">
      <td>Age</td> 
      <td>
          <asp:Literal ID="ltage1" runat="server"></asp:Literal></td>
      <td>Language</td>
      <td>
          <asp:Literal ID="ltlang" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>
          <asp:Literal ID="ltcountry" runat="server"></asp:Literal></td>
      <td>Height</td>
      <td>
          <asp:Literal ID="ltheight" runat="server"></asp:Literal> cm</td>
    </tr>
    <tr class="tr-bg">
      <td>Birth Date</td>
      <td>
          <asp:Literal ID="ltdob" runat="server"></asp:Literal></td>
      <td>Smoking</td>
      <td>
          <asp:Literal ID="ltsmoke" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td>Relationship</td>
      <td>
          <asp:Literal ID="ltrelation" runat="server"></asp:Literal></td>
      <td>Eye Colour</td>
      <td>
          <asp:Literal ID="lteyecolor" runat="server"></asp:Literal></td>
    </tr>
    <tr class="tr-bg">
      <td>Looking For a</td>
      <td>
          <asp:Literal ID="ltlook" runat="server"></asp:Literal></td>
      <td>Marital Status</td>
      <td>
          <asp:Literal ID="ltmarital" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td>Work as</td>
      <td>
          <asp:Literal ID="ltworkas" runat="server"></asp:Literal></td>
      <td>Diet</td>
      <td>
          <asp:Literal ID="ltdiet" runat="server"></asp:Literal></td>
    </tr>
    <tr class="tr-bg">
      <td>Birth Date</td>
      <td>
          <asp:Literal ID="ltdob1" runat="server"></asp:Literal></td>
      <td>Kids</td>
      <td>No</td>
    </tr>
  </tbody>
</table>
</div>
          </div>
        </div>

<div class="row mt-5 sm-mt-3">
<div class="col-md-12 text-left">
<h4 class="title divider-3 mb-5 sm-mb-3">About Me</h4>
<p class="mb-0">

    <asp:Literal ID="ltabout" runat="server"></asp:Literal>
</p>
</div>
</div>

        </div>
</section>


</asp:Content>
