<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.CartContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column justify-content-evenly align-items-center">
        <h2>Your Shopping Cart</h2><br />
        <table>
            <tr>
                <td>
                    <div>
                        <asp:ListBox ID="lbxCart" runat="server" class="lbxCart" Height="150px" Width="420px"></asp:ListBox>
                    </div><br />
                </td>
                <td>
                    <div>
                        <asp:Button ID="btnRemoveItem" runat="server" Text="Remove Item" Font-Size="18px" CssClass="btn btn-warning" width="140px" OnClick="btnRemoveItem_Click"/>
                    </div><br />
                    <div>
                        <asp:Button ID="btnEmptyCart" runat="server" Text="Empty Cart" Font-Size="18px" CssClass="btn btn-danger" width="140px" OnClick="btnEmptyCart_Click"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" Font-Size="18px" CssClass="btn btn-info" width="200px" OnClick="btnContinue_Click"/>
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" Font-Size="18px" CssClass="btn btn-success" width="140px" OnClick="btnCheckout_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
