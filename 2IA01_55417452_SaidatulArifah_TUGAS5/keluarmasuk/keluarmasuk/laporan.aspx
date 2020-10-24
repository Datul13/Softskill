<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laporan.aspx.cs" Inherits="keluarmasuk.laporan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <div>
            <center>
            <h2>&nbsp;</h2>
                <h2>&nbsp;</h2>
                <h2>PERSEDIAAN BARANG</h2>
                <p>&nbsp;</p>
            <asp:GridView ID="grid" runat="server" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="kode"  Height="90px" style="margin-left: 0px" Width="382px" OnSelectedIndexChanged="grid_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="kode" HeaderText="kode" ReadOnly="True" SortExpression="kode" />
                    <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                    <asp:BoundField DataField="kategori" HeaderText="kategori" SortExpression="kategori" />
                    <asp:BoundField DataField="stok" HeaderText="stok" SortExpression="stok" />
                    <asp:BoundField DataField="harga" HeaderText="harga" SortExpression="harga" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:laporann %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </center>
    </form>
</body>
</html>
