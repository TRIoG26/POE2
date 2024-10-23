using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace POE2
{
    public partial class Claim : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("NAME" + TextBox1, con);cmd.ExecuteNonQuery();con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}