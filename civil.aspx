<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Civil.aspx.cs" Inherits="Civil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../student/js/validation.js" language="javascript" type="text/javascript"></script>
<link href="plu/Calendar/calendar/css/smoothness/jquery-ui-1.7.1.custom.css" rel="stylesheet" type="text/css" />
<script src="plu/Calendar/calendar/js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="plu/Calendar/calendar/js/jquery-ui-1.7.1.custom.min.js" type="text/javascript"></script>
    <link href="Styles/site.css" rel="stylesheet" />
<script type="text/javascript">
    $(function () {
        $("#doa").datepicker({ changeMonth: true, changeYear: true, startYear: 1900, EndYear: 2000 });
        $("#dob").datepicker({ changeMonth: true, changeYear: true });
    });
    function Reset1_onclick() {

    } function add3_onclick() {

    }
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</script>
    <link href="Styles/slider.css" rel="stylesheet" />
   <link href="Styles/grid.css" rel="stylesheet" />
   <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="Styles/tradestyle.css" rel="stylesheet" />
    <script>
        $(window).load(function () {
            $('.slider')._TMS({
                show: 0,
                pauseOnHover: false,
                prevBu: '.prev',
                nextBu: '.next',
                playBu: false,
                duration: 800,
                preset: 'random',
                pagination: false, //'.pagination',true,'<ul></ul>'
                pagNums: false,
                slideshow: 8000,
                numStatus: false,
                banners: true,
                waitBannerAnimation: false,
                progressBar: false
            });
            $("#tabs").tabs();
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
    </script>
</head>
    <body runat="server"  style="margin: 0px 10px 0px 10px; background-color:white; border: 1px solid #496077; height:850px; width:1320px; top: 0px; left: 0px;">
        <form runat="server" id="form2" >
        
<div style="background-color:#003366" >
 <img id="Image1" src="IMAGES/6.jpg" style="height: 250px; width: 100%;">
            
  <h1 align="center" style="background-color: #003366; height: 68px; width: 1286px; top: 0px; left: 0px;  font-weight: 700;
    margin: 0px;
    padding: 0px 0px 0px 20px;
    color: #f9f9f9;
    border: none;
    line-height: 2em;
    font-size: 2.5em;
    position: relative;
    margin: 0px;
    padding: 0px;
    
    width: 100%;">Industrial visit and Management syestem</h1>


    <h1 align="center" style="background-color: #003366; height: 68px; width: 1286px; top: 0px; left: 0px;  font-weight: 700;
    margin: 0px;
    padding: 0px 0px 0px 20px;
    color: #f9f9f9;
    border: none;
    line-height: 2em;
    font-size: 3em;
    position: relative;
    margin: 0px;
    padding: 0px;
    
    width: 100%;"> 
        Civil Industry
    </h1>

     
     
 
     <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu"
                            EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal"
                            BackColor="#00CCFF" BorderStyle="Solid" Font-Bold="True" ForeColor="White">
                            <Items>
                                <asp:MenuItem NavigateUrl="~/home.aspx" Text="Back" />
                                <asp:MenuItem NavigateUrl="~/home.aspx" Text="Home"></asp:MenuItem>
                                <asp:MenuItem Text="Login" Value="Contact Us" NavigateUrl="~/studentlogin.aspx"></asp:MenuItem>
                                
                              <asp:MenuItem Text="Next" Value="Contact Us" NavigateUrl="~/Computer_science.aspx"></asp:MenuItem>
                            </Items>
                        </asp:Menu>



    
                
     </div>
&nbsp &nbsp
    <div class="boxes" >
        <div class="grid_4">
            <figure>
                <div><img src="images/c1.jpg" alt="" height="340"></div>
                <figcaption>
                    <h3>Purificationn Plant</h3>
                    <p>It is built across the Varahi river. Power generation takes place underground. Varahi is Karnataka's first underground powerhouse.</p> 
                  
                </figcaption>
            </figure>
        </div>
        <div class="grid_4">
            <figure>
                <div><img src="images/c2.jpg" alt="" height="340"></div>
                <figcaption>
                    <h3>Varahi Power Plant</h3>
                    <p>It is built across the Varahi river. Power generation takes place underground. Varahi is Karnataka's first underground powerhouse.</p>
                  
                </figcaption>
            </figure>
        </div>
        <div class="grid_4">
            <figure>
                <div><img src="images/c3.jpg" alt="" height="340"></div>
                <figcaption>
                    <h3>Filtaration Plant</h3>
                    <p>It is built across the Varahi river. Power generation takes place underground. Varahi is Karnataka's first underground powerhouse.</p> 
                  
                </figcaption>
            </figure>
        </div>
        
     
    </div>
 
    <div class="footer">
        
        Copyright &copy; Aashugamer.in
    </div>


</form>
   
</body>
</html>
