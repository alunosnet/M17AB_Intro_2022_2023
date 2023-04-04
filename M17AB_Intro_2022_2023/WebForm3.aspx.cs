using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public int x = 10;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            //Testar o tipo ficheiro
            //imagens jpg e png
            if (Ficheiro.HasFile)
            {
                if(Ficheiro.PostedFile.ContentType=="image/jpeg" ||
                    Ficheiro.PostedFile.ContentType == "image/png")
                {
                    if(Ficheiro.PostedFile.ContentLength>0 &&
                        Ficheiro.PostedFile.ContentLength < 5000000)
                    {
                        string ficheiro=Server.MapPath(@"~\imagens\");
                        ficheiro += Ficheiro.FileName;
                        Ficheiro.SaveAs(ficheiro);
                    }
                    else
                    {
                        Response.Write("<script>alert('O tamanho do ficheiro não é válido')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('O tipo de ficheiro não é válido!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Tem de escolher um ficheiro!')</script>");
            }
        }

        protected void bt_transferir_Click(object sender, EventArgs e)
        {
            Server.Transfer("webform4.aspx");
        }
    }
}