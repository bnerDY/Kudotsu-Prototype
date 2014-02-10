<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="Prac3WebApp.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Login: </h2>
<p>&nbsp;<asp:Label ID="error" runat="server"></asp:Label>
&nbsp;&nbsp;</p>
    <p>
        <asp:Label ID="username" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username1" runat="server" Width="175px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="password" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password1" runat="server" Width="172px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="loginb" runat="server" Text="Login" onclick="loginb_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="register1" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink>
    </p>

</asp:Content>