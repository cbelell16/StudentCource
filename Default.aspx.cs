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
    public partial class _Default : System.Web.UI.Page{
     SqlConnection con= new SqlConnection();
        SqlCommand cmd =new SqlCommand();

        
    
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString="Data Source=DESKTOP-R73TJCQ\\SQLEXPRESS;Initial Catalog=db;Integrated Security=True";
            con.Open();
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                result.Visible = true;
                result.Text = "Data Entered Successfully !";
                SqlCommand cmd = new SqlCommand("insert into StudentMaster" + "(Name,Email,Phone,Address,Age,Gender,Username,Password)values(@Name,@Email,@Phone,@Address,@Age,@Gender,@Username,@Password)", con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@Phone", phone.Text);
                cmd.Parameters.AddWithValue("@Address", address.Text);
                cmd.Parameters.AddWithValue("@Age", age.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Username", username.Text);
                cmd.Parameters.AddWithValue("@Password", password.Text);
                cmd.ExecuteNonQuery();
                name.Text = " ";
                email.Text = " ";
                phone.Text = " ";
                address.Text = " ";
                age.Text = " ";
                username.Text = " ";
                password.Text = " ";
            }
            

            
            
            
        }

        
    }
}
