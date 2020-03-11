<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication2.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 231px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 390px;
        }
        .auto-style5 {
            width: 231px;
            text-align: center;
            height: 104px;
        }
        .auto-style6 {
            width: 390px;
            height: 104px;
        }
        .auto-style7 {
            height: 104px;
        }
    </style>
</head>
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div style="text-align: center">
        <div style="text-align: left; font-weight: 700">
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm1.aspx" Text="Back to Homepage" />
        </div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Products Available"></asp:Label>
        </div>
        <div>
        </div>
    <table border="1" style="width:100%;">
        <tr>
            <td class="auto-style5">
            <asp:Image ID="Image2" runat="server" Height="79px" ImageUrl="~/cookie.png" Width="79px" />
                <br />
                Cookies</td>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" Text="Price:   "></asp:Label>
                <asp:Label ID="cookiePriceLabel" runat="server" Text="$0.00    "></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="    per dozen."></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label21" runat="server" Height="28px" Text="Enter quantity to order:         "></asp:Label>
                <asp:TextBox ID="cookieQ" runat="server" Height="20px" Width="60px">0</asp:TextBox>
                <asp:Button ID="pC" runat="server" OnClick="pC_Click" Text="+" Width="28px" />
                <asp:Button ID="mC" runat="server" OnClick="mC_Click" Text="-" Width="28px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            <asp:Image ID="Image3" runat="server" Height="72px" ImageUrl="~/durian.png" Width="71px" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Durian"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="15pt" Text="Price:   "></asp:Label>
                <asp:Label ID="durianPriceLabel" runat="server" Text="$0.00    "></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="    each."></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label22" runat="server" Height="28px" Text="Enter quantity to order:         "></asp:Label>
                <asp:TextBox ID="durianQ" runat="server" Height="20px" Width="60px">0</asp:TextBox>
                <asp:Button ID="pD" runat="server" OnClick="pD_Click" Text="+" Width="28px" />
                <asp:Button ID="mD" runat="server" OnClick="mD_Click" Text="-" Width="28px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            <asp:Image ID="Image5" runat="server" Height="65px" ImageUrl="~/pomegranate.png" Width="72px" />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Pomegranite"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="15pt" Text="Price:   "></asp:Label>
                <asp:Label ID="pomegranitePriceLabel" runat="server" Text="$0.00    "></asp:Label>
                <asp:Label ID="Label14" runat="server" Text="    for 3."></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label23" runat="server" Height="28px" Text="Enter quantity to order:         "></asp:Label>
                <asp:TextBox ID="pomeQ" runat="server" Height="20px" Width="60px">0</asp:TextBox>
                <asp:Button ID="pP" runat="server" OnClick="pP_Click" Text="+" Width="28px" />
                <asp:Button ID="mP" runat="server" OnClick="mP_Click" Text="-" Width="28px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            <asp:Image ID="Image1" runat="server" Height="73px" ImageUrl="~/banana.jpeg" Width="70px" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Bananas"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="15pt" Text="Price:   "></asp:Label>
                <asp:Label ID="bananaPriceLabel" runat="server" Text="$0.00    "></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="    per pound."></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label24" runat="server" Height="28px" Text="Enter quantity to order:         "></asp:Label>
                <asp:TextBox ID="bananaQ" runat="server" Height="20px" Width="60px">0</asp:TextBox>
                <asp:Button ID="bP" runat="server" OnClick="bP_Click" Text="+" Width="28px" />
                <asp:Button ID="bM" runat="server" OnClick="bM_Click" Text="-" Width="28px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            <asp:Image ID="Image4" runat="server" Height="72px" ImageUrl="~/plant.jpg" Width="68px" />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Plant"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="15pt" Text="Price:   "></asp:Label>
                <asp:Label ID="plantPriceLabel" runat="server" Text="$0.00    "></asp:Label>
                <asp:Label ID="Label20" runat="server" Text="    each."></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label25" runat="server" Font-Size="12pt" Height="28px" Text="Enter quantity to order:         "></asp:Label>
                <asp:TextBox ID="plantQ" runat="server" Height="20px" Width="60px">0</asp:TextBox>
                <asp:Button ID="plP" runat="server" OnClick="plP_Click" Text="+" Width="28px" />
                <asp:Button ID="plM" runat="server" OnClick="plM_Click" Text="-" Width="28px" />
            </td>
        </tr>
    </table>
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/CheckoutForm.aspx" Text="Proceed to Checkout" />
        </div>
    </form>
    </body>
</html>
