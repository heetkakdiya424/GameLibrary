using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Heet Kakadiya\Desktop\100\WebApplication8\WebApplication8\App_Data\info1.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["IsLoggedIn"] = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["LoggedInUserId"] = txtlemail.Text;

                Session["IsLoggedIn"] = 1;
                conn.Open();
                string query1 = "select * from test where email='" + txtlemail.Text + "'and pass='" + txtlpass.Text + "'";
                SqlCommand cmd = new SqlCommand(query1, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds, "test");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ALTER", "alert('login sccefull'); window.location = 'Home.aspx'; ", true);
                }
                else
                {
                   
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ALTER", "alert('Please register your self'); window.location = 'signup.aspx'; ", true);
                }

            }
        }
    }
}