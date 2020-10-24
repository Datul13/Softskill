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
    public partial class Barang_Keluar : System.Web.UI.Page
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
            query.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string update = "SELECT * FROM [Table] WHERE kode=" + kode.Text + "";
                SqlCommand query2 = new SqlCommand(update, d);
                query2.ExecuteNonQuery();
                SqlDataReader reader = query2.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    jml_klr.Visible = true;
                    Button3.Visible = true;
                    jml_lbl.Visible = true;
                    nama_lbl.Text = (reader["nama"].ToString());
                    kategori_lbl.Text = (reader["kategori"].ToString());
                    stok_lbl.Text = (reader["stok"].ToString());
                    harga_lbl.Text = (reader["harga"].ToString())
                    ;
                }
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Button3.Visible = false;
                jml_klr.Visible = false;
                jml_lbl.Visible = false;
                nama_lbl.Text = "";
                kategori_lbl.Text = "";
                stok_lbl.Text = "";
                harga_lbl.Text = "";
                Response.Write("<script>alert('item tidak ditemukan')</script>");
                kode.Text = "";
            }

            d.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (int.Parse(jml_klr.Text) <= int.Parse(stok_lbl.Text))
            {
                SqlConnection d = new SqlConnection(ConfigurationManager.ConnectionStrings["laporann"].ConnectionString);
                int a;
                a = int.Parse(stok_lbl.Text) - int.Parse(jml_klr.Text);
                d.Open();
                SqlCommand query3 = d.CreateCommand();
                query3.CommandType = CommandType.Text;
                query3.CommandText = "UPDATE [Table] SET stok=" + a + " WHERE kode=" + int.Parse(kode.Text) + "";
                query3.ExecuteNonQuery();
                query3.CommandText = "INSERT INTO [Table] VALUES(NOW(), 'Keluar', " + kode.Text + ", '" + nama_lbl.Text + "','" + kategori_lbl.Text + "'," + jml_klr.Text + "," + harga_lbl.Text + "," + a + ")";
                query3.ExecuteNonQuery();
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Button3.Visible = false;
                jml_klr.Visible = false;
                jml_lbl.Visible = false;
                nama_lbl.Text = "";
                kategori_lbl.Text = "";
                stok_lbl.Text = "";
                harga_lbl.Text = "";
                kode.Text = "";
                Response.Write("<script>alert('Stok Telah Dikurangi')</script>");

                d.Close();
            }
            else
            {
                Response.Write("<script>alert('Stok Tidak Tersedia')</script>");
                jml_klr.Text = "";
            }
        }
    }
}