<!-- ex1.aspx
     A simple example of an ASP.NET document
     It displays the number of days, hours, and minutes
     left this year (2008)
     -->     
<%@ Page language="c#" %>

<html xmlns = "http://www.w3.org/1999/xhtml">
  <head> <title> Ex1 </title>
  </head>
  <body>
    <h3> DNEVI, URE IN MINUTE DO NOVEGA LETA: </h3>
    <%
        string msg, days, hours, minutes;
        DateTime rightnow, newYears;
        TimeSpan timeSpan;
        
// Set date/time of right now and new years day
      rightnow = DateTime.Now;
      newYears = new DateTime(DateTime.Now.Year+1, 1, 1);

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
    %>
  </body>
</html>
