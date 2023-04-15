<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="gift.aspx.cs" Inherits="edate.gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
   <style>
    input
    {
        color:black !important;
    }
    ::placeholder 
    {
        color:black !important;
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

  </div>
  </div>
          <div class="row">
          <div class="col-md-12">
              <div class="row mb-3">
          <div class="col-md-12 text-center">
            <h4 class="title divider-3 text-uppercase text-center mb-3">Gift Me</h4>
          </div>
        </div>
        <div class="defoult-form">
          <div id="formmessage" style="display:none" runat="server">Success/Error Message Goes Here</div>
         
            <div class="form-group">
                <asp:TextBox ID="txtname" plaeholder="UserName" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtamount" plaeholder="Amount" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            
            <div class="form-group">
              <div class="input-group">
                  <asp:TextBox ID="txtmsg" TextMode="MultiLine" Rows="5" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <input type="hidden" name="action" value="sendEmail"/>
                <asp:LinkButton ID="lbgift" OnClick="lbgift_Click" CssClass="button btn-lg btn-theme full-rounded animated right-icn" runat="server"><span>Send Now<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></asp:LinkButton>
            </div>
         
          <div id="ajaxloader" style="display:none"><img class="center-block" src="images/loading.gif" alt="" /></div>
        </div>
  
          </div>
        </div>



        </div>
</section>

</asp:Content>
