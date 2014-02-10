<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="Prac3WebApp.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Register: </h2>
<p>
    <asp:Label ID="error" runat="server"></asp:Label>
</p>
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
        <asp:Label ID="Label1" runat="server" Text="Confirm_Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password2" runat="server" Width="173px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="registerb" runat="server" Text="Register" 
            onclick="registerb_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>

</asp:Content>
