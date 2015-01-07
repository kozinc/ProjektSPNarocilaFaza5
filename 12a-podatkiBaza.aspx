<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="12a-podatkiBaza.aspx.cs" Inherits="WebApplication12.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <h3>
            <strong>Seznam
            zaposlenih v podružnicah</strong></h3>
        Izberi podružnico:&nbsp;&nbsp;
        <asp:DropDownList ID="podruznicaList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="podruznicaList_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="naslovTxt" runat="server" style="font-weight: 700"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="tabelaPodatki" runat="server">

            <EditRowStyle BackColor="#9966FF" />
            <HeaderStyle BackColor="#FFCC00" />
            <RowStyle BackColor="#99CCFF" />
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="sporociloTxt" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
