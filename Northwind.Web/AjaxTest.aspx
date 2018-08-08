<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxTest.aspx.cs" Inherits="AjaxTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowCurrentTime() {
            $.ajax({
                type: "POST",
                url: "AjaxTest.aspx/GetCurrentTime",
                data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function OnSuccess(response) {
            alert(response.d);
            $("#serverResponse").html(response.d);

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                Your Name :
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <input id="btnGetTime" type="button" value="Show Current Time" onclick="ShowCurrentTime()" />
            </div>
            <div id="serverResponse">
            </div>
        </div>
    </form>
</body>
</html>
