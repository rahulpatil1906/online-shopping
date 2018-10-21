<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Payment1.aspx.cs" Inherits="Payment1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPidSizeID" runat="server" />


    <div style="padding-top: 20px;">
        <div class="col-md-9">
            <div class="form-horizontal">
                <h3>Delivery Address</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtName" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>

                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtAddress" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>

                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Pin Code"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Invalid Pincode Number" ControlToValidate="txtPinCode" 
                            ValidationExpression="^[0-9''-'\s]{1,6}$" ForeColor="Red"></asp:RegularExpressionValidator>

                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Mobile Number"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regx" runat="server" 
                            ErrorMessage="Enter valid Phone number !" 
                            ControlToValidate="txtMobileNumber" 
                            ValidationExpression="^([9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" 
                            Font-Size="Small" Font-Bold="False" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                        </div>
                </div>
                <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                    <div class="col-md-7">
                        <asp:DropDownList ID="ddlQuantity" runat="server">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        
                    </div>

            </div>
        </div>
        <div class="col-md-3" runat="server" id="divPriceDetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="pull-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
                <div>
                    <label>Cart Discount</label>
                    <span class="pull-right priceGreen" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="pull-right" id="spanTotal" runat="server"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <h3>Choose Payment Mode</h3>
            <hr />
            <ul class="nav nav-tabs">
                <li><a data-toggle="tab" href="#cod">COD</a></li>
            </ul>

            <div class="tab-content">
                <div id="cod" class="tab-pane fade in active">
                  
                    <asp:Button ID="btncod" OnClick="btncod_Click"  Class="btn btn-primary btn-lg" runat="server" Text="Pay with Cash" />
                </div>
                           </div>
        </div>
        </div>
        <br />
</asp:Content>

