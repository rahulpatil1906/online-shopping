<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ApprovalStatus2.aspx.cs" Inherits="ApprovalStatus2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
 <asp:GridView ID="PendingRecordsGridview" runat="server"
        AutoGenerateColumns="False" DataKeyNames="ID"
        onrowcommand="PendingRecordsGridview_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Accept">
                <ItemTemplate>
                    <asp:Button CommandArgument='<%# Bind("ID") %>' ID="Button1" runat="server" CausesValidation="false" 
                        CommandName="accept" Text="Accept" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="ID" SortExpression="ID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RuksarConnectionString %>" 
        SelectCommand="SELECT * FROM [EMP2]"></asp:SqlDataSource>
        </form>

</asp:Content>

