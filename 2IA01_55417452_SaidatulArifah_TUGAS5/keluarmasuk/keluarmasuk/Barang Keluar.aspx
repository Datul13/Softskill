<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Barang Keluar.aspx.cs" Inherits="keluarmasuk.Barang_Keluar" %>

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
            <h2>&nbsp;</h2>
            <h2>BARANG KELUAR</h2>
        <br />
        
                        <label class="label">Kode&nbsp;&nbsp;&nbsp; </label>
                        <asp:TextBox class="input2" ID="kode" runat="server" Width="223px"></asp:TextBox>
                        &nbsp;
                        <asp:Button class="button2" ID="Button1" runat="server" Text="Cari" OnClick="Button1_Click" Width="53px"/><br />
                        <asp:Label ID="Label1" Visible="false" runat="server" Text="Nama : "></asp:Label><asp:Label ID="nama_lbl" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="Label2" Visible="false" runat="server" Text="Kategori : "></asp:Label><asp:Label ID="kategori_lbl" runat="server" Text=""></asp:Label> <br />
                        <asp:Label ID="Label3" Visible="false" runat="server" Text="Stok : "></asp:Label><asp:Label ID="stok_lbl" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="Label4" Visible="false" runat="server" Text="Harga : "></asp:Label><asp:Label ID="harga_lbl" runat="server" Text=""></asp:Label><br /><br />
                        <asp:Label ID="jml_lbl" Visible="false" runat="server" Text="Jumlah Barang Keluar"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox Visible="false" class="input2" ID="jml_klr" runat="server" Width="181px"></asp:TextBox><br>
                        <asp:Button Visible="false" ID="Button3" class="button2" runat="server" Text="Proses" OnClick="Button3_Click"  />
    </center>
    </form>
</body>
</html>
