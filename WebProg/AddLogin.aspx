<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddLogin.aspx.cs" Inherits="WebProg.AddLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h2>Add A Login</h2>

            <div id="websiteDetails" class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Website:">
                <asp:TextBox ID="websiteName" runat="server"></asp:TextBox>
            </asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Website Address:">
                <asp:TextBox ID="link" runat="server"></asp:TextBox>
            </asp:Label>
            </div>

            <div id="loginDetails" class="col-md-4">
            <asp:Label ID="Label3" runat="server" Text="Username:">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Password:">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Additional Info:">
                <asp:TextBox ID="info" runat="server"></asp:TextBox>
            </asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Email Address:">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </asp:Label>
            </div>

            <asp:Button ID="add" runat="server" Text="Add Login" />

        </div>
    </form>
</body>
</html>
