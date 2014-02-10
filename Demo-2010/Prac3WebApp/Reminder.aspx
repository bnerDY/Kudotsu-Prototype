<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="Reminder.aspx.cs" Inherits="Prac3WebApp.WebForm1" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Upcoming Birthday: </h2>
    <h2>
        <br />
        <asp:TextBox ID="birthday" runat="server" BorderStyle="None" Enabled="False" 
            ForeColor="#FF3300" Height="149px" TextMode="MultiLine" Width="513px"></asp:TextBox>
    </h2>

<p>&nbsp;</p>

</asp:Content>