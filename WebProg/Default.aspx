<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Password Bank</h1>
        <p class="lead">An easy and safe way to store passwords for all the sites you can think of</p>
        <%--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [WebsiteList].[Name], [Username], [password], [AdditionalInfo] AS Additional_Info, [Email] FROM [Logins] INNER JOIN [WebsiteList] on [WebsiteList].[Id] = [Logins].[WebsiteID] WHERE ([User] = @CurUser)">
            <SelectParameters>
                <asp:CookieParameter CookieName="CurUser" DefaultValue="&quot;&quot;" Name="CurUser" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Username:
                <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                Additional_Info:
                <asp:Label ID="Additional_InfoLabel" runat="server" Text='<%# Eval("Additional_Info") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>

    </div>    



    <!--<div class="row">
        <div class="col-md-4">
            <h2 id="login1">Facebook</h2>
            <img id="logo1" alt="logo" src="Images/nologo.png"/>
            <p>
                <a class="btn btn-default" ">Login &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 id="login2">Google</h2>
            <img id="logo2" alt="logo" src="Images/nologo.png"/>
            <p>
                <a class="btn btn-default" ">Login &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 id="login3">YouTube</h2>
            <img id="logo3" alt="logo" src="Images/nologo.png"/>
            <p>
                <a class="btn btn-default" ">Login &raquo;</a>
            </p>
        </div>
    </div>-->

</asp:Content>
