<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="05-validator.aspx.cs" Inherits="_1_timeLeft.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head> <title> Ex5 </title>
  </head>
  <body>
    <form id="Form1" runat = "server">
      <p>
        Your name: 
        <asp:TextBox  id = "name"  runat = "server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
          ControlToValidate = "name"
          Display = "Static"
          runat = "server"
          ErrorMessage = "Please enter your name" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />

        Your phone number:
        <asp:TextBox  id = "phone"  runat = "server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
          ControlToValidate = "phone"
          Display = "Static"
          runat = "server"
          ErrorMessage = "Phone number form must be ddd-ddd-dddd"
          ValidationExpression = "\d{3}-\d{3}-\d{4}" ForeColor="Red">*</asp:RegularExpressionValidator>
        <br />

        Your age:
        <asp:TextBox  id = "age"  runat = "server" />
        <asp:RangeValidator ID="RangeValidator1"
          ControlToValidate = "age"
          Display = "Static"
          runat = "server"
          MaximumValue = "110"
          MinimumValue = "10"
          Type = "Integer"
          ErrorMessage = "Age must be in the range of 10 to 110" ForeColor="Red">*</asp:RangeValidator>
      </p>
        <p>
            Your email:
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Vnesi email naslov!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
      </p>
        <p>
        <br />
     
        <input type = "submit"  value = "Submit" />
      </p>
      <p>
      </p>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
  </body>
</html>