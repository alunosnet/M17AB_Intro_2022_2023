using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                tb_n1.Text = "0";
                tb_n2.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x, y;
            x = int.Parse(tb_n1.Text);
            y = int.Parse(tb_n2.Text);
            lb_resultado.Text = (x + y).ToString();
        }


    }
}