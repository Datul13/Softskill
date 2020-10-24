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
    public partial class laporan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                SqlConnection d = new SqlConnection(ConfigurationManager.ConnectionStrings["laporann"].ConnectionString);
                d.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [Table]", d);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grid.DataSource = dt;
                grid.DataBind();



                d.Close();
            }
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}