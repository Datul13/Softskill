using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace keluarmasuk
{
    public partial class Barang_Masuk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection d = new SqlConnection(ConfigurationManager.ConnectionStrings["laporann"].ConnectionString);
            d.Open();
            string cekKode = "SELECT * FROM [Table] WHERE KODE='" + kode.Text + "'";
            SqlCommand query = new SqlCommand(cekKode, d);
            string insert = "INSERT INTO [Table] (kode,nama,kategori,stok,harga) VALUES (@kode, @nama, @kategori, @stok, @harga)";
            SqlCommand insertquery = new SqlCommand(insert, d);
            insertquery.Parameters.AddWithValue("@kode", kode.Text);
            insertquery.Parameters.AddWithValue("@nama", nama.Text);
            insertquery.Parameters.AddWithValue("@kategori", kategori.SelectedValue);
            insertquery.Parameters.AddWithValue("@stok", jumlah.Text);
            insertquery.Parameters.AddWithValue("@harga", harga.Text);
            insertquery.ExecuteNonQuery();
            d.Close();
                

                kode.Text = null;
                nama.Text = null;
                kategori.SelectedIndex = 0;
                jumlah.Text = null;
                harga.Text = null;
                Response.Redirect("laporan.aspx");
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            kode.Text = null;
            nama.Text = null;
            kategori.SelectedIndex = 0;
            jumlah.Text = null;
            harga.Text = null;
        }
    }
}