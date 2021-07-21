<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right" 
        
        
        style="width: 733px; margin-left: 2px; height: 28px; margin-top: 0px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        Font-Bold="True" ForeColor="#003366" Height="20px" EnableTheming="True" PostBackUrl="~/adminlogin.aspx">Admin Login</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        Font-Bold="True" ForeColor="#003366" Height="20px" PostBackUrl="~/studentlogin.aspx">User Login</asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        Font-Bold="True" ForeColor="#003366" Height="20px" PostBackUrl="~/studentsignup.aspx">User sign up</asp:LinkButton>
    </div>

    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/banner3.jpg" alt="Amazon Echo">
    </div>

    <div class="item">
      <img src="images/banner2.jpg" alt="PS4">
    </div>

    <div class="item">
      <img src="images/banner.jpg" alt="Samsung">
    </div>
      
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
</asp:Content>

