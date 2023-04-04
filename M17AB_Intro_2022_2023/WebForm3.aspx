<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="M17AB_Intro_2022_2023.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="Ficheiro" runat="server" />
            <br />
            <asp:Button ID="bt" runat="server" Text="Enviar" OnClick="bt_Click"/>
        </div>
        <% Response.Write(DateTime.Now); %>
        <% =x %>

        <asp:Button ID="bt_transferir" runat="server" Text="Transferir" OnClick="bt_transferir_Click" />
    </form>
</body>
</html>
