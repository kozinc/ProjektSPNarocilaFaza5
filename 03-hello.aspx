<!-- ex3.aspx
     A simple example of an ASP.NET document with HTML controls.
     It uses textboxes to get the name and age of the client,
     which are then displayed.
     -->     
<%@ Page language="c#" %>

<html>
  <head> <title> Primer hranjenja vrednosti v kontrolah </title>
  </head>
  <body>
    <form id="Form1" runat = "server">
      <p>
        Your name: 
        <asp:textbox id = "name"  runat = "server" />
        <br />
        Your age:
        <asp:textbox id = "age"  runat = "server" />
        <br />
        <asp:button id = "submit" runat = "server" 
                      text = "Submit" />
      <br />
      <% if (IsPostBack) { %>
        Hello <%= name.Text %> <br />
        You are <%= age.Text %> years old <br />
        <% } %>
      </p>
    </form>
  </body>
</html>

