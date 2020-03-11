<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutForm.aspx.cs" Inherits="WebApplication2.CheckoutForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <p class="auto-style2">
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Products.aspx" Text="Back" />
            </p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" Text="Checkout"></asp:Label>
            <br />
        </div>
        <div class="auto-style1">
            <asp:TextBox ID="itemsPurchased" runat="server" Height="155px" TextMode="MultiLine" Width="620px"></asp:TextBox>
            <br />
            <br />
        </div>
        <div class="auto-style1">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20pt" Text="Total Price:     "></asp:Label>
            <asp:Label ID="totalL" runat="server" Font-Bold="False" Font-Size="20pt" Text="$0.00"></asp:Label>
            <br />
        </div>
        <div class="auto-style1">
            <asp:Button ID="Button2" runat="server" Text="Buy" />
        </div>
    </form>
</body>
</html>
