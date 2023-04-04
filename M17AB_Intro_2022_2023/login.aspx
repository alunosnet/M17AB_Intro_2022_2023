<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="M17AB_Intro_2022_2023.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Email: <asp:TextBox runat="server" ID="tbEmail" placeholder="Insira o seu email" />
            <br />
            Password <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" />
            <br />
            <asp:Button runat="server" ID="bt" Text="Login" OnClick="bt_Click"/> 
            <br />
            <asp:Label runat="server" ID="lbErro" />
        </div>
    </form>
</body>
</html>
