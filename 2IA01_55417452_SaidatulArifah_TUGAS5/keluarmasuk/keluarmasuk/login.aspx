<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="keluarmasuk.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="menu.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>LOGIN</h1>
            <p>&nbsp;</p>
        <p>
            Username&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="193px"></asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
        <p>
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="193px" TextMode="Password"></asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Height="32px" Text="LOGIN" Width="78px" OnClick="Button1_Click" />
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
