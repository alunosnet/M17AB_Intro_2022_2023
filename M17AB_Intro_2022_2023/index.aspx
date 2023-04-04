<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="M17AB_Intro_2022_2023.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nº 1"></asp:Label>
            <asp:TextBox ID="tb_n1" runat="server" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nº 2"></asp:Label>
            <asp:TextBox ID="tb_n2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Somar" />
            <br />
            <asp:Label ID="lb_resultado" runat="server" Text="Label"></asp:Label>
            <a href="WebForm1.aspx">Lista de Alunos</a>
            <br />
            <asp:Button ID="bt" runat="server" Text="Lista de alunos" OnClick="bt_Click" />
            <br />
            <asp:Button ID="bt2" runat="server" Text="Lista de alunos com parametro" OnClick="bt2_Click" />
        </div>
    </form>
</body>
</html>
