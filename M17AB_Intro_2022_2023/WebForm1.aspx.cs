﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_Intro_2022_2023
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["valor"] != null)
            {
                string parametro = Server.UrlDecode(Request["valor"].ToString());
                valor.InnerText= parametro;
            }
        }
    }
}