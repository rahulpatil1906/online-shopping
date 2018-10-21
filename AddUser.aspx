<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="form-horizontal">
    <h2>SIGN UP</h2>
    <hr />
   <form id="form1" runat="server">
      <div class="form-group">
                     <div class="col-md-3">
                     <asp:Label ID="lblid" runat="server" CssClass="col-md-2 control-label" Visible="False"><b></b></asp:Label>
  
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Username" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtlname" CssClass="form-control" runat="server" 
                            placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtlname" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                  </div>
             </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Email*" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" 
                            placeholder="Email" TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtemail" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    </div>


   <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" 
                        Text="&lt;b&gt;Name*&lt;/b&gt;" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtfname" CssClass="form-control" runat="server" 
                            placeholder="First Name" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Only Character are allowed" ControlToValidate="txtfname" 
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Username*" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                    <asp:TextBox ID="txtuname" CssClass="form-control" runat="server" 
                            placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ErrorMessage="Invalid Email format" ControlToValidate="txtuname" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ForeColor="Red"></asp:RegularExpressionValidator>                    
                   </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" 
                         Text="Password*" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" 
                            placeholder="Password" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" Password field is Required !" ControlToValidate="txtpass" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" 
                        Text="Confirm-Password*" Font-Bold="True"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtconpass" CssClass="form-control" runat="server" 
                            placeholder="Confirm-Password" TextMode="Password" 
                            AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ErrorMessage="Password does not match!" ControlToValidate="txtconpass" 
                            ForeColor="Red" ControlToCompare="txtpass"></asp:CompareValidator>
                  </div>
                </div>
                     <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" 
                             Font-Bold="True" >BirthDate*</asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="dateTimePicker1" CssClass="form-control" runat="server"  input 
                            type="date" data-validation="required" TextMode="Date" 
                            AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" CssClass="text-danger" runat="server" ErrorMessage="Birth Date is Required  !" ControlToValidate="dateTimePicker1" ForeColor="Red" MaximumValue="12/31/2008" MinimumValue="12/31/1938" Type="Date" Display="Dynamic"></asp:RangeValidator>
                        
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text=""><b>Gender*</b></asp:Label>
                    <div class="col-md-3">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
        <asp:ListItem Selected="True">Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" CssClass="text-danger"
                    ControlToValidate="RadioButtonList2" ErrorMessage="Select the Gender" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
             </div>
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="" Font-Bold="True">Phone No*</asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtphoneno" MaxLength="12" CssClass="form-control" runat="server" 
                            placeholder="Phon no." TextMode="Number" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regx" runat="server" 
                            ErrorMessage="Enter valid Phone number !" 
                            ControlToValidate="txtphoneno" 
                            ValidationExpression="^([9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" 
                            Font-Size="Small" Font-Bold="False" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="" Font-Bold="True">Address*</asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server" 
                            placeholder="Address" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" 
                            CssClass="text-danger" runat="server" 
                            ErrorMessage=" Address field  is Required !" 
                            ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnSignup" runat="server" Text="Insert" 
                            CssClass="btn btn-default" OnClick="btSignup_Click" BackColor="Silver" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                            CssClass="btn btn-default" OnClick="btnCancel_Click" BackColor="Silver" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    </div>
                </div>
                    <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblMsg" runat="server" CssClass="text-green"></asp:Label>
                    </div>
                </div>
            </div>
   </div>
   </form>
</asp:Content>

