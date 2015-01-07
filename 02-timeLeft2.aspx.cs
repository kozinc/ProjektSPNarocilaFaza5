using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        string msg, days, hours, minutes;
        TimeSpan timeSpan;

        public void timer()
        {

            // Set date/time of New Years Day and right now
            DateTime rightnow = DateTime.Now;
            DateTime newYears = new DateTime(DateTime.Now.Year+1, 1, 1);

            // Compute the difference in time/dates
            timeSpan = newYears.Subtract(rightnow);

            // Compute and display the differences in days, hours, and minutes
            days = timeSpan.Days.ToString();
            msg = string.Format("Days: {0},  ", days);
            Response.Write(msg);
            hours = timeSpan.Hours.ToString();
            msg = string.Format("Hours: {0},  ", hours);
            Response.Write(msg);
            minutes = timeSpan.Minutes.ToString();
            msg = string.Format("Minutes: {0} <br />", minutes);
            Response.Write(msg);
        }

    }
}