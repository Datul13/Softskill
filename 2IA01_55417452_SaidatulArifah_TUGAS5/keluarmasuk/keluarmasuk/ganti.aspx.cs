using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace keluarmasuk
{
    public partial class menu : System.Web.UI.Page
    {
        string dat = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str = null;
        SqlCommand com;
        byte up;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(dat);
            conn.Open();
            str = "SELECT * FROM [Table]";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            while(reader.Read())
            {
                if(TextBox1.Text == reader["password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            conn.Close();
            if(up == 1)
            {
                if (TextBox3.Text == TextBox2.Text) 
                {
                    conn.Open();
                    str = "UPDATE [Table] set password = '" + TextBox2.Text + "'";
                    com = new SqlCommand(str, conn);
                    com.Parameters.Add(new SqlParameter("password", SqlDbType.VarChar, 50));
                    com.Parameters["password"].Value = TextBox3.Text;
                    com.ExecuteNonQuery();
                    Response.Redirect("aaa.aspx");
                    conn.Close();
                }
                else
                {
                    Label1.Text = "Password Baru dan Konfirmasi Password tidak cocok";
                }
            }
            
        }
    }
}