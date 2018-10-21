 <%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="CancelOrder.aspx.cs" Inherits="CancelOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="padding-top: 20px;">
        <div class="col-md-9">
            <div class="form-horizontal" >
                <h3>Billing</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-7">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
                    
   
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="col-md-7">
                     <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
   
                        </div>
                </div>
                   <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Pincode"></asp:Label>
                    <div class="col-md-7">
                     <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
   
                        </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="MobileNumbet"></asp:Label>
                    <div class="col-md-7">
                     <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
   
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                    <div class="col-md-7">
                     <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
   
                        </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Total"></asp:Label>
                    <div class="col-md-7">
                     <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" ></asp:Label>
   
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn btn-primary btn-lg" Text="Button" />
                        <br />
                        <br />
                     <asp:Label ID="lblMsg" runat="server" CssClass="col-md-2 control-label" 
                            Text="Name"></asp:Label>
   
                        </div>
                </div>
 

 </asp:Content>

