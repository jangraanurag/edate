<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="preferences.aspx.cs" Inherits="edate.preferences" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
       <section class="inner-intro bg bg-fixed bg-overlay-black-60" style="background-image: url(images/bg/inner-bg-1.jpg);">
            <div class="container">
                <div class="row intro-title text-center">
                    <div class="col-md-12">
                        <div class="section-title">
                            <h1 class="position-relative divider">My Preference <span class="sub-title">My Preference</span></h1>
                        </div>
                    </div>
                    <div class="col-md-12 mt-7">
                        <ul class="page-breadcrumb">
                            <li><a href="index.aspx"><i class="fa fa-home"></i>Home</a> <i class="fa fa-angle-double-right"></i></li>

                            <li><span>My Preference </span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!--=================================
 inner-intro-->

        <!--=================================
 login-->

        <section class="login-form dark-bg page-section-ptb bg-overlay-black-30 bg" style="background: url(images/pattern/02.png) no-repeat 0 0;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="login-1-form clearfix">
                            <h4 class="title divider-3 text-white">Set Preference</h4>
                            <%--  <div class="login-1-social mt-5 mb-5 text-center clearfix">
            <ul class="list-inline text-capitalize">
              <li><a class="fb" href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
              <li><a class="gplus" href="#"><i class="fa fa-google-plus"></i> google+</a></li>
            </ul>
          </div>--%>
                            <div class="section-field mb-2">
                                <div class="field-widget">
                                    <label for="ddlseek">Seeking for:</label>
                                    <asp:DropDownList ID="ddlseek" CssClass="form-control" runat="server">
                                        <asp:ListItem>Men</asp:ListItem>
                                        <asp:ListItem>Women</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="section-field mb-1">
                                <div class="field-widget">
                                     <label for="ddlagefrom">Age from:</label>
                                    <asp:DropDownList ID="ddlagefrom" CssClass="form-control" runat="server">
                                    </asp:DropDownList>         

                                </div>
                            </div>
                            <div class="section-field mb-1">
                                <div class="field-widget">
                                     <label for="ddlageto">Age To:</label>
                                    <asp:DropDownList ID="ddlagetp" CssClass="form-control" runat="server">
                                    </asp:DropDownList>         

                                </div>
                            </div>
                            <div class="section-field mb-1">
                                <div class="field-widget">
                                     <label for="ddllook">Look At:</label>
                                    <asp:DropDownList ID="ddllook" CssClass="form-control" runat="server">
                                        <asp:ListItem>Same City</asp:ListItem>
                                        <asp:ListItem>Same State</asp:ListItem>
                                        <asp:ListItem>Same Country</asp:ListItem>
                                        <asp:ListItem>Anywhere</asp:ListItem>
                                    </asp:DropDownList>         

                                </div>
                            </div>
                             <div class="section-field mb-1">
                                <div class="field-widget">
                                     <label for="ddllang">Language:</label>
                                    <asp:DropDownList ID="ddllang" CssClass="form-control" runat="server">
                                        
                                    </asp:DropDownList>         

                                </div>
                            </div>
                             <div class="section-field mb-1">
                                <div class="field-widget">
                                     <label for="ddledu">Education:</label>
                                    <asp:DropDownList ID="ddledu" CssClass="form-control" runat="server">
                                       
                                    </asp:DropDownList>         

                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="section-field text-uppercase text-right mt-2">
                                <asp:LinkButton ID="lbpreference" CssClass="button  btn-lg btn-theme full-rounded animated right-icn" OnClick="lbpreference_Click" runat="server"><span>Set Preference<i class="glyph-icon flaticon-hearts" aria-hidden="true"></i></span></asp:LinkButton>
                            </div>
                            <div class="clearfix"></div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--=================================
 login-->

        <!--=================================
footer -->


</asp:Content>
