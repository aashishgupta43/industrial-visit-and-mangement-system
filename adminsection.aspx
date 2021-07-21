<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminsection.aspx.cs" Inherits="adminsection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
      
    <div style="height: 460px; width: 798px;" align="right"> &nbsp;&nbsp; &nbsp;<div align="center" 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 800px; font-size: x-large; margin-left: 0px;">

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        
        &nbsp;<div style="width: 192px; ">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
        <div align="center" style="float: left; width: 511px; height: 266px;">
        <asp:Image ID="Image2" runat="server" Width="328px" Height="257px" 
                ImageUrl="~/images/ADMIN.jpg" /></div>
        <div style="width: 280px; height: 269px; color: #003366; font-weight: bold;" 
        align="center">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton2_Click1" PostBackUrl="~/adminedit.aspx">Schedule New Site</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton3_Click" PostBackUrl="~/schedulelist.aspx">Schedule List</asp:LinkButton>
            
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton3_Click" PostBackUrl="~/adminedit.aspx">Delete Site</asp:LinkButton>
            
          <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton3_Click" PostBackUrl="~/adminedit.aspx">Edit Site</asp:LinkButton>

            <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton3_Click" PostBackUrl="~/adminedit.aspx">Update View</asp:LinkButton>
            
        </div>&nbsp;</div>


</asp:Content>

