<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminedit.aspx.cs" Inherits="_adminedit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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


</head>
<body>
    <form id="form1" runat="server">
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
          <div align="center" 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 1300px; font-size: x-large; margin-left: 0px;">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>


         
             <asp:Button ID="btnAdd" runat="server" ForeColor="#003366" Font-Bold="True" Text="Add New Record" OnClick="AddNewRecord" />  
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click"  >logout</asp:LinkButton>&nbsp;&nbsp;&nbsp
            <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton18_Click"  >home</asp:LinkButton>&nbsp;&nbsp;&nbsp
           <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton18_Click"  >back</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
    
              
                           
    
       
        <br />
        <br />
        <br />
               
           <div>
        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True"
            AutoGenerateColumns="False" onrowdeleting="RowDeleting"
            OnRowCancelingEdit="cancelRecord" OnRowEditing="editRecord" 
            OnRowUpdating="updateRecord" CellPadding="4" GridLines="None" Width="1297px"
            ForeColor="#033333" AllowPaging="false" PageSize="5" PagerSettings-Mode="Numeric" OnpageIndexChanging="PaginatetheData" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging"  >
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
                <HeaderTemplate>
                    Site ID
                </HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblId" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>Site Name</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblName" runat="server" Text='<%#Bind("name") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%#Bind("name") %>' MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtName">

            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="txtName" 
                ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
           
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewName" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtNewName">

            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtNewName" runat="server" Text="*" ToolTip="Enter alphabate " 
                ControlToValidate="txtNewName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
          
            </FooterTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField>
                <HeaderTemplate>
                    Trade
                </HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID="lblAge" runat ="server" Text='<%# Bind("trade") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID ="txtAge" runat="server" Text='<%#Bind("trade") %>' MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtAge" runat="server" Text="*" ToolTip="Enter age"
                 ControlToValidate="txtAge"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtAge" runat="server" Text="*" ToolTip="Enter numeric value" 
                ControlToValidate="txtAge" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
           <asp:TextBox ID="txtNewAge" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewAge" runat="server" Text="*" ToolTip="Enter age" 
                ControlToValidate="txtNewAge"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revNewtxtAge" runat="server" Text="*" ToolTip="Enter numeric value"
                 ControlToValidate="txtNewAge" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>State</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblCountry" runat="server" Text='<%# Bind("state") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtCountry" runat="server" Text='<%#Bind("state") %>' MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCountry" runat="server" Text="*" ToolTip="Enter country" 
                ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
        
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewCountry" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewCountry" runat="server" Text="*" ToolTip="Enter country" 
                ControlToValidate="txtNewCountry"></asp:RequiredFieldValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>City</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblCity" runat="server" Text='<%#Bind("city") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtCity" runat="server" Text='<%#Bind("city") %>' MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCity" runat="server" Text="*" ToolTip="Enter city" 
                ControlToValidate="txtCity"></asp:RequiredFieldValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewCity" runat="server" MaxLength="20" OnTextChanged="txtNewCity_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewCity" runat="server" Text="*" ToolTip="Enter city" 
                ControlToValidate="txtNewCity"></asp:RequiredFieldValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>Photo</HeaderTemplate>
            <ItemTemplate>
       
               <asp:ImageButton ID="imgPhoto" Width="100px" Height="100px" runat="server" 
                   Style="cursor: pointer" ImageUrl='<%# Eval("photopath") %>'  OnClientClick="return LoadDiv(this.src);" />

            </ItemTemplate>
            <EditItemTemplate>
            <asp:FileUpload ID="fuPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RegularExpressionValidator ID="revfuPhoto" runat="server" Text="*" ToolTip="Image formate only" 
                ControlToValidate="fuPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:FileUpload ID="fuNewPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RequiredFieldValidator ID="rfvfuNewPhoto" runat="server" ErrorMessage="*" ToolTip="Select Photo"
                 ControlToValidate="fuNewPhoto"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revfuNewPhoto" runat="server" Text="*" ToolTip="Image formate only" 
                 ControlToValidate ="fuNewPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>Operation</HeaderTemplate>
            <ItemTemplate>
            <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CausesValidation="true" OnClientClick="return confirm('Are you sure?')" />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
            </EditItemTemplate>
 
            <FooterTemplate>
            <asp:Button ID="btnNewInsert" runat="server" Text="Insert" OnClick="InsertNewRecord"/>
            <asp:Button ID="btnNewCancel" runat="server" Text="Cancel" OnClick="AddNewCancel" CausesValidation="false" />
            </FooterTemplate>        
            </asp:TemplateField>           
              
                
                <asp:HyperLinkField Text="Schedule" DataNavigateUrlFields="id,name,trade,state,city,photopath" 
                    DataNavigateUrlFormatString="schedule.aspx?id={0}&name={1}&trade={2}&state={3}&city={4}&photopath={5}" />
            </Columns>
            <EmptyDataTemplate>
                      No record available                    
            </EmptyDataTemplate>       
        </asp:GridView>
        <br />
               <br />
               <br />
               <br />
               <br />
    </div>
         
    </form>
</body>
</html>
