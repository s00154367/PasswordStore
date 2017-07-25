<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Password Bank</h1>
        <p class="lead">An easy and safe way to store passwords for all the sites you can think of</p>
        <%--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [WebsiteList].[Name], [Username], [password], [AdditionalInfo] AS Additional_Info, [Email] FROM [Logins] INNER JOIN [WebsiteList] on [WebsiteList].[Id] = [Logins].[WebsiteID] WHERE ([User] = @User)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="null" Name="User" SessionField="User" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    AdditionalInfo:
                    <asp:Label ID="AdditionalInfoLabel" runat="server" Text='<%# Eval("AdditionalInfo") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    User:
                    <asp:Label ID="UserLabel" runat="server" Text='<%# Eval("User") %>' />
                    <br />
                    WebsiteID:
                    <asp:Label ID="WebsiteIDLabel" runat="server" Text='<%# Eval("WebsiteID") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    AdditionalInfo:
                    <asp:TextBox ID="AdditionalInfoTextBox" runat="server" Text='<%# Bind("AdditionalInfo") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    User:
                    <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                    <br />
                    WebsiteID:
                    <asp:TextBox ID="WebsiteIDTextBox" runat="server" Text='<%# Bind("WebsiteID") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    AdditionalInfo:
                    <asp:TextBox ID="AdditionalInfoTextBox" runat="server" Text='<%# Bind("AdditionalInfo") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    User:
                    <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                    <br />
                    WebsiteID:
                    <asp:TextBox ID="WebsiteIDTextBox" runat="server" Text='<%# Bind("WebsiteID") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    AdditionalInfo:
                    <asp:Label ID="AdditionalInfoLabel" runat="server" Text='<%# Eval("AdditionalInfo") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    User:
                    <asp:Label ID="UserLabel" runat="server" Text='<%# Eval("User") %>' />
                    <br />
                    WebsiteID:
                    <asp:Label ID="WebsiteIDLabel" runat="server" Text='<%# Eval("WebsiteID") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    AdditionalInfo:
                    <asp:Label ID="AdditionalInfoLabel" runat="server" Text='<%# Eval("AdditionalInfo") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    User:
                    <asp:Label ID="UserLabel" runat="server" Text='<%# Eval("User") %>' />
                    <br />
                    WebsiteID:
                    <asp:Label ID="WebsiteIDLabel" runat="server" Text='<%# Eval("WebsiteID") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>

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
