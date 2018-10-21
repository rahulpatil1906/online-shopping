<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct1.aspx.cs" Inherits="AddProduct1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="form-horizontal">
<div class="container">
<div class="form-horizontal">
<h2>Add Product</h2>
<hr />
</div>
</div>
<form id="form1" runat="server">
<div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name*"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </div>
                </div>
<div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price*"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtprice" CssClass="form-control" runat="server" placeholder="Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="txtprice" ></asp:RequiredFieldValidator>
                    </div>
                    </div>
<div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category*"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlQuantity" runat="server">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="ddlQuantity" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSizes"  OnSelectedIndexChanged="ddlSizes_SelectedIndexChanged" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="ddlSizes" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>

                

                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Product details*"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDetails" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="txtPDetails"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FulImg01" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" This field is Required !" ControlToValidate="FulImg01"></asp:RequiredFieldValidator>
                    </div>
                </div>

<div class="form-group">
<asp:CheckBox ID="cbCOD" runat="server" CssClass="col-md-2 control-label" />
                    <div class="col-md-3">
                        <asp:Label ID="Label8" runat="server"  Text="COD*"></asp:Label>
                    </div>
                </div>
                <div>
                <asp:Button ID="btn1" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btadd_Click" />
                </div>
                <asp:Button ID="btnsignout" runat="server" Text="Sign out" 
        onclick="btnsignout_Click" />
</form>

</asp:Content>

