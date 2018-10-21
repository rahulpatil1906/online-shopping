 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
 </script>
<!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"></link>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<![endif]-->

<script language="javascript" type="text/javascript">
    $(document).ready(function cart(){
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
<nav class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
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

            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Products <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="Products.aspx">All Products</a></li>
                    
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-left" runat="server" >
        <asp:Button ID="btnSignOut" runat="server" Class="btn btn-danger navbar-btn" Text="Sign out" onclick="btnSignOut_Click"/>
        
        <asp:Button ID="btnSignIn" runat="server" Class="btn btn-danger navbar-btn" Text="Sign in" onclick="btnSignIn_Click"/>
         <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
             Cart <span class="badge" id="pCount" runat="server"></span>
        </form>
    </div>
    </nav>
    <div>
    <h3><center>
    <asp:Label ID="lblSuccess" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#3333CC"></center></h3></asp:Label>
    </div>
    <br />
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">
                    <a style="text-decoration:none;" href="ProductView.aspx?P_ID=<%#Eval("P_ID") %>">
                    <div class="thumbnail">
                        <img src="images/ProductImages/<%#Eval("P_ID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
                        <div class="caption">
                            <div class="proCat"><%#Eval("CatName") %></div>
                            <div class="proName"><%#Eval("P_Name") %></div>
                            <div class="proPrice"><span class="proOgPrice"><%#Eval("P_Price") %><span class="proPriceDiscount">(<%#Eval("DiscAmount") %>  Off)</span> </div>
                        </div>
                    </div>
                        </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>


    <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2018 Himalaya.com &middot; <a href="Home.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->


    </form>         
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="Home.aspx/js/bootstrap.min.js"></script>
    
   

   
    
</body>
</html>
