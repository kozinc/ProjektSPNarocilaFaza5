<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="12b-podatkiBaza.aspx.cs" Inherits="WebApplication11.WebForm1" %>

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
            avtorjev iz knjižnice</strong></h3>
        <br />
        <asp:GridView ID="tabelaPodatki" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="MySqlData" AllowPaging="True" 
            AllowSorting="True" EnableSortingAndPagingCallbacks="True" PageSize="5">

            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="priimek" HeaderText="priimek" SortExpression="priimek" />
                <asp:BoundField DataField="ime" HeaderText="ime" 
                    SortExpression="ime" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>

            <EditRowStyle BackColor="#9966FF" />
            <HeaderStyle BackColor="#FFCC00" />
            <RowStyle BackColor="#99CCFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="MySqlData" runat="server" 
            ConnectionString="<%$ ConnectionStrings:classicmodelsConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:classicmodelsConnectionString.ProviderName %>" 
            SelectCommand="SELECT employeeNumber AS id, lastName AS priimek, firstName AS ime, email FROM employees"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="lokalniMySQL">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="lokalniMySQL" runat="server" ConnectionString="<%$ ConnectionStrings:booksConnectionString %>" ProviderName="<%$ ConnectionStrings:booksConnectionString.ProviderName %>" SelectCommand="SELECT ISBN, Title FROM titles"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
