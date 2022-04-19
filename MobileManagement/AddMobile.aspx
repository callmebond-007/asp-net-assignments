<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMobile.aspx.cs" Inherits="MobileManagement.AddMobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br /> 
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="ManufacturedBy"></asp:Label>
            <br />
            <asp:TextBox ID="txtManufacturedBy" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
            <br />
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblAddMobile" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnAddMobile" runat="server" OnClick="btnAddMobile_Click" Text="Add Mobile" />

        </div>
    </form>
</body>
</html>
