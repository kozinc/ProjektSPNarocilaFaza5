<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testni.aspx.cs" Inherits="primeriASP.Testni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-large; color: #008000">
    
        Klikni na spodnji gumb!<br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#FF6600" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="napis" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 387px; top: 213px; position: absolute" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 10px; top: 257px; position: absolute; right: 945px;" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>ponedeljek</asp:ListItem>
            <asp:ListItem>torek</asp:ListItem>
            <asp:ListItem>sreda</asp:ListItem>
            <asp:ListItem>cetrtek</asp:ListItem>
            <asp:ListItem>petek</asp:ListItem>
            <asp:ListItem>sobota</asp:ListItem>
            <asp:ListItem>nedelja</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" style="z-index: 1; left: 289px; top: 336px; position: absolute; height: 235px; width: 391px">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
