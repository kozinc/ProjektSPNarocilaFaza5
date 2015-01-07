using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_timeLeft
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected DropDownList color;
        protected TextBox name;
        protected Button submit;
        protected Label message;


        // OnLoad handler to populate the dropdownlist

        override protected void OnLoad(EventArgs e)
        {
            if (!IsPostBack)
            {
                color.Items.Add(new ListItem("blue"));
                color.Items.Add(new ListItem("red"));
                color.Items.Add(new ListItem("green"));
                color.Items.Add(new ListItem("yellow"));
            }
        }

        // Handler for the button

        protected void OnClickHandler(object src, EventArgs e)
        {
            string newMsg = string.Format(
                "Hi {0}, your favorite color is {1}",
                name.Text, color.SelectedItem);
            message.Text = newMsg;
        }

        /*
        protected void color_SelectedIndexChanged(object sender, EventArgs e)
        {
            OnClickHandler(sender, e);
        }
         */
    }
}