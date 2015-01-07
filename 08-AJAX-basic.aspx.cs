using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace uporabaAJAX
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Init(object sender, EventArgs e)
        {
            // if (!Page.IsPostBack)
            Label1.Text = "(Prvič naloženo: " + DateTime.Now.ToString() + ")";
        }

        protected void zip_TextChanged(object sender, EventArgs e)
        {
            Hashtable zipCityState = new Hashtable();
            char[] delimiter = new char[] { ',' };
            zipCityState.Add("81611", "Aspen,Colorado");
            zipCityState.Add("81411", "Bedrock,Colorado");
            zipCityState.Add("80908", "Black Forest,Colorado");
            zipCityState.Add("80301", "Boulder,Colorado");
            zipCityState.Add("81127", "Chimney Rock,Colorado");
            zipCityState.Add("80901", "Colorado Springs,Colorado");
            zipCityState.Add("81223", "Cotopaxi,Colorado");
            zipCityState.Add("80201", "Denver,Colorado");
            zipCityState.Add("81675", "Vail,Colorado");
            zipCityState.Add("80435", "Keystone,Colorado");
            zipCityState.Add("80536", "Virginia Dale,Colorado");

            if (zipCityState.Contains(zip.Text))
            {
                city.Text = ((String)zipCityState[zip.Text]).Split(delimiter)[0];
                state.Text = ((String)zipCityState[zip.Text]).Split(delimiter)[1];
            }
            else
            {
                city.Text = "";
                state.Text = "";
            }
            Label2.Text = "(Osveženo: " + DateTime.Now.ToString() + ")";
        }
    }
}