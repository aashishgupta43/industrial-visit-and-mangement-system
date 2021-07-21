<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="schedule.aspx.cs" Inherits="schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1">
        <div align="center" style="height: 512px">

                    <div align="center" 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 800px; font-size: x-large; margin-left: 0px;">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>


            <div
                style="height: 44px; width: 709px; font-size: xx-large; font-weight: bold; color: #FFFFCC; background-color: #003366; text-decoration: underline blink;"
                align="center">
                SCHEDULE SITE
            </div>


          
            



            <div style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                SITE ID
            </div>
            <div
                style="width: 650px;  font-size: large; font-weight: bold; color: #003366; margin-left: 250px; margin-right: 230px; "  >
                &nbsp;
                  <asp:TextBox ID="TextBox1"  runat="server"
                      Width="197px" OnTextChanged="TextBox1_TextChanged" Enabled="False" ></asp:TextBox>

                <asp:Label ID="Label2" runat="server" Text="BOOKING ID"></asp:Label>

            <asp:TextBox ID="TextBox12" runat="server" OnTextChanged="TextBox12_TextChanged"  Width="100px" Enabled="False" TextMode="Number"></asp:TextBox>

               
          
            

            </div>
            <div
                style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                SITE NAME
            </div>
            <div
                style="width: 283px; font-size: large; font-weight: bold; color: #003366;  margin-right: 200px; ">
                &nbsp; 
                  <asp:TextBox ID="TextBox2"  runat="server"
                      Width="197px" OnTextChanged="TextBox2_TextChanged" Enabled="False" ></asp:TextBox>
            </div>
            <asp:Image ID="Image2" runat="server" ImageAlign="Right" Height="204px" Width="200px " BorderStyle="Solid" style="margin-left: px; margin-top: 37px" />

            <div
                style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                TRADE
            </div>
            <div
                style="width: 283px; font-size: large; font-weight: bold; color: #003366; margin-right: 200px; ">
                &nbsp; 
                  <asp:TextBox ID="TextBox3" runat="server"
                      Width="197px" OnTextChanged="TextBox3_TextChanged" Style="height: 22px" Enabled="False" ></asp:TextBox>
            </div>
            
            <div
                style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                STATE
            </div>
            <div
                style="width: 283px; font-size: large; font-weight: bold; color: #003366; margin-right: 200px; ">
                &nbsp; 
                  <asp:TextBox ID="TextBox4"  runat="server"
                      Width="197px" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged" Enabled="False"></asp:TextBox>
            </div>
            <div
                style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                CITY
            </div>
            <div
                style="width: 283px; font-size: large; font-weight: bold; color: #003366;  margin-right: 200px;">
                &nbsp; 
                  <asp:TextBox ID="TextBox5"
                      runat="server" Width="197px" OnTextChanged="TextBox5_TextChanged" Enabled="False"></asp:TextBox>

            </div>
            

            <div
                style="height: 44px; width: 650px; font-size: xx-large; font-weight: bold; color: #FFFFCC; background-color: #003366; text-decoration: underline blink; margin-right:200px"
                align="center">
                COLLEGE INFORMATION
            </div>



        <div
            style="width: 150px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
            COLLEGE NO
        </div>
        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; margin-right: 200px;">
            &nbsp;
            <asp:TextBox ID="TextBox6" runat="server"
                Width="197px"    OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
        </div>
        <div
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 150px;" align="right">
            BATCH NO
        </div>
        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;margin-right: 200px; ">
            &nbsp;
            <asp:TextBox
                ID="TextBox7" runat="server" Width="197px"  OnTextChanged="TextBox7_TextChanged"  style="height: 22px"  ></asp:TextBox>
        </div>

        <div
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 170px;" align="right">
           SCHEDULED DATE&nbsp;
        </div>

        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;margin-right: 200px; ">
            &nbsp;
            <asp:TextBox
                ID="TextBox8" runat="server" Width="197px"  OnTextChanged="TextBox8_TextChanged" TextMode="Date" ></asp:TextBox>
        </div>


    <div
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 150px;" align="right">
             VISITING DATE
        </div>

        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; margin-right: 200px; " aria-busy="False">
            &nbsp;
            <asp:TextBox
                ID="TextBox9" runat="server" Width="197px"  OnTextChanged="TextBox9_TextChanged" TextMode="Date"></asp:TextBox>
        </div>

    <div
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 150px;" align="right">
           VISITING TIME 
        </div>

        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;margin-right: 200px; ">
            &nbsp;
            <asp:TextBox
                ID="TextBox10" runat="server" Width="197px" OnTextChanged="TextBox10_TextChanged" style="height: 22px" TextMode="Time"></asp:TextBox>
        </div>

              <div
            style="font-size: large; font-weight: bold; color: #003366; float: left; width: 150px;" align="right">
           TRADE
        </div>

        <div
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; margin-right: 200px;">
            &nbsp;
            <asp:TextBox
                ID="TextBox11" runat="server" Width="197px"  OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
        </div>




        <div style="height: 90px; width: 346px; margin-right: 200px;"
            align="center"   >
            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Submit"
                Height="30px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Reset"
                Height="30px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="30px"
                Text="Cancel" OnClick="Button3_Click" PostBackUrl="~/home.aspx" />
             
                <asp:Button ID="Button4" style="width: 59px; font-weight: bold; color: #003366; height: 26px;" 
                    align="right" runat="server" OnClick="Butttonlogout_Click" Text="logout" />

               
          
            

            <br />
            <br />
            <asp:Label ID="mess" runat="server" BackColor="Red" BorderStyle="Solid"
                BorderWidth="0px" Font-Bold="True" ForeColor="White"
                Text="password is not same" Visible="False"></asp:Label>

        </div>
        
    </form>
    
</asp:Content>


