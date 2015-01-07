<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11b-AJAX-history.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
    <%-- <asp:ScriptManager runat="server" ID="MainScriptManagr" /> --%>
    <asp:ScriptManager runat="server" ID="MainScriptManager" 
        EnableHistory="true" OnNavigate="MainScriptManager_Navigate" />
 
    <asp:UpdatePanel runat="server" ID="pnlColorSelect">
        <ContentTemplate>
            <asp:DropDownList runat="server" ID="ddlColor" AutoPostBack="true" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged">
                <asp:ListItem Value="Red">Red</asp:ListItem>
                <asp:ListItem Value="Blue">Blue</asp:ListItem>
                <asp:ListItem Value="Green">Green</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Selected color:
            <asp:Label runat="server" ID="lblSelectedColor" />
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
