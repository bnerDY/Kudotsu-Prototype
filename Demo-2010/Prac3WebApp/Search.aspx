<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Search.aspx.cs" Inherits="Prac3WebApp.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Search</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Search by:"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="Drop" runat="server">
            <asp:ListItem>Last Name</asp:ListItem>
            <asp:ListItem>Phone Number</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="label" runat="server"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="searchbox" runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="searchi" runat="server" Style="color: #FF3300"></asp:Label>
    </p>
    <p>
        <asp:Button ID="button" runat="server" OnClick="button_Click" Text="Search" />
    </p>
    <p>
        <asp:Label ID="info" runat="server" Style="font-size: medium; font-weight: 700"></asp:Label>
    </p>
    <p>
        <asp:Label ID="fullname" runat="server" Visible="False">First Name:</asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="namebox1" runat="server" Enabled="False" Visible="False" 
            Width="151px"></asp:TextBox>
        
    </p>
    <p>
        <asp:Label ID="namel" runat="server" Text="Last Name: " Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="namebox2" runat="server" Enabled="False" Visible="False" Width="152px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:Label ID="code" runat="server" Text="Area Code:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="codeDrop" runat="server" Enabled="False" Visible="False">
        <asp:ListItem Value="02">02</asp:ListItem>
        <asp:ListItem Value="03">03</asp:ListItem>
        <asp:ListItem Value="07">07</asp:ListItem>
        <asp:ListItem Value="08">08</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="phone" runat="server" Text="Phone Number:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="phoneBox" runat="server" Visible="False" 
            Width="147px" Enabled="False"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="address1" runat="server" Text="Address: " Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="addBox" runat="server" Enabled="False" Visible="False" 
            Width="187px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="state1" runat="server" Text="State: " Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="stateD" runat="server" Enabled="False" Visible="False">
            <asp:ListItem>NSW</asp:ListItem>
            <asp:ListItem>ACT</asp:ListItem>
            <asp:ListItem>VIC</asp:ListItem>
            <asp:ListItem>TAS</asp:ListItem>
            <asp:ListItem>QLD</asp:ListItem>
            <asp:ListItem>WA</asp:ListItem>
            <asp:ListItem>SA</asp:ListItem>
            <asp:ListItem>NT</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="email1" runat="server" Text="email" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="emailBox" runat="server" Enabled="False" Visible="False" 
            Width="185px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="dob" runat="server" Text="Date of Birth: " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="day1" runat="server" Text="Day:" Visible="False"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="dayDrop" runat="server" Enabled="False" Visible="False">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="month1" runat="server" Text="Month: " Visible="False"></asp:Label>
&nbsp;
        <asp:DropDownList ID="monthDrop" runat="server" Enabled="False" Visible="False">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Year1" runat="server" Text="Year:" Visible="False"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="yearD" runat="server" Enabled="False" Visible="False">
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
    </p>
<p>
        <asp:Label ID="message" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="update" runat="server" Text="Update" Visible="False" 
            Width="77px" onclick="update_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="confirm" runat="server" Text="Confirm" Visible="False" Width="73px" 
            onclick="confirm_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>
