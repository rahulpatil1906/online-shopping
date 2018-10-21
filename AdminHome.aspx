<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Welcome Admin !</h1>
<form id="form1" runat="server">
    <asp:Button ID="btnsignout" runat="server" Text="Sign out" Class="btn btn-danger navbar-btn"
        onclick="btnsignout_Click" />
    </form>
</asp:Content>

