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
            
            <Label ID="Label1" for="websiteName">Website Name:               
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Name] FROM [WebsiteList]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlWebsite" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id"></asp:DropDownList>

                <asp:Button ID="Button1" runat="server" Text="AddAWebsite" />
                </Label>     
            <Label ID="Label3" for="username">Username/Email:
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label4" for="password">Password:
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label6" for="email">Email Address:
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label5"  for="info">Additional Info:
                <asp:TextBox ID="info" runat="server"></asp:TextBox>
            </Label>
        </div>

        <div id="loginDetails" class="col-md-4 disabled" >
       
                       <Label ID="Label7" for="websiteName">Website Name:
                <asp:TextBox ID="Wname" runat="server"></asp:TextBox>
            </Label>     
            <Label ID="Label8" for="link">Website Address:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label9" for="password">Password:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label10" for="email">Email Address:
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </Label>
            <Label ID="Label11"  for="info">Additional Info:
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </Label>
        </div>

        

    </div>
<asp:Button ID="add" runat="server" Text="Add Login" class="btn btn-default" OnClick="add_Click"/>


</asp:Content>
