<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Prac3WebApp._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="message1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="title" runat="server" Text="Title:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="titleDrop" runat="server">
    <asp:ListItem>Mr</asp:ListItem>
    <asp:ListItem>Mrs</asp:ListItem>
    <asp:ListItem>Miss</asp:ListItem>
    <asp:ListItem>Ms</asp:ListItem>
</asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="first" runat="server" Text="First Name:"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="namebox1" runat="server" Width="200px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Label ID="errorf" runat="server" Style="color: #FF3300"></asp:Label>
    <br />
    <br />
    <asp:Label ID="last" runat="server" Text="Last Name:"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="namebox2" runat="server" Width="202px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Label ID="errorl" runat="server" Style="color: #FF3300"></asp:Label>
    <br />
    <br />
    <asp:Label ID="area" runat="server" Text="Area Code:"></asp:Label>
    &nbsp;&nbsp;
    <asp:DropDownList ID="codeDrop" runat="server" Height="16px" Width="43px">
        <asp:ListItem Value="02">02</asp:ListItem>
        <asp:ListItem Value="03">03</asp:ListItem>
        <asp:ListItem Value="07">07</asp:ListItem>
        <asp:ListItem Value="08">08</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="errorc" 
    runat="server" style="color: #FF3300"></asp:Label>
    &nbsp;&nbsp;
    <asp:Label ID="phone" runat="server" Text="Phone Number:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="phoneBox" runat="server" Width="143px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="error1" runat="server" Style="color: #FF3300"></asp:Label>
    <br />
    <br />
    <asp:Label ID="address" runat="server" Text="Address:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="addBox" runat="server" Width="554px"></asp:TextBox>
    &nbsp;
    <asp:Label ID="errora" runat="server" Style="color: #FF3300"></asp:Label>
    <br />
    <br />
    <asp:Label ID="state" runat="server" Text="State: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="stateDrop" runat="server">
        <asp:ListItem>NSW</asp:ListItem>
        <asp:ListItem>ACT</asp:ListItem>
        <asp:ListItem>VIC</asp:ListItem>
        <asp:ListItem>TAS</asp:ListItem>
        <asp:ListItem>QLD</asp:ListItem>
        <asp:ListItem>WA</asp:ListItem>
        <asp:ListItem>SA</asp:ListItem>
        <asp:ListItem>NT</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="email" runat="server" Text="email:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="emailBox" runat="server" Width="334px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="error2" runat="server" Style="color: #FF3300"></asp:Label>
    <br />
    <br />
    <asp:Label ID="label" runat="server" Text="Date of Birth:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Day:&nbsp;&nbsp;
    <asp:DropDownList ID="dayBox" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>16</asp:ListItem>
        <asp:ListItem>17</asp:ListItem>
        <asp:ListItem>18</asp:ListItem>
        <asp:ListItem>19</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>21</asp:ListItem>
        <asp:ListItem>22</asp:ListItem>
        <asp:ListItem>23</asp:ListItem>
        <asp:ListItem>24</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
        <asp:ListItem>26</asp:ListItem>
        <asp:ListItem>27</asp:ListItem>
        <asp:ListItem>28</asp:ListItem>
        <asp:ListItem>29</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        <asp:ListItem>31</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp; Month:&nbsp;&nbsp;
    <asp:DropDownList ID="monthBox" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp; Year:&nbsp;
    <asp:DropDownList ID="yearBox" runat="server">
        <asp:ListItem>2012</asp:ListItem>
        <asp:ListItem>2011</asp:ListItem>
        <asp:ListItem>2010</asp:ListItem>
        <asp:ListItem>2009</asp:ListItem>
        <asp:ListItem>2008</asp:ListItem>
        <asp:ListItem>2007</asp:ListItem>
        <asp:ListItem>2006</asp:ListItem>
        <asp:ListItem>2005</asp:ListItem>
        <asp:ListItem>2004</asp:ListItem>
        <asp:ListItem>2003</asp:ListItem>
        <asp:ListItem>2002</asp:ListItem>
        <asp:ListItem>2001</asp:ListItem>
        <asp:ListItem>2000</asp:ListItem>
        <asp:ListItem>1999</asp:ListItem>
        <asp:ListItem>1998</asp:ListItem>
        <asp:ListItem>1997</asp:ListItem>
        <asp:ListItem>1996</asp:ListItem>
        <asp:ListItem>1995</asp:ListItem>
        <asp:ListItem>1994</asp:ListItem>
        <asp:ListItem>1993</asp:ListItem>
        <asp:ListItem>1992</asp:ListItem>
        <asp:ListItem>1991</asp:ListItem>
        <asp:ListItem>1990</asp:ListItem>
        <asp:ListItem>1989</asp:ListItem>
        <asp:ListItem>1988</asp:ListItem>
        <asp:ListItem>1987</asp:ListItem>
        <asp:ListItem>1986</asp:ListItem>
        <asp:ListItem>1985</asp:ListItem>
        <asp:ListItem>1984</asp:ListItem>
        <asp:ListItem>1983</asp:ListItem>
        <asp:ListItem>1982</asp:ListItem>
        <asp:ListItem>1981</asp:ListItem>
        <asp:ListItem>1980</asp:ListItem>
        <asp:ListItem>1979</asp:ListItem>
        <asp:ListItem>1978</asp:ListItem>
        <asp:ListItem>1977</asp:ListItem>
        <asp:ListItem>1976</asp:ListItem>
        <asp:ListItem>1975</asp:ListItem>
        <asp:ListItem>1974</asp:ListItem>
        <asp:ListItem>1973</asp:ListItem>
        <asp:ListItem>1972</asp:ListItem>
        <asp:ListItem>1971</asp:ListItem>
        <asp:ListItem>1970</asp:ListItem>
        <asp:ListItem>1969</asp:ListItem>
        <asp:ListItem>1968</asp:ListItem>
        <asp:ListItem>1967</asp:ListItem>
        <asp:ListItem>1966</asp:ListItem>
        <asp:ListItem>1965</asp:ListItem>
        <asp:ListItem>1964</asp:ListItem>
        <asp:ListItem>1963</asp:ListItem>
        <asp:ListItem>1962</asp:ListItem>
        <asp:ListItem>1961</asp:ListItem>
        <asp:ListItem>1960</asp:ListItem>
        <asp:ListItem>1959</asp:ListItem>
        <asp:ListItem>1958</asp:ListItem>
        <asp:ListItem>1957</asp:ListItem>
        <asp:ListItem>1956</asp:ListItem>
        <asp:ListItem>1955</asp:ListItem>
        <asp:ListItem>1954</asp:ListItem>
        <asp:ListItem>1953</asp:ListItem>
        <asp:ListItem>1952</asp:ListItem>
        <asp:ListItem>1951</asp:ListItem>
        <asp:ListItem>1950</asp:ListItem>
        <asp:ListItem>1949</asp:ListItem>
        <asp:ListItem>1948</asp:ListItem>
        <asp:ListItem>1947</asp:ListItem>
        <asp:ListItem>1946</asp:ListItem>
        <asp:ListItem>1945</asp:ListItem>
        <asp:ListItem>1943</asp:ListItem>
        <asp:ListItem>1942</asp:ListItem>
        <asp:ListItem>1941</asp:ListItem>
        <asp:ListItem>1940</asp:ListItem>
        <asp:ListItem>1939</asp:ListItem>
        <asp:ListItem>1938</asp:ListItem>
        <asp:ListItem>1937</asp:ListItem>
        <asp:ListItem>1936</asp:ListItem>
        <asp:ListItem>1935</asp:ListItem>
        <asp:ListItem>1934</asp:ListItem>
        <asp:ListItem>1933</asp:ListItem>
        <asp:ListItem>1932</asp:ListItem>
        <asp:ListItem>1931</asp:ListItem>
        <asp:ListItem>1930</asp:ListItem>
        <asp:ListItem>1929</asp:ListItem>
    </asp:DropDownList>

&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="box" runat="server" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="reminder" runat="server" Text="Reminder me this birthday"></asp:Label>
&nbsp;

<br />
<br />
<asp:Label ID="comment" runat="server" Text="Comment: "></asp:Label>
<br />
<br />
<asp:TextBox ID="commentbox" runat="server" Height="168px" TextMode="MultiLine" 
    Width="380px"></asp:TextBox>

<br />
<br />
<asp:Button ID="button" runat="server" onclick="button_Click" Text="Submit" />

<br />
<br />


</asp:Content>

