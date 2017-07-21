<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Password Bank</h1>
        <p class="lead">An easy and safe way to store passwords for all the sites you can think of</p>
        <%--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>    



    <div class="row">
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
    </div>

</asp:Content>
