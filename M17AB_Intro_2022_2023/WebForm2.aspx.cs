using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dados_pedido = "IP: " + Request.UserHostAddress + "\n" +
                "Tipo de pedido: " + Request.RequestType + "\n" +
                "Nome: " + Request.UserHostName + "\n" +
                "Método http: " + Request.HttpMethod+"\n"+
                "Agente: "+Request.UserAgent;

            dados.InnerText= dados_pedido;
        }
    }
}