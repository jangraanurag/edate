<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="edate.Register" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image:url(images/bg/inner-bg-1.jpg);">
  <div class="container">
    <div class="row intro-title text-center">
      <div class="col-md-12">
        <div class="section-title">
          <h1 class="position-relative divider">Register <span class="sub-title w-100">Register</span></h1>
        </div>
      </div>
      <div class="col-md-12 mt-7">
        <ul class="page-breadcrumb">
          <li><a href="index-default.html"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
          <li><span>Register</span> </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!--=================================
 inner-intro--> 

<!--=================================
 login-->

<section class="login-form register-img dark-bg page-section-ptb" style="background: url(images/pattern/04.png) no-repeat 0 0; background-size: cover;">
  <div class="container">
    <div class="row  justify-content-center">
      <div class="col-md-6">
        <div class="login-1-form register-1-form clearfix text-center">
          <h4 class="title divider-3 text-white mb-3">sign up</h4>
          <div class="section-field mb-3">
            <div class="field-widget"> <i class="glyph-icon flaticon-user"></i>
              <input id="name" runat="server" type="text" placeholder="Full name"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="name"></asp:RequiredFieldValidator>
            </div>
          </div>
            <div class="section-field mb-3">
            <div class="field-widget"> <i class="glyph-icon flaticon-user"></i>
              <input id="userName" runat="server" type="text" placeholder="User name"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter userName" ControlToValidate="userName"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="section-field mb-3">
            <div class="field-widget"> <i class="fa fa-envelope-o" aria-hidden="true"></i>
                <asp:TextBox id="email" cssClass="email" name="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="email"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="section-field mb-3">
            <div class="field-widget"> <i class="glyph-icon flaticon-padlock"></i>
              <input id="Password" runat="server" class="Password" type="password" placeholder="Password" name="Password"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="section-field mb-3">
            <div class="field-widget"> <i class="glyph-icon flaticon-padlock"></i>
              <input id="ConfirmPassword" runat="server" class="Password" type="password" placeholder="Confirm Password" name="Password"><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="Password" ControlToValidate="ConfirmPassword"></asp:CompareValidator>
            </div>
          </div>
          <div class="section-field mb-3">
            <div class="field-widget"> <i class="fa fa-graduation-cap" aria-hidden="true"></i>
              <input id="education" type="text" placeholder="Education" runat="server">
            </div>
          </div>
          <div class="section-field mb-3">
            <div class="field-widget">
               <div class="row sm-mt-2">
                  
                        <div class="col-md-4">
                          <div class="radio">
                              <asp:RadioButton ID="rdofemale" GroupName="gender" Checked="true" Text="Female"  runat="server" />
<%--                            <label for="rdofemale">Famale</label>--%>
                          </div>
                        </div>
                        <div class="col-md-4 sm-mt-2">
                          <div class="radio">
                              <asp:RadioButton ID="rdomale"  GroupName="gender" Text="Male" runat="server" />
<%--                            <label for="rdomale">Male</label>--%>
                          </div>
                        </div>
                      <div class="clearfix"></div>
                       
              </div>
            </div>
          </div>
                <div class="section-field mb-3">
            <div class="field-widget"> <i class="fa fa-globe" aria-hidden="true"></i>
              <input id="country" runat="server" type="text" placeholder="Country"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Country" ControlToValidate="country"></asp:RequiredFieldValidator>
            </div>
          </div>

              <div class="section-field mb-3">
            <div class="field-widget">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
          </div>
          <div class="section-field text-uppercase text-center mt-2">
              <asp:Button CssClass="button  btn-lg btn-theme full-rounded animated right-icn" OnClick="lbregister_Click" ID="lbregister" runat="server" Text="Sign In" />

          </div>
          <div class="section-field mt-2 text-center text-white">
            <p class="lead mb-0">Have an account? <a class="text-white" href="login.html"><u>Sign In!</u> </a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</asp:Content>
