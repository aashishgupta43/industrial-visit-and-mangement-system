


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width:100%;
    }
    .style2
    {
        width: 327px;
    }
    .style3
    {
        width: 244px;
    }
    .style5
    {
        color: white;
        font-weight: bold;
        font-family: "Times New Roman";
        font-size: x-large;
        background-color: #003366;
    }
    .style6
    {
        color: #FFFFFF;
        font-size: medium;
    }
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td align="center" colspan="3" 
            style="color: #FFFFFF; background-color: #003366; font-weight: bold; font-size: x-large">
            Contact Us</td>
    </tr>
    <tr>
        <td class="style2" style="color: #003366; font-weight: bold">
            Name</td>
        <td class="style3" style="color: #003366; font-weight: bold">
            No.</td>
        <td style="color: #003366; font-weight: bold">
            E-mail Id</td>
    </tr>
    <tr>
        <td class="style2" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            Administrator</td>
        <td class="style3" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            9140567126</td>
        <td style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            aashu</td>
    </tr>
    <tr>
        <td class="auto-style12" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            manager</td>
        <td class="auto-style13" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            </td>
        <td style="color: #FFFFFF; font-weight: bold; background-color: #003366" class="auto-style14">
            </td>
    </tr>
 
    <tr>
        <td class="style2" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            xyz</td>
        <td class="style3" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            xyz</td>
        <td style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            xz</td>
        <td class="style3" 
            style="color: #FFFFFF; font-weight: bold; background-color: #003366">
            xyz</td>
        <td class="style5" 
            style="mso-ascii-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times: New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-color-index: 1; mso-font-kerning: 12.0pt; language: en-US; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-color: white; mso-style-textfill-fill-alpha: 100.0%;">
            <span class="style6">
            aryangamer.in</span></td>
    </tr>
 
    </table>

    <style> input[type=text], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */  
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
        }

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;

}
    .auto-style12 {
        width: 327px;
        height: 21px;
    }
    .auto-style13 {
        width: 244px;
        height: 21px;
    }
    .auto-style14 {
        height: 21px;
    }
</style>

    <div class="col-sm-12">
  <form  >


      <asp:Label ID="Label1" runat="server" Text="Label"> First Name</asp:Label>

      <asp:TextBox ID="fname" runat="server" OnTextChanged="fname_TextChanged"></asp:TextBox>

       <asp:Label ID="Label2" runat="server" Text="Label"> Last Name </asp:Label>
        <asp:TextBox ID="lname" runat="server" OnTextChanged="lname_TextChanged"></asp:TextBox>

       <asp:Label ID="Label3" runat="server" Text="Label">Email </asp:Label>

        <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
       <asp:Label ID="Label4" runat="server" Text="Label"> Subject</asp:Label>


        <asp:TextBox ID="sub" runat="server" OnTextChanged="sub_TextChanged" TextMode="MultiLine"></asp:TextBox>

      <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
</form>
        </div>

</asp:Content>



