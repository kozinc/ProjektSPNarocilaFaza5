<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="08-AJAX-basic.aspx.cs" Inherits="uporabaAJAX.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="name" runat="server" Columns="30" BackColor="#CCCCCC"></asp:TextBox>
        Name<br />
        <asp:TextBox ID="address" runat="server" Columns="30" BackColor="#CCCCCC"></asp:TextBox>
        Address<br />
        <asp:TextBox ID="zip" runat="server" Columns="30" AutoPostBack="True" 
            ontextchanged="zip_TextChanged"></asp:TextBox>
        Zip code<br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="city" runat="server" Columns="30"></asp:TextBox>
                City<br />
                <asp:TextBox ID="state" runat="server" Columns="30"></asp:TextBox>
                State<br />
                <asp:Label ID="Label2" runat="server" ></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
    </form>
</body>
</html>
