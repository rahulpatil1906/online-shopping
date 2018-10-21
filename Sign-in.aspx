<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign-in.aspx.cs" Inherits="Sign_in" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign-in</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
body  {
    background-image: url("images/th1.jpg");
    background-color: #cccccc;
}
</style>





    
</head>
<body >
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
                    <li><a href="Products.aspx">All Produts</a></li>
                </ul>
            </li>
        </ul>
         </div>
   </nav>
    <!--- Sign in start  -->
    <div class="container" align="center">
            <div class="form-horizontal" align="center">
                <h2>Login</h2>
                <hr />
                <form id="form1" runat="server">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtuname" CssClass="form-control" runat="server" 
                            placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage="The Email field is Required !" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" placeholder="Password" 
                            TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage="The Password field is Required !" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-3">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnShow" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" />
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Sign-Up.aspx" onclick="LinkButton1_Click" CssClass="red" Font-Size="Medium">Create New Account</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        </form>
             <!--- Sign in end  -->
             

</body>
</html>
