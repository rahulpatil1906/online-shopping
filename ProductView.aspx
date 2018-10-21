<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top: 50px" height="100px" width="100px">
        <div class="col-md-5">

                        <asp:Repeater ID="rptrImages" runat="server" >
                            <ItemTemplate>
                                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                                    <img src="images/ProductImages/<%#Eval("P_ID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
       
                  
                </div>
           </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("P_Name") %></h1>
                        <br />
                        <span class="proOgPriceView"><%#Eval("P_Price") %></span>
                        <br />
                    </div>
                    <div>
                        <h5 class="h5Size"><b>SIZE</b></h5>
                        <div>
                           
    <asp:DropDownList ID="ddlSizes" runat="server">
    </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="divDet1">
                        <asp:Button ID="btnCart1" OnClick="btnCart1_Click" CssClass="btn btn-primary btn-lg" runat="server" Text="ADD TO CART" />
                        <br />
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                    <br />
                    <div class="divDet1">
                        <h5 class="h5Size"><b>Description</b></h5>
                        <p>
                            <%#Eval("PDescription") %>
                        </p>
                        
                    </div>
                    <div class="divDet1">
                        <h5 class="h5Size"><b>Quantity</b></h5>
                        <p>
                           5 Items Only.
                        </p>
                        
                    </div>
                    <br />
                    <div>
                      
                        <p><b><%# ((int)Eval("P_COD")==1)?"Cash on Delivery":"" %></b></p>
                    </div>
                    <br />

                    
                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("P_CatID") %>' runat="server" />
                </ItemTemplate>
            </asp:Repeater>
        </div>
</asp:Content>

