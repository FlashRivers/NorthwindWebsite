<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="DatabaseFirstSample.aspx.cs" Inherits="DatabaseFirstSample" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="RegionRepeater" runat="server">
        <HeaderTemplate>
            <table class="table">
                <tr>
                    <td><b>ID</b></td>
                    <td><b>Region Description</b></td>
                    <td></td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td style="width: 75px"><%# DataBinder.Eval(Container.DataItem, "RegionID") %> </td>
                <td><a href="Territories.aspx?regionid=<%# DataBinder.Eval(Container.DataItem, "RegionID") %>"><%# DataBinder.Eval(Container.DataItem, "RegionDescription") %></a></td>
                <td></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

