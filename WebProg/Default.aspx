<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<link href="Content/Site.css" rel="stylesheet" />--%>
    <div>
        <h1 class="jumbotron">Password Bank</h1>
        <p class="lead">An easy and safe way to store passwords for all the sites you can think of</p>
        <%--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Logins].[ID], [WebsiteList].[Name],[WebsiteList].[Link], [Username], [password], [AdditionalInfo] AS Additional_Info, [Email] FROM [Logins] INNER JOIN [WebsiteList] on [WebsiteList].[Id] = [Logins].[WebsiteID] WHERE ([User] = @CurUser)">
            <SelectParameters>
                <asp:CookieParameter CookieName="CurUser" DefaultValue="" Name="CurUser" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnRowCommand ="GridView1_RowCommand" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Website" SortExpression="Name" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Additional_Info" HeaderText="Additional_Info" SortExpression="Additional_Info" />
                <asp:ButtonField Text="Go To Page" ButtonType="Button" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>

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
