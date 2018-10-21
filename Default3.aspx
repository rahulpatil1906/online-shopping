<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnCount" runat="server" Text="Count" 
        onclick="btnCount_Click" />
    <asp:Label ID="lblCount" runat="server" ></asp:Label>
</asp:Content>

