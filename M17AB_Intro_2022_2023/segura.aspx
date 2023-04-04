<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="segura.aspx.cs" Inherits="M17AB_Intro_2022_2023.segura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Página segura</h1>
            <div runat="server" id="info"></div>
            <asp:Button runat="server" ID="bt_logout" Text="Terminar Sessão" OnClick="bt_logout_Click" />
        </div>
    </form>
</body>
</html>
