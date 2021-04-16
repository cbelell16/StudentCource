using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace $safeprojectname$
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GVbind();
            }

        }
        protected void GVbind()
        {
            con.ConnectionString = "Data Source=DESKTOP-R73TJCQ\\SQLEXPRESS;Initial Catalog=db;Integrated Security=True";
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select CoursesMaster.CourseId,CoursesMaster.CourseName,CourseFeesMaster.Fees from CoursesMaster,CourseFeesMaster where CoursesMaster.CourseId=CourseFeesMaster.CourseId; ", con);
                SqlDataReader dr=cmd.ExecuteReader();
                if(dr.HasRows==true)
                {
                    GridView1.DataSource=dr;
                    GridView1.DataBind();
                }
            }
        }
    }
}