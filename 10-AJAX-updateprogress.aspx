<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-AJAX-updateprogress.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <style type="text/css">
        #UpdateProgress1 {
            display: inline;
        }
    </style>
    <title>UpdateProgress control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
        <asp:UpdateProgress runat="server" ID="PageUpdateProgress" DynamicLayout="False">
            <ProgressTemplate>
                Stran izvaja klic AJAX ...
            <br />
                <br />
            </ProgressTemplate>
        </asp:UpdateProgress>

        <asp:UpdatePanel runat="server" ID="Panel1">
            <ContentTemplate>
                <asp:Button runat="server" ID="UpdateButton" OnClick="UpdateButton_Click"
                    Text="Gumb 1" />
                <asp:UpdateProgress runat="server" ID="UpdateProgress1" AssociatedUpdatePanelID="Panel1"
                    DynamicLayout="False">
                    <ProgressTemplate>
                        Nalagam klic AJAX gumba 1 ...
                    <br />
                        <br />
                        <br />
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel runat="server" ID="Panel2">
            <ContentTemplate>
                <asp:Button runat="server" ID="Button1" OnClick="UpdateButton_Click"
                    Text="Gumb 2" />
                <asp:UpdateProgress runat="server" ID="UpdateProgress2"
                    AssociatedUpdatePanelID="Panel2" DynamicLayout="False">
                    <ProgressTemplate>
                        Nalagam klic AJAX gumba 2 ...
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>

