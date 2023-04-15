<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profiles.aspx.cs" Inherits="edate.Profiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
<section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image:url(images/bg/inner-bg-1.jpg);">
  <div class="container">
    <div class="row intro-title text-center">
      <div class="col-md-12">
        <div class="section-title">
          <h1 class="position-relative divider">profile <span class="sub-title">profile</span></h1>
        </div>
      </div>
      <div class="col-md-12 mt-7">
        <ul class="page-breadcrumb">
          <li><a href="index-default.html"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
          <li><span>Profile</span> </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!--=================================
 banner --> 

<!--=================================
 Page Section -->

<section class="page-section-ptb profile-slider">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-8 text-center">
        <h2 class="title divider">Active Profiles</h2>
      </div>
    </div>
    <div class="row">
        <asp:Repeater runat="server" ID="rptractive" OnItemDataBound="rptractive_ItemDataBound">
            <ItemTemplate>
      <div class="col-md-3 sm-mb-3">
          <div class="profile-item-hover">
              <a href='profile-detail.aspx?user=<%# Eval("Username") %>' class="profile-item">
        <div class="profile-image clearfix"><img class="img-fluid" src='<%# Eval("nimg") %>' alt="" /></div>
        <div class="profile-details profile-text">
          <h5 class="title"><%# Eval("Name") %></h5>
          <span class="text-black">
              <asp:Literal ID="ltage" runat="server"></asp:Literal> Old</span>
            <asp:HiddenField ID="hdndob" Value='<%# Eval("DOB") %>' runat="server" />

        </div>
        </a>

          </div>

      </div>

                </ItemTemplate>
            </asp:Repeater>
    </div>
  </div>
</section>
<section class="page-section-ptb profile-slider pb-3 sm-pb-6 grey-bg">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8 text-center">
        <h2 class="title divider">Last Added Profiles</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel" data-nav-arrow="true" data-items="4" data-md-items="4" data-sm-items="3" data-xx-items="1" data-space="30">
         <asp:Repeater ID="rptrlastadded" runat="server" OnItemDataBound="rptrlastadded_ItemDataBound">
             <ItemTemplate>
            <div class="item"> <a href='profile-detail.aspx?user=<%# Eval("Username") %>' class="profile-item">
            <div class="profile-image clearfix"><img class="img-fluid" src='<%# Eval("nimg") %>' alt="" /></div>
            <div class="profile-details text-center">
              <h5 class="title"><%# Eval("Name") %></h5>
              <span><asp:Literal ID="ltage" runat="server"></asp:Literal> Old</span><asp:HiddenField ID="hdndob" Value='<%# Eval("DOB") %>' runat="server" /> </div>
            </a> </div>
                 </ItemTemplate>
             </asp:Repeater>
          
        </div>
      </div>
    </div>
  </div>
</section>
<section class="page-section-ptb pt-3 profile-slider">
  <div class="container">
    <div class="row justify-content-center mb-5 sm-mb-3">
      <div class="col-md-8 text-center">
        <h2 class="title divider">All Profiles</h2>
      </div>
    </div>
      <div class="row">
      <asp:Repeater ID="rptrprof" runat="server" OnItemDataBound="rptrprof_ItemDataBound" >
          <ItemTemplate>
    
      <div class="col-md-3 sm-mb-3"><div class="profile-item-hover-1"> <a href='profile-detail.aspx?user=<%# Eval("Username") %>' class="profile-item">
        <div class="profile-image clearfix"><img class="img-fluid" src='<%# Eval("nimg") %>' alt="" /> </div>
        <div class="profile-details profile-text">
          <h5 class="title"><%# Eval("Name") %></h5>
          <span class="text-black"><asp:Literal ID="ltage" runat="server"></asp:Literal> Old</span><asp:HiddenField ID="hdndob" Value='<%# Eval("DOB") %>' runat="server" /> </div>
        </a> </div></div>
     
    
              </ItemTemplate>
          </asp:Repeater>
    </div>
    <div class="row">
      <div class="col-md-12 text-center"> <a class="button  btn-lg btn-theme full-rounded animated right-icn"><span>Show More<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></a> </div>
    </div>
  </div>
</section>

</asp:Content>
