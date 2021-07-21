

<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="student_studentlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 387px; width: 862px; margin-left: 3px;">
<form id="form1">
    
    <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="right" 
              >
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" PostBackUrl="~/studentsignup.aspx">SIGNUP</asp:LinkButton>
        </div>
    <br /><br /><br /><br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br /><br />
          <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
              >
              Student id&nbsp;&nbsp;&nbsp; 
              <asp:TextBox ID="uid" runat="server" Width="206px" 
                  Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="uid_TextChanged"></asp:TextBox>
          </div>
          <div style="width: 859px; height: 31px; font-weight: bold; color: #003366;" align="center" 
              >Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="pass" runat="server" 
                  TextMode="Password" Width="206px" 
                  Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="pass_TextChanged"></asp:TextBox>
          </div>
          <div style="width: 859px; height: 60px;" align="center" >
              
              <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" Text="Login" 
                  onclick="Button1_Click" />
              <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" Text="Reset" 
                  onclick="Button2_Click" style="height: 24px" />
              
              <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Back" 
                  onclick="Button3_Click" PostBackUrl="~/home.aspx" />
              
              <br />
              <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                  Text="password or id is wrong" Visible="False"></asp:Label>
              
          </div>
    <br />
    <br />
    </form>
</div>
</asp:Content>



