using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Heet Kakadiya\Desktop\100\WebApplication8\WebApplication8\App_Data\info1.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                if (txtpass.Text != txtre_pass.Text)
                {
                    Response.Write("Please write password again.");
                    txtpass.Text = "";
                    txtre_pass.Text = "";
                    con.Close();
                    return;
                }
                string query = "insert into test values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtre_pass.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                try
                {
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ALTER", "alert('register sccefull'); window.location = 'login.aspx'; ", true);
                    
                }
                catch (Exception ex)
                {
                    Response.Write("The Data is not saved.");
                }
                con.Close();
            }
        }
    }
    
}