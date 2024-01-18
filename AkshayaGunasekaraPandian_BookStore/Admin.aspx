<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AkshayaGunasekaraPandian_BookStore.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 180px;
        }
        .auto-style4 {
            width: 120px;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            width: 250px;
        }
        .auto-style7 {
            width: 120px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-row justify-content-center align-items-center">
        <asp:Label ID="lblGenre" runat="server" Text="Choose a Genre: " Height="20px" Width="240px" Font-Size="20px" Font-Bold="True"></asp:Label>

        <asp:DropDownList ID="ddlGenre" runat="server" Height="30px" Width="200px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Genre_Name" DataValueField="Genre_Id"></asp:DropDownList>
    </div>
    <br />
    <div class="d-flex flex-row justify-content-center align-items-center">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" DataKeyField="Book_Id">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <table>
                    <thead>
                        <tr>
                            <th class="auto-style2 text-center">Book Name</th>
                            <th class="auto-style2 text-center">Author</th>
                            <th class="auto-style4 text-center">Price</th>
                            <th class="auto-style4 text-center">Stock</th>
                        </tr>
                    </thead>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td class="auto-style2 text-center">
                            <asp:Label ID="Book_NameLabel" runat="server" Text='<%# Eval("Book_Name") %>' />
                        </td>
                        <td class="auto-style2 text-center">
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                        </td>
                        <td class="auto-style4 text-center">
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td class="auto-style4 text-center">
                            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Genre] ORDER BY [Genre_Id]"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([Genre_Id] = @Genre_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlGenre" DefaultValue="101" Name="Genre_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <br /><br /><br />
        <asp:Label ID="Genre" runat="server" Text="Genres Maintenance: " Font-Size="20px" Font-Bold="True"></asp:Label>
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Genre_Id" DataSourceID="sqldsGenre" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" SortExpression="Genre_Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Genre_Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Genre_Id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Width="100px" />
                    <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Genre_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGenreName" runat="server" Text='<%# Bind("Genre_Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGenreName" runat="server" ControlToValidate="txtGenreName" Cssclass="text-danger" ErrorMessage="Genre Name is required!"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Genre_Name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description" SortExpression="Genre_Desc">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGenreDesc" runat="server" Text='<%# Bind("Genre_Desc") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGenreDesc" runat="server" ControlToValidate="txtGenreDesc" Cssclass="text-danger" ErrorMessage="Genre Description is required!"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Genre_Desc") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" Width="300px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit/Delete" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" ImageUrl="~/Img/update_icon.png" Text="Update" />
                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/Img/cancel_icon.png" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/Img/edit_icon.png" Text="Edit" />
                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/Img/delete_icon.png" Text="Delete" />
                    </ItemTemplate>
                    <HeaderStyle Width="130px" />
                    <ItemStyle Width="130px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="sqldsGenre" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Genre] ORDER BY [Genre_Id]" DeleteCommand="DELETE FROM [Genre] WHERE [Genre_Id] = @Genre_Id" InsertCommand="INSERT INTO [Genre] ([Genre_Id], [Genre_Name], [Genre_Desc]) VALUES (@Genre_Id, @Genre_Name, @Genre_Desc)" UpdateCommand="UPDATE [Genre] SET [Genre_Name] = @Genre_Name, [Genre_Desc] = @Genre_Desc WHERE [Genre_Id] = @Genre_Id">
            <DeleteParameters>
                <asp:Parameter Name="Genre_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Genre_Id" Type="Int32" />
                <asp:Parameter Name="Genre_Name" Type="String" />
                <asp:Parameter Name="Genre_Desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Genre_Name" Type="String" />
                <asp:Parameter Name="Genre_Desc" Type="String" />
                <asp:Parameter Name="Genre_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <br /><br /><br />
        <asp:Label ID="lblAddNewGenre" runat="server" Text="To create a new genre, enter the genre information and click 'Add New Genre': " Height="20px" Width="750px" Font-Size="20px" Font-Bold="True"></asp:Label>
        <br /><br />
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <table>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGenreId" runat="server" Text="Genre ID: " Font-Bold="True"></asp:Label>
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtGenreId" runat="server" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGenreId" runat="server" ControlToValidate="txtGenreId" CssClass="text-danger" ErrorMessage="ID is required!" ValidationGroup="RFV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGenreName" runat="server" Text="Name: " Font-Bold="True"></asp:Label>
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtGenreName" runat="server" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGenreName" runat="server" ControlToValidate="txtGenreName" CssClass="text-danger" ErrorMessage="Name is required!" ValidationGroup="RFV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGenreDesc" runat="server" Text="Description: " Font-Bold="True"></asp:Label>
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtGenreDesc" runat="server" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGenreDesc" runat="server" ControlToValidate="txtGenreDesc" CssClass="text-danger" ErrorMessage="Description is required!" ValidationGroup="RFV"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>  
        <br />
        </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <br /><br /><br />
        <asp:Button ID="btnAddNewGenre" runat="server" Text="Add New Genre" Font-Size="18px" width="180px" CssClass="btn btn-outline-success" OnClick="btnAddNewGenre_Click" ValidationGroup="RFV"/>
        <br />
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">
        <asp:Label ID="lblErrMsg" runat="server" Text="" CssClass="text-danger"></asp:Label>
        <br />
        <asp:Label ID="lblMsg" runat="server" Text="" CssClass="text-success"></asp:Label>
        <br />
    </div>
    <div class="d-flex flex-row justify-content-center align-items-center">

        <asp:SqlDataSource ID="sqldsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Books] WHERE [Book_Id] = @Book_Id" 
            InsertCommand="INSERT INTO [Books] ([Book_Id], [Book_Name], [Author], [Price], [Genre_Id], [Quantity], [ImagePath]) VALUES (@Book_Id, @Book_Name, @Author, @Price, @Genre_Id, @Quantity, @ImagePath)" 
            SelectCommand= "SELECT * FROM [Books] INNER JOIN [Genre] ON [Genre].Genre_Id = [Books].Genre_Id"
            UpdateCommand="UPDATE [Books] SET [Book_Name] = @Book_Name, [Author] = @Author, [Price] = @Price, [Genre_Id] = @Genre_Id, [Quantity] = @Quantity, [ImagePath] = @ImagePath WHERE [Book_Id] = @Book_Id">
            <DeleteParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Genre_Id" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="ImagePath" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Genre_Id" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="ImagePath" Type="Object" />
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Book_Id" DataSourceID="sqldsBooks" GridLines="Horizontal" Width="450px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Book_Id" HeaderText="ID" ReadOnly="True" SortExpression="Book_Id">
                <HeaderStyle HorizontalAlign="Center" Width="70px" />
                <ItemStyle HorizontalAlign="Center" Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="Book_Name" HeaderText="Book Name" SortExpression="Book_Name">
                <HeaderStyle HorizontalAlign="Center" Width="150px" />
                <ItemStyle HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="Genre_Name" HeaderText="Genre" SortExpression="Genre_Name">
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
                <ItemStyle HorizontalAlign="Center" Width="120px" />
                </asp:BoundField>
                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Img/select_icon.png" HeaderText="Select">
                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                <ItemStyle HorizontalAlign="Center" Width="80px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="sqldsSelectedBook" ForeColor="#333333" GridLines="None" Height="50px" Width="300px" AutoGenerateRows="False" DataKeyNames="Book_Id">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Book_Id" HeaderText="Book_Id" ReadOnly="True" SortExpression="Book_Id" />
                <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:TemplateField HeaderText="Genre_Id" SortExpression="Genre_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Genre_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Genre_Id") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Genre_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/Img/cancel_icon.png" DeleteImageUrl="~/Img/delete_icon.png" EditImageUrl="~/Img/edit_icon.png" InsertImageUrl="~/Img/update_icon.png" NewImageUrl="~/Img/addNew_icon.png" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" UpdateImageUrl="~/Img/update_icon.png" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="sqldsSelectedBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [Book_Id] = @Book_Id" InsertCommand="INSERT INTO [Books] ([Book_Id], [Book_Name], [Author], [Price], [Genre_Id], [Quantity]) VALUES (@Book_Id, @Book_Name, @Author, @Price, @Genre_Id, @Quantity)" SelectCommand="SELECT * FROM [Books] WHERE ([Book_Id] = @Book_Id)" UpdateCommand="UPDATE [Books] SET [Book_Name] = @Book_Name, [Author] = @Author, [Price] = @Price, [Genre_Id] = @Genre_Id, [Quantity] = @Quantity WHERE [Book_Id] = @Book_Id">
            <DeleteParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Genre_Id" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView3" Name="Book_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Genre_Id" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />

    </div>
</asp:Content>