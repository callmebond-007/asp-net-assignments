<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMobile.aspx.cs" Inherits="Assignment_Mobile_Management_Templated.AddMobile" MasterPageFile ="~/Site.Master" %> 

 <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <br />
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator runat="server" ID="rqfvtxtName" ControlToValidate="txtName" ErrorMessage ="Name is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator runat="server" ID="rqfvtxtDescription" ControlToValidate="txtDescription" ErrorMessage ="Description is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
            <br />
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator runat="server" ID="rqfvtxtPrice" ControlToValidate="txtPrice" ErrorMessage ="Price is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblAddMobile" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnAddMobile" runat="server" OnClick="btnAddMobile_Click" Text="Add Mobile" />

</asp:Content>
