<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home1.aspx.cs" Inherits="home1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
    </script>
    <script src="Defualt.aspx/js/js/"></script>
    <script src="Defualt.aspx/js/css/"></script>
    <!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"></link>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function cart() {
        $("#btnCart").click(function cart() {
            window.location.href = "CART1.aspx";
        });
    });
 </script>

 <style>
body  {
    background-image: url("images/th1.jpg");
    background-color: #cccccc;
}
</style>




</head>
<body>
<nav class="navbar navbar-default" role="navigation">
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse" Data-Toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="#" class="navbar-brand"> <span> <img alt="logo" img src="images/the-himalaya-drug-company-squarelogo.png" height="30" /></span></a>
    </div>
    <!-- Collection of nav links, forms, and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="home1.aspx">Home</a></li>
            <li class="Dropdown">
                <a Data-Toggle="dropdown" class="dropdown-toggle" href="#">Products <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="Products.aspx">All Products</a></li>

                </ul> 
                <li class="navbar-form navbar-left"><a href="AboutUs.aspx">About Us</a></li>   
       
            </li>
       </ul>
       <div>
        <form id="Form2" class="navbar-form navbar-left" runat="server" >
        <div>
        <asp:Button ID="btnSignOut" runat="server" Class="btn btn-danger navbar-btn" Text="Sign out" onclick="btnSignOut_Click"/>
        </div>
        <asp:Button ID="btnSignin" runat="server" Class="btn btn-danger navbar-btn" Text="Sign in" onclick="btnSignin_Click"/>

        <asp:Button ID="btnSignup" runat="server" Class="btn btn-danger  navbar-btn" Text="Sign up" onclick="btnSignup_Click"/>
         <button id="btnCart" class="btn btn-primary navbar-btn" type="button" onclick="btnCart_Click">
         
             Cart <span class="badge" id="pCount" runat="server"></span>
         </div>
             
             
        </form>
           
            </div>
            </div>
            </nav>
  
   <h2><center><bold><i>Himalaya Product Shopping!</i></bold></center></h2>
   <div>
   <img src="images/himalaya-drug-dsim.jpg"  height="600px" width="1350px"/>
    </div>
    <hr />
    <br />
        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="images/moms_maternity.jpg" alt="thumb01" width="140" height="140" />
                    <h2>Mother's Care</h2>
                    <p>Every year, 300 million Himalaya products enter the homes of consumers around the world. With a range of over 300 healthcare and personal care products including brands like Liv.52, Cystone, and Bonnisan, we touch the lives of millions of customers worldwide, giving them products that help them lead healthier, enriched lives.</p>
                    
                </div>
                <div class="col-lg-4">
                    <img class="img-circle"  src="images/thEACQ681A.jpg" alt="thumb02" width="140" height="140" />
                    <h2>Baby's Care</h2>
                    <p>With a history spanning eight decades in the area of herbal research, Himalaya shares a close relationship with nature. We are in the business of not only promoting good health but also safeguarding the health of our planet. Ever since our inception, we have taken great care to protect biodiversity, collect herbs in a sustainable way and promote good agricultural practices. </p>
                    
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="images/th9941MXWF.jpg"  alt="thumb03" width="140" height="140" />
                    <h2>Personal Care</h2>
                    <p>In 1955, Himalaya introduced Liv.52, a liver formulation that ensures optimum liver function. The product soon became our flagship brand and a top selling herbal medicine. Other brands soon followed including Cystone, Bonnisan and Rumalaya forte, products that went on to become household names.</p>
                
                </div>
            </div>
        </div>
        <!--- Middle Contents -->
        </br>

    <!--- Footer  -->

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2018 Himalaya.com &middot; <a href="home1.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->

    
    

</body>
</html>
