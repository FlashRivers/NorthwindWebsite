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
                <td><%# DataBinder.Eval(Container.DataItem, "RegionID") %> </td>
                <td><%# DataBinder.Eval(Container.DataItem, "RegionDescription") %> </td>
                <td></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

