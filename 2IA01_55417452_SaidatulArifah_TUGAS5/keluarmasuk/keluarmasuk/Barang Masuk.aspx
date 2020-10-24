<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Barang Masuk.aspx.cs" Inherits="keluarmasuk.Barang_Masuk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            <h2>
                &nbsp;</h2>
            <h2>BARANG MASUK</h2>
        <br />
        Kode Barang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="kode" runat="server" Height="18px" style="margin-left: 0px" Width="220px"></asp:TextBox>
        <br />
        <br />
        Nama Barang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="nama" runat="server" Height="18px" style="margin-left: 0px" Width="220px"></asp:TextBox>
        <br />
        <br />
        Kategori&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="kategori" runat="server" Height="18px" style="margin-left: 0px" Width="220px">
            <asp:ListItem>Makanan</asp:ListItem>
            <asp:ListItem>Minuman</asp:ListItem>
            <asp:ListItem>Perlengkapan Masak</asp:ListItem>
            <asp:ListItem>Perlengkapan Mandi</asp:ListItem>
            <asp:ListItem>Lain-lain</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Jumlah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="jumlah" runat="server" Height="18px" style="margin-left: 0px" Width="220px"></asp:TextBox>
        <br />
        <br />
        Harga(per satuan)&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="harga" runat="server" Height="18px" Width="220px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="31px" style="margin-left: 0px" Text="Tambah" Width="85px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel" Height="31px" Width ="85px" OnClick="Button2_Click" />
        <br />
        </center>
    </form>
</body>
</html>
