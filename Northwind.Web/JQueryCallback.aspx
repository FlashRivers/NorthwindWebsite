<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="JQueryCallback.aspx.cs" Inherits="JQueryCallback" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        $(document).ready(function () {
            $('#btnGetEmployee').click(function () {
                var empId = $('#txtID').val();
                $.ajax({
                    url: 'JQueryCallback.aspx/GetEmployeeById',
                    method: 'post',
                    contentType: 'application/json',
                    data: '{ID:' + empId + '}',
                    dataType: 'json',
                    success: function (data) {
                        $('#txtFirstName').val(data.d.FirstName);
                        $('#txtLastName').val(data.d.LastName);
                        $('#txtTitle').val(data.d.Title);
                    },
                    error: function (error) {
                        alert('Error:' + error);
                    }
                })
            });
        });
    </script>
    <input id="txtID" type="text" style="width: 86px" />
    <input type="button" id="btnGetEmployee" value="Get Employee" />
    <br /><br />
    <table border="1" style="border-collapse: collapse">
        <tr>
            <td>First Name</td>
            <td><input id="txtFirstName" type="text" /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input id="txtLastName" type="text" /></td>
        </tr>
        <tr>
            <td>Title</td>
            <td><input id="txtTitle" type="text" /></td>
        </tr>
    </table>
</asp:Content>

