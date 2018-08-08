<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JQueryCourse.aspx.cs" Inherits="JQueryCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-3.3.1.js"></script>
    <script>
        window.onload = function () {
            //alert('Window loaded!');
        };
    </script>
    <script>
        // 'jQuery' and '$' are interchangeable
        $(document).ready(function () {
            $('div p').html("Hello, World!");
            var button = <%= Button2.ClientID %>;
            $(button).prop('value', 'Save');
            //$(".myParagraph").css("color", "yellow");
            //$("#myContent").css("background-color", "green");
            //$(".myParagraph").hover(function () {
            //    $(".myParagraph").css("color", "blue");
            //    //$(".myParagraph").hide();
            //});
            //$("#myContent").hover(function () {
            //    $(".myParagraph").css("color", "gold");
            //});

            //$('#myContent').html('<b>Hello, World!</b>');
            //alert("Hello, World!");
            //$("p").click(function () {
            //    $(this).hide();
            //});
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="myContent">
            My jQuery enabled page!
            <p class="myParagraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam lorem non eros tincidunt sodales. Vivamus lorem massa, ultricies vitae ullamcorper non, congue in dui. Mauris at lorem leo. Pellentesque ut lobortis elit, ut lacinia sem.</p>
            <p class="myParagraph">Nunc pulvinar eleifend dolor quis gravida. Pellentesque ac eleifend nibh. Duis et est ornare, aliquet mi at, facilisis tellus. Donec laoreet, augue id ultricies rhoncus, nulla odio viverra odio, vitae pharetra lorem metus quis ligula.</p>
            <p class="myParagraph">Donec suscipit varius lorem, in tristique elit hendrerit eget. Aliquam mollis elit eget ante blandit scelerisque. Integer enim purus, hendrerit at ligula nec, placerat malesuada erat.</p>

        </div>
        <input id="Button1" type="button" value="My Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </form>
</body>
</html>
