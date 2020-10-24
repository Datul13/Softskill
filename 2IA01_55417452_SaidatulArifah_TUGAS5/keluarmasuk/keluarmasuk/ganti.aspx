<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ganti.aspx.cs" Inherits="keluarmasuk.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GUDANG</title>
    <link rel="stylesheet" type="text/css" href="menu.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="menu-wrap">
	<ul>
		<li><a href ="ganti.aspx">Menu</a>
			<ul>
				<li><a href="ganti.aspx">Ganti Password</a></li>
				<li><a href="logout.aspx">Logout</a></li>
			</ul>
		</li>
		<li class="menu1"><a href="Barang Masuk.aspx">Transaksi</a>
			<ul>
                <li class="hide hide1"><a href="Barang Masuk.aspx">Barang Masuk</a></li>
				<li class="hide hide2"><a href="Barang Keluar.aspx">Barang Keluar</a></li>
			</ul>
		</li>
		<li><a href="laporan.aspx">Persediaan</a></li>
	</ul>
  </div>
    <center>
            <h2>&nbsp;</h2>
            <h2>&nbsp;</h2>
            <h2>GANTI PASSWORD</h2>
            <p>&nbsp;</p>
            Password Lama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="195px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            Password Baru&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="195px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            Konfirmasi Password&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="195px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="31px" Text="Change" Width="85px" OnClick="Button1_Click" />
        </center>
</form>
</body>
</html>
