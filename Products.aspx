<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="Server">
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
</asp:content>

