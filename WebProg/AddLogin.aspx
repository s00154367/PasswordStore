<%@ Page Title="Add Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddLogin.aspx.cs" Inherits="WebProg.AddLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<link href="Styles/StyleSheet.css" rel="stylesheet" />--%>
    <div class="jumbotron">
        <h1>Password Bank</h1>
        <p class="lead">An easy and safe way to store passwords for all the sites you can think of</p>
        <%--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>



    <div class="row">
        <h2 class="Jumbotron">Add A Login</h2>

        <div id="websiteDetails" class="col-md-4">

            <label id="Label1" for="websiteName">
                Website Name:               
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Name] FROM [WebsiteList]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlWebsite" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" ></asp:DropDownList>

                
            </label>
            <label id="Label3" for="username">
                Username/Email:
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </label>
            <label id="Label4" for="password">
                Password:
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </label>
            <label id="Label6" for="email">
                Email Address:
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </label>
            <label id="Label5" for="info">
                Additional Info:
                <asp:TextBox ID="info" runat="server"></asp:TextBox>
            </label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <div id="loginDetails" class="col-md-4">
            <p>Website not showing up in the list? Add a Website to the list.</p>
            <label id="Label7" for="websiteName">
                Website Name:
                <asp:TextBox ID="Wname" runat="server"></asp:TextBox>
            </label>
            <label id="Label8" for="link">
                Website Address:
                <asp:TextBox ID="link" runat="server"></asp:TextBox>
            </label>
        </div>
        <asp:Button ID="AddWebsite" runat="server" Text="Add Website" OnClick="AddWebsite_Click" />



    </div>
    <asp:Button ID="add" runat="server" Text="Add Login" class="btn btn-default" OnClick="add_Click" />


</asp:Content>
