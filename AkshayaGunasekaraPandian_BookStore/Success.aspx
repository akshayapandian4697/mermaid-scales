<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.SuccessContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column justify-content-evenly align-items-center">
        <asp:Image ID="imgSuccess" runat="server" ImageUrl="~/Img/order.jpg" Height="200px" Width="200px"/>
        <h2 class="text-success">Order Placed Successfully, <br/> Thank you for shopping with us!</h2>
    </div>
</asp:Content>
