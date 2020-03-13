<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" Text="Welcome to the Original Grocery Store!"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Feel free to browse our online category. "></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="We offer a small selection of products available for purchase online."></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Products.aspx" Text="View Products" />
        </div>
    </form>
</body>
</html>
