using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            //se o email é joaquim@gmail.com e a password 12345
            string email=tbEmail.Text;
            string password=tbPassword.Text;
            if (email == "joaquim@gmail.com" && password == "12345")
            {
                Session["email"] = email;
                Session["hora_login"]=DateTime.Now;
                Session["perfil"] = "admin";
                Response.Redirect("admin.aspx");
            }
            else
                if (email == "maria@gmail.com" && password == "12345")
                {
                    Session["email"] = email;
                    Session["hora_login"] = DateTime.Now;
                    Session["perfil"] = "utilizador";
                    Response.Redirect("segura.aspx");
                }
                else
                    lbErro.Text = "Login falhou! Tente novamente!";
        }
    }
}