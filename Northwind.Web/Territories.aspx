<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="Territories.aspx.cs" Inherits="Territories" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="DatabaseFirstSample.aspx">Back</a>
    <asp:Repeater ID="TerritoryRepeater" runat="server" OnItemDataBound="Repeater_ItemDataBound">
        <HeaderTemplate>
            <table class="table">
                <tr>
                    <td><b>ID</b></td>
                    <td><b>Territory Description</b></td>
                    <td></td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td style="width: 75px"><%# DataBinder.Eval(Container.DataItem, "TerritoryID") %></td>
                <td><%# DataBinder.Eval(Container.DataItem, "TerritoryDescription") %> </td>
                <td></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblErrorMsg" runat="server" Text="No records found." Visible="false" />
                </td>
            </tr>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

