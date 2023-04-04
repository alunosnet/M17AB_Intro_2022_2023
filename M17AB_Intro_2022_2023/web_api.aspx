<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_api.aspx.cs" Inherits="M17AB_Intro_2022_2023.web_api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="div_meteo" runat="server"></div>
            <button id="btjs">Clica em mim</button>
            <asp:Button ID="bt" runat="server" Text="Clica em mim C#" OnClick="bt_Click" />
        </div>
    </form>
    <script>
        document.getElementById("btjs").addEventListener("click", function (e) {
            e.preventDefault();
            meteorologia();
        });
        function meteorologia() {
            fetch("https://api.ipma.pt/open-data/forecast/meteorology/cities/daily/1182300.json")
                .then(resposta => {
                    return resposta.json();
                })
                .then(json => {
                    document.getElementById("div_meteo").innerText = "Temperatura máxima prevista " + json.data[0].tMax;
                });
        }
    </script>
</body>
</html>
