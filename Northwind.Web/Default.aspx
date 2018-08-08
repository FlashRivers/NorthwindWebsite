<%@ Page Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:LinkButton ID="lnkAddNew" runat="server" OnClick="lnkAddNew_Click">Create New Product</asp:LinkButton>
    <h1>Browse Our Products</h1>
    <hr class="mb-4">

    <asp:Repeater ID="ProductRepeater" runat="server">
        <HeaderTemplate>
            <table class="table">
                <tr>
                    <td><b>ID</b></td>
                    <td><b>Product Name</b></td>
                    <td class="text-right"><b>Unit Price</b></td>
                    <td></td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%# DataBinder.Eval(Container.DataItem, "ID") %> </td>
                <td><%# DataBinder.Eval(Container.DataItem, "Name") %> </td>
                <td class="text-right"><%# DataBinder.Eval(Container.DataItem, "DisplayPrice") %> </td>
                <td class="text-right">
                    <button>Add to Cart</button></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>

    <asp:Button ID="InsertButton" runat="server" Text="Insert New Record" OnClick="InsertButton_Click" />
</asp:Content>


