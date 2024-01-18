<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.ProductsContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 479px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column justify-content-evenly align-items-center">
        <table>
            <tr>
                <td class="auto-style1">
                    <div>
                        <asp:Label ID="lblWelcome" runat="server" Text="Welcome Back, " Font-Size="22px" class="text-primary" Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblFirstName" runat="server" Text="" Font-Size="22px" class="text-primary" Font-Bold="True"></asp:Label>
                    </div><br />
                    <div>
                        <asp:Label ID="lblSelect" runat="server" Text="Please select a product:" Font-Size="20px"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="ddlProductList" runat="server" AutoPostBack="True" Height="25px" Width="230px" DataSourceID="SqlDataSource1" DataTextField="Book_Name" DataValueField="Book_Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] ORDER BY [Book_Id]"></asp:SqlDataSource>
                    </div>
                    <br />
                    <div >
                        <asp:Label ID="Label1" runat="server" Text="Name: " Font-Size="20px" Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblName" runat="server" Text="" Font-Size="20px"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Author: " Font-Size="20px" Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblAuthor" runat="server" Text="" Font-Size="20px"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Price: $" Font-Size="20px" Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblPrice" runat="server" Text="" Font-Size="20px"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Stock Available: " Font-Size="20px" Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblQty" runat="server" Text="" Font-Size="20px"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblQuantity" runat="server" Text="Quantity: " Font-Size="20px"></asp:Label>
                        <asp:TextBox ID="txtQuantity" runat="server" Text="0"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddToCart" runat="server" ControlToValidate="txtQuantity" class="text-danger" ErrorMessage="*Quantity is required*" ValidationGroup="Grp"></asp:RequiredFieldValidator><br />
                        <asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type=" Integer" class="text-danger" ValidationGroup="Grp" ErrorMessage="Quantity should be between 1 to 100"></asp:RangeValidator>
                    </div><br />
                    <div >
                        <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" Font-Size="18px" width="140px" CssClass="btn btn-info" ValidationGroup="Grp" OnClick="btnAddToCart_Click"/>
                        <asp:Button ID="btnGoToCart" runat="server" Text="Go To Cart" Font-Size="18px" width="140px" CssClass="btn btn-success" OnClick="btnGoToCart_Click" ValidationGroup="Grp"/>
                    </div>
                </td>
                <td>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl="~/Img/book.jpeg" Height="300px" Width="200px" />
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
