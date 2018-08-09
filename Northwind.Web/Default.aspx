<%@ Page Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
        <script>
        $(document).ready(function (e) {
            alert('Good morning!');
        });
    </script>

</asp:Content>


