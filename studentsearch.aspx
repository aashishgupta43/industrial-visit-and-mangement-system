<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentsearch.aspx.cs" Inherits="stug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">

     function LoadDiv(url) {

         var img = new Image();

         var bcgDiv = document.getElementById("divBackground");

         var imgDiv = document.getElementById("divImage");

         var imgFull = document.getElementById("imgFull");

         var imgLoader = document.getElementById("imgLoader");



         imgLoader.style.display = "block";


         img.onload = function () {

             imgFull.src = img.src;

             imgFull.style.display = "block";
             imgLoader.style.display = "none";

         };

         img.src = url;

         var width = document.body.clientWidth;

         if (document.body.clientHeight > document.body.scrollHeight) {

             bcgDiv.style.height = document.body.clientHeight + "px";

         }

         else {

             bcgDiv.style.height = document.body.scrollHeight + "px";

         }



         imgDiv.style.left = (width - 650) / 2 + "px";

         imgDiv.style.top = "20px";

         bcgDiv.style.width = "100%";



         bcgDiv.style.display = "block";

         imgDiv.style.display = "block";


         return false;

     }

     function HideDiv() {

         var bcgDiv = document.getElementById("divBackground");

         var imgDiv = document.getElementById("divImage");

         var imgFull = document.getElementById("imgFull");

         if (bcgDiv != null) {

             bcgDiv.style.display = "none";

             imgDiv.style.display = "none";

             imgFull.style.display = "none";

         }

     }
</script>

    <style type="text/css">

     body

     {

        margin:0;

        padding:0;

        height:100%;

     }

     .modal

     {

        display: none;

        position: absolute;

        top: 0px;

        left: 0px;

        background-color:black;

        z-index:100;

        opacity: 0.8;

        filter: alpha(opacity=60);

        -moz-opacity:0.8;

        min-height: 100%;

     }

     #divImage

     {

        display: none;

        z-index: 1000;

        position: fixed;

        top: 0;

        left: 0;

        background-color:White;

        height: 550px;

        width: 600px;

        padding: 3px;

        border: solid 1px black;

     }

        </style>

    <form id="form1" >
            <div id="divBackground">
   </div>

    <div id="divImage">

    <table style="height: 100%; width: 100%">

        <tr>

            <td valign="middle" align="center">

                <img id="imgLoader" src="images/loading.gif" />

                <img id="imgFull" alt="" src="" style="display: none; height: 500px; width: 590px" />

            </td>

        </tr>

        <tr>

            <td align="center" valign="bottom">

                <input id="btnClose" type="button" value="Close" onclick="HideDiv()"/>

            </td>

        </tr>

    </table>

</div>
       
        <div align="center">
         <div 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 800px; font-size: x-large; margin-left: 0px;">

        
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         </div>&nbsp;
         <div style="width: 80px; ">
            <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True"
                ForeColor="#003366" onclick="LinkButton18_Click"  >logout</asp:LinkButton>

        </div>      
   <div style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" >
            
                  Search By State</div>
 <div style="width: 283px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" >
                  &nbsp;
                  <asp:TextBox ID="TextBox1" onkeypress="return isNumberKey(event)" runat="server" 

Width="254px" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
        </div>
        <br />
         <br />

   <div  style="width: 353px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right" >
            
         Search By Trade</div>
        <div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; float: left;" align="right">
                  &nbsp; 
                  <asp:TextBox ID="TextBox2" onkeypress="return isNumberKey(event)" runat="server" 
                      Width="254px" OnTextChanged="TextBox2_TextChanged1" style="margin-left: 0px"></asp:TextBox>
        </div>


     </div>   
     <br />
        <br />


          <div style="height: 90px; width: 657px; margin-left: 0px;" 
            align="center" >
        <asp:Button ID="Button17" runat="server" BackColor="#003366" BorderStyle="Solid" 
                          BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Find" 
                          Height="41px" onclick="LinkButton17_Click" style="margin-left: 141px" Width="141px" />
              </div>
       
           <div>
               <asp:GridView ID="GridView1" runat="server" 
                   AutoGenerateColumns="False" GridLines="None" Width="1131px"  AllowPaging="True" PageSize="5" PagerSettings-Mode="Numeric" 
                   OnpageIndexChanging="PaginatetheData"
                   ForeColor="#033333" style="text-align: center">
                   <RowStyle HorizontalAlign="Center" />
                   <AlternatingRowStyle BackColor="White" />
                   <EditRowStyle BackColor="#7C6F57" />
                   <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#E3EAEB" />
                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

                   <Columns>

                       <asp:TemplateField>
                           <HeaderTemplate>Site id</HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblId" runat="server" Text='<%#Bind("id")%>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField>
                           <HeaderTemplate>Site Name</HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblName" runat="server" Text='<%#Bind("name") %>'></asp:Label>
                           </ItemTemplate>
                       
                       </asp:TemplateField>

                       <asp:TemplateField>
                           <HeaderTemplate>
                               Trade
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblAge" runat="server" Text='<%#Bind("trade") %>'></asp:Label>
                           </ItemTemplate>
                       
                       </asp:TemplateField>

                       <asp:TemplateField>
                           <HeaderTemplate>State</HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblCountry" runat="server" Text='<%#Bind("state") %>'></asp:Label>
                           </ItemTemplate>
                     
                       </asp:TemplateField>

                       <asp:TemplateField>
                           <HeaderTemplate>City</HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblCity" runat="server" Text='<%#Bind("city") %>'></asp:Label>
                           </ItemTemplate>
                         
                       </asp:TemplateField>

                       <asp:TemplateField>
                           <HeaderTemplate>Photo</HeaderTemplate>
                           <ItemTemplate>
                              <asp:ImageButton ID="imgPhoto" Width="100px" Height="100px" runat="server" Style="cursor: pointer" 
                                  ImageUrl='<%# Eval("photopath")%>'  OnClientClick="return LoadDiv(this.src);" />
                           </ItemTemplate>
                         
                       </asp:TemplateField>

                   </Columns>
                   <EmptyDataTemplate>
                       No record available                    
                   </EmptyDataTemplate>
               </asp:GridView>
       
     
    </div>
           
    </form>

</asp:Content>

