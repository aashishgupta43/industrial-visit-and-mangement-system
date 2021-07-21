<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="student_section.aspx.cs" Inherits="student_section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height: 460px; width: 798px;" align="right"> &nbsp;&nbsp; &nbsp;
        <div align="center" 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 800px; font-size: x-large; margin-left: 0px;">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>&nbsp;
        <div align="center" style="float: left; width: 323px; height: 266px;">
        <asp:Image ID="Image2" runat="server" Width="274px" Height="266px" 
                ImageUrl="~/images/user.jpg" /></div>
        <div style="width: 280px; height: 269px; color: #003366; font-weight: bold;" 
        align="center">
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton1_Click" PostBackUrl="~/studentsearch.aspx">Search Industrial Site</asp:LinkButton>
            <br />
            
            <asp:LinkButton ID="LinkButton17" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton17_Click">logout</asp:LinkButton>
            <br />
            
            
          
            
        </div>&nbsp;</div>

</asp:Content>

