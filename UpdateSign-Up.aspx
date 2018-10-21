 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateSign-Up.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
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
    $(document).ready(function myfunction() {
        $("#btnCart").click(function myfunction() {
            window.location.href = "~/Cart.aspx";
        });
    });
    </script>

<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" >
<script type="text/javascript">
    $(function () {
        $("#btnShow").click(function () {
            $('#demoModal').modal('show');
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
                    <li><a href="Products.aspx">All Produts</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="Sign-in.aspx">Sign-in</a></li>
        </ul>        
    </div>
   </nav>
   
   <div class="container" align="center">
    <div class="form-horizontal" align="center">
    <h2>Insert User</h2>
    <hr />
   <form id="form1" runat="server">
      <div class="form-group">
                     <div class="col-md-3">
                     <asp:Label ID="lblid" runat="server" CssClass="col-md-2 control-label" Visible="False"><b></b></asp:Label>
  
                    </div>
        </div>
        <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" 
                        Text="Name" Font-Bold="True"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtfname" CssClass="form-control" runat="server" 
                            placeholder="First Name" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtfname" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Username*" Font-Bold="True"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtlname" CssClass="form-control" runat="server" 
                            placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtlname" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                  </div>
             </div>


                   <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Email*" Font-Bold="True"></asp:Label>
                    <div class="col-md-7">
                    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" 
                            placeholder="Email" AutoCompleteType="Disabled"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ErrorMessage="Invalid Email format" ControlToValidate="txtemail" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ForeColor="Red"></asp:RegularExpressionValidator>                    
                   </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" 
                         Text="Password*" Font-Bold="True"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" 
                            placeholder="Password" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" Password field is Required !" ControlToValidate="txtpass" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" 
                        Font-Bold="True">Confirm-Password*</asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtconpass" CssClass="form-control" runat="server" 
                            placeholder="Confirm-Password" TextMode="Password" 
                            AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ErrorMessage="Password does not match!" ControlToValidate="txtconpass" 
                            ForeColor="Red" ControlToCompare="txtpass"></asp:CompareValidator>
                  </div>
                </div>
                     <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Font-Bold="True" >BirthDate*</asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="dateTimePicker1" CssClass="form-control" runat="server" data-validation="required" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" CssClass="text-danger" runat="server" ErrorMessage="Birth Date is Required  !" 
                        ControlToValidate="dateTimePicker1" ForeColor="Red" MaximumValue="12/31/2008" MinimumValue="12/31/1938" Type="Date" 
                        Display="Dynamic"></asp:RangeValidator>
                        
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text=""><b>Gender*</b></asp:Label>
                    <div class="col-md-1">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                 <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                 </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" CssClass="text-danger"
                    ControlToValidate="RadioButtonList2" ErrorMessage="Select the Gender" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
             </div>
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="" Font-Bold="True">Phone No*</asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtphoneno" MaxLength="12" CssClass="form-control" runat="server" 
                            placeholder="Phon no." TextMode="Number" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regx" runat="server" 
                            ErrorMessage="Enter valid Phone number !" 
                            ControlToValidate="txtphoneno" 
                            ValidationExpression="^([9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" 
                            Font-Size="Small" Font-Bold="False" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="" Font-Bold="True">Address*</asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server" 
                            placeholder="Address" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" Address field  is Required !" 
                            ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnShow" runat="server" Text="Insert User" 
                            class="btn btn-primary btn-lg" OnClick="btSignup_Click" 
                            Font-Bold="True" Font-Size="Large"/>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                            CssClass="btn btn-primary btn-lg" OnClick="btnCancel_Click" 
                            Font-Bold="True" Font-Size="Large"/>
                    </div>
                </div>
                    <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblMsg" runat="server" CssClass="text-green"></asp:Label>
                    </div>
                </div>
            </div>
   </div>
   </form>

    <br />
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
