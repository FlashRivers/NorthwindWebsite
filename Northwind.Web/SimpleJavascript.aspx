<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="SimpleJavascript.aspx.cs" Inherits="SimpleJavascript" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        $(document).ready(function () {




        });

        function doThis() {
            alert($(this));
            //alert($(this.val()));
            //$(this).prop("value", "Stop Clicking ME!"); // doesn't work
            $(this).hide();
            //$('#SubmitButton').hide();

        };
    </script>
    <asp:TextBox ID="NameTextbox" runat="server"></asp:TextBox>
    <input type="button" id="SubmitButton" value="Submit" onclick="doThis();" />
<%--    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClientClick="doThis();" />--%>
</asp:Content>

