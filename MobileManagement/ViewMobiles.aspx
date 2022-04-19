<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMobiles.aspx.cs" Inherits="MobileManagement.ViewMobiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#CC3300" Text="Mobile Details"></asp:Label> 
            <br />
            <br />
            <asp:GridView ID="gridMobiles" runat="server" Height="380px" Width="1013px">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
