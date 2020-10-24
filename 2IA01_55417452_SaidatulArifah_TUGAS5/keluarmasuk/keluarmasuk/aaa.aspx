<%@ Page Language="C#" AutoEventWireup="true" Inherits="keluarmasuk.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="menu.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <center>

            <asp:Label ID="Label1" runat="server" Text="Password berhasil diubah. Login ulang "></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/login.aspx">klik di sini</asp:HyperLink>
            <br />

        </center>
    </form>
</body>
</html>