<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.CheckoutContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column justify-content-evenly align-items-center">
        <h2>Check Out Page</h2>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="text-danger" BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" ValidationGroup="G1"/>
        </div>
        <h3>Contact Information:</h3>
        <table>
            <tr>
                <td>Email Address:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="240px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revEmailValid" runat="server" ControlToValidate="txtEmail"  class="text-danger" ErrorMessage="Must be a valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="G1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Email Re-Entry:</td>
                <td>
                    <asp:TextBox ID="txtReEnterEmail" runat="server" Height="30px" Width="240px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvReEnterEmail" runat="server" ControlToValidate="txtReEnterEmail" ErrorMessage="Email Re-Entry is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="cvReEnterEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtReEnterEmail"  class="text-danger" ErrorMessage="Must match first Email Address" ValidationGroup="G1"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" Height="30px" Width="240px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revFirstName" runat="server" ControlToValidate="txtFirstName"  class="text-danger" ErrorMessage="Must be a valid First Name" ValidationExpression="\w[A-Za-z ]*" ValidationGroup="G1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" Height="30px" Width="240px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLastName"  class="text-danger" ErrorMessage="Must be a valid Last Name" ValidationExpression="\w[A-Za-z ]*" ValidationGroup="G1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Height="30px" Width="240px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone Number is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" class="text-danger"  ErrorMessage="Use this format 123-456-7890" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhoneNumber" ValidationGroup="G1"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>

        <h3>Billing Address:</h3>

        <table>
            <tr>
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Height="30px" Width="250px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Height="30px" Width="250px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>State:</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server" Height="30px" Width="250px" AutoPostBack="True" ValidationGroup="G1">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Alberta</asp:ListItem>
                        <asp:ListItem>British Columbia</asp:ListItem>
                        <asp:ListItem>Manitoba</asp:ListItem>
                        <asp:ListItem>New Brunswick</asp:ListItem>
                        <asp:ListItem>Newfoundland and Labrador</asp:ListItem>
                        <asp:ListItem>Northwest Territories</asp:ListItem>
                        <asp:ListItem>Nova Scotia</asp:ListItem>
                        <asp:ListItem>Nunavut</asp:ListItem>
                        <asp:ListItem>Ontario</asp:ListItem>
                        <asp:ListItem>Prince Edward Island</asp:ListItem>
                        <asp:ListItem>Quebec</asp:ListItem>
                        <asp:ListItem>Saskatchewan</asp:ListItem>
                        <asp:ListItem>Yukon</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" ErrorMessage="State is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>Zip Code:</td>
                <td>
                    <asp:TextBox ID="txtZipCode" runat="server" Height="30px" Width="250px" ValidationGroup="G1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ControlToValidate="txtZipCode" ErrorMessage="Zip Code is Required" class="text-danger"  ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revZipCode" runat="server" class="text-danger" ErrorMessage="Zip code should be 6 characters" ControlToValidate="txtZipCode" ValidationExpression="[0-9A-Z]{6}" ValidationGroup="G1"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
           
        <h3>Optional Data:</h3>
            <table>
                <tr>
                    <td><h4>Please let me know about:</h4></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkNewProducts" runat="server" Text="New Products" Font-Size="18px"/>
                        <asp:CheckBox ID="chkNewEditions" runat="server" Text="New Editions" Font-Size="18px"/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkSpecialOffers" runat="server" Text="Special Offers" Font-Size="18px"/>
                        <asp:CheckBox ID="chkLocalEvents" runat="server" Text="Local Events" Font-Size="18px"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><br /><h4>Please contact me via:</h4></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rbtnTwitter" runat="server" Text="Twitter" Font-Size="18px"/>
                        <asp:RadioButton ID="rbtnFacebook" runat="server" Text="Facebook" Font-Size="18px"/><br />
                        <asp:RadioButton ID="rbtnTextMsg" runat="server" Text="Text Message" Font-Size="18px"/>
                        <asp:RadioButton ID="rbtnEmail" runat="server" Text="Email" Font-Size="18px"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table><br />
            
        <div>
            <asp:Button ID="btnCheckOut" runat="server" Text="Checkout" Font-Size="18px" Width="130px" CssClass="btn btn-success" OnClick="btnPlaceOrder_Click" ValidationGroup="G1"/>
            <asp:Button ID="btnCancelOrder" runat="server" Text="Cancel Order" Font-Size="18px" Width="130px" CssClass="btn btn-danger" OnClick="btnCancelOrder_Click"/>
            <asp:HyperLink ID="hlContinueShopping" runat="server" NavigateUrl="~/Products.aspx" Font-Size="18px">Continue Shopping</asp:HyperLink>
        </div><br />
    </div>
</asp:Content>
