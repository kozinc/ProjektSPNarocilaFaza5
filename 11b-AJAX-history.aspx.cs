using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectedColor.Text = ddlColor.SelectedValue;
            lblSelectedColor.BackColor = System.Drawing.Color.FromName(ddlColor.SelectedValue);
            MainScriptManager.AddHistoryPoint("SelectedColor", ddlColor.SelectedValue);  //shranimo barvo v zgodovinsko stanje

        }

        protected void MainScriptManager_Navigate(object sender, HistoryEventArgs e)   // se izvede ob navigaciji (pritisku BACK)
        {
            string color = e.State["SelectedColor"];    //beremo shranjeno prejšnjo barvo
            if (!String.IsNullOrEmpty(color))
            {
                lblSelectedColor.Text = color;          // nastavimo prejšnjo barvo
                lblSelectedColor.BackColor = System.Drawing.Color.FromName(color);
            }

        }
    }
}