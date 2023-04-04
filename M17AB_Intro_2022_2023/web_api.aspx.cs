using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class web_api : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            HttpWebRequest pedido = (HttpWebRequest)WebRequest.Create("https://api.ipma.pt/open-data/forecast/meteorology/cities/daily/1182300.json");
            pedido.Method = "GET";

            HttpWebResponse resposta = (HttpWebResponse) pedido.GetResponse();
            string jsonstring;
            using(Stream stream=resposta.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                jsonstring = reader.ReadToEnd();
            }
            dynamic rss = JObject.Parse(jsonstring);
            dynamic data = rss.data;

            div_meteo.InnerText = "Previsão da temperatura máxima " + data[0]["tMax"];

        }
    }
}