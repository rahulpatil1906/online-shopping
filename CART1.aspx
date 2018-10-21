﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="CART1.aspx.cs" Inherits="CART1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="padding-top: 20px;">
        <div class="col-md-9">
            <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5>

            <asp:Repeater ID="rptrCartProducts" runat="server">
                <ItemTemplate>
                    <div class="media" style="border: 1px solid #eaeaec;">
                        <div class="media-left">
                            <a href="ProductView.aspx?P_ID=<%#Eval("P_ID") %>" target="_blank">
                                <img width="100px" class="media-object" src="images/ProductImages/<%#Eval("P_ID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading proNameViewCart"><%#Eval("P_Name") %></h5>
                            <p class="proPriceDiscountView">Size : <%#Eval("SizeNamee") %></p>
                            <span class="proOgPriceView"><%#Eval("P_Price","{0:0,00}") %></span>
                            <p>
                                <asp:Button CommandArgument='<%#Eval("P_ID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" Class="btn btn-primary btn-lg" runat="server" Text="REMOVE" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
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
                <div>
                    <asp:Button ID="btnBuyNow" OnClick="btnBuyNow_Click" Class="btn btn-primary btn-lg" runat="server" Text="BUY NOW" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

