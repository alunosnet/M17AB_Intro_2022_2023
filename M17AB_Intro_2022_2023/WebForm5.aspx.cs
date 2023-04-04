using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //se o cookies existir esconder a mensagem
            HttpCookie aviso = Request.Cookies["PSIESEN"];
            if (aviso != null)
                aviso_cookies.Visible = false;
        }

        protected void bt_cookies_Click(object sender, EventArgs e)
        {
            HttpCookie novo = new HttpCookie("PSIESEN");
            novo.Value = "Qualquer coisa";
            novo.Expires= DateTime.Now.AddDays(30);
            Response.Cookies.Add(novo);

            aviso_cookies.Visible = false;
        }
    }
}