<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="04-controls.aspx.cs" Inherits="_1_timeLeft.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head> <title> Ex4 </title>
  </head>
  <body>
    <form id="Form1" runat = "server">
      Name: <asp:TextBox runat = "server"  id = "name" />
      <br /><br />
      Favorite Color:<asp:DropDownList runat = "server"  
                                       id = "color"  />
      <br /><br />
      <asp:button  runat = "server"  id = "submitbutton"
                   text = "Submit"  OnClick = "OnClickHandler" />
      <br /><br />
      <asp:label id = "message"  runat = "server" />
    </form>
  </body>
</html>