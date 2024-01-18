<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.LoginContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="d-flex flex-column justify-content-evenly align-items-center">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: " Height="20px" Width="240px" Font-Size="20px" Font-Bold="True"></asp:Label><br />
            <asp:TextBox ID="tbxFirstName" runat="server" Height="35px" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" class="text-danger" ErrorMessage="First Name is required" ControlToValidate="tbxFirstName" ValidationGroup="G2"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revFirstName" runat="server" ControlToValidate="tbxFirstName" class="text-danger" ErrorMessage="Must be a valid First Name" ValidationGroup="G2" ValidationExpression="\w[A-Za-z ]*"></asp:RegularExpressionValidator>
     
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:  " Height="20px" Width="240px" Font-Size="20px" Font-Bold="True"></asp:Label><br />
            <asp:TextBox ID="tbxLastName" runat="server" Height="35px" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" class="text-danger" ErrorMessage="Last Name is required" ControlToValidate="tbxLastName" ValidationGroup="G2"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revLastName" runat="server" ControlToValidate="tbxLastName" class="text-danger" ErrorMessage="Must be a valid Last Name" ValidationGroup="G2" ValidationExpression="\w[A-Za-z ]*"></asp:RegularExpressionValidator>
            
            <asp:Button ID="btnLoginNext" runat="server" Text="Login" CssClass="btn btn-success" Font-Size="20px" width="120px" Height="40px" OnClick="btnLoginNext_Click" ValidationGroup="G2"/><br />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" Font-Size="20px" width="120px" Height="40px" OnClick="btnCancel_Click"/>
        </div>
</asp:Content>
