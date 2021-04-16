using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace $safeprojectname$
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-R73TJCQ\\SQLEXPRESS;Initial Catalog=db;Integrated Security=True";

            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select COUNT(1) FROM StudentMaster WHERE Username=@Username AND Password=@Password", con);
                cmd.Parameters.AddWithValue("@Username", uname.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", pass.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = uname.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else { ErrorLogin.Visible = true; }
            }
        }
       
}
}