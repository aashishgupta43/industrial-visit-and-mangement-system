<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentsignup.aspx.cs" Inherits="student_studentsignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <div style="height: 431px; width: 1064px; margin-left: 3px;" align="center">
<form id="form1">
    <div align="center" style="height: 469px"> 
        <div
            style="height: 44px; width: 709px; font-size: xx-large; font-weight: bold; color: #FFFFCC; background-color: #003366; text-decoration: underline blink;"
            align="center">
            STUDENT SIGNUP
        </div>


         <div style="width: 959px; font-weight: bold; color: #003366; height: 25px; " align="right" 
              >
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" PostBackUrl="~/studentlogin.aspx">SIGNUP</asp:LinkButton>
        </div>
        <br />


       
    <div style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" >
            
                  First Name</div>



        <div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp;
                  <asp:TextBox ID="fname" onkeypress="return isNumberKey(event)" runat="server" 

Width="197px" OnTextChanged="fname_TextChanged"></asp:TextBox>
        </div>
        <div  style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" >
            
                  Last name</div>
        <div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="lname" onkeypress="return isNumberKey(event)" runat="server" 
                      Width="197px" OnTextChanged="lname_TextChanged"></asp:TextBox>
        </div>
        <div 
                      
            
            
            
            
            style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" 
            >
                  E-mail</div><div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="mail" runat="server" 
                      Width="197px" OnTextChanged="mail_TextChanged" style="height: 22px"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" 
            >
                  Mobile</div><div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="mob" onkeypress="return isNumber(event)" runat="server"
                      Width="197px" AutoPostBack="True" OnTextChanged="mob_TextChanged"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" 
            >
                  User id</div><div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="uid" 
                      runat="server" Width="197px" OnTextChanged="uid_TextChanged"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" 
            >
                  Password</div> <div 
                      
            
            
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; ">
                  &nbsp; <asp:TextBox ID="pass" runat="server" 
                      Width="197px" TextMode="Password" OnTextChanged="pass_TextChanged"></asp:TextBox>
        </div> 
        <div 
                      
            
            
            
            
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 353px;" align="right" 
           >
                  Confirm password</div><div 
                      
            
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; ">&nbsp; <asp:TextBox 
                ID="cpass" runat="server" Width="197px" TextMode="Password" OnTextChanged="cpass_TextChanged"></asp:TextBox></div>
                  <div style="height: 90px; width: 346px; margin-left: 0px;" 
            align="center" >
                      &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="Solid" 
                          BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Submit" 
                          Height="30px" onclick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="Solid" 
                          BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Reset" 
                          Height="30px" onclick="Button2_Click" />
                      <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderStyle="Solid" 
                          BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="30px" 
                          Text="Cancel" onclick="Button3_Click" PostBackUrl="~/home.aspx" />
                      <br />
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" 
                          CssClass="alert-danger" ErrorMessage="password not match"></asp:CompareValidator>
                      <br />
                     <asp:Label ID="mess" runat="server" BackColor="Red" BorderStyle="Solid" 
                          BorderWidth="0px" Font-Bold="True" ForeColor="White" 
                          Text="password is not same" Visible="False"></asp:Label>
                      </div>
        </div>
           </form>
</div>
</asp:Content>

