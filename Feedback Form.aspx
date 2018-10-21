<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback Form.aspx.cs" Inherits="Feedback_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
                <h3>FEEDBACK FORM</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="lblid" runat="server" CssClass="col-md-2 control-label" Visible="False"></asp:Label>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtUsername1" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtUsername1" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Feedback"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtFeed" TextMode="MultiLine" CssClass="form-control" 
                            runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtFeed" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Suggestion"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtSuggestion" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtSuggestion" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Ratings"></asp:Label>
                    <div class="col-md-7">
                    <asp:DropDownList ID="ddlRating" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                </div>
                </br>
                <div class="col-md-7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncod0" OnClick="btncod_Click"  class="btn btn-primary btn-lg" runat="server" Text="Submit" />
                </div>
                
</asp:Content>

