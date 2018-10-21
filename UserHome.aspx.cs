using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;


public partial class UserHome : System.Web.UI.Page
{

        protected void Page_Load(object sender, EventArgs e)
        {
         if (!IsPostBack)

        {
            BindProductRepeater();
            BindCartNumber();
         }
        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
            lblSuccess.Text = "Login Successfully,Welcome" + Session["USERNAME"].ToString() + "";
        }
        else
        {
            btnSignOut.Visible = false;
        }
        }
        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/home1.aspx");
        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sign-in.aspx");
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID10"] != null)
            {
                string CookieP_ID10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
                string[] ProductArray = CookieP_ID10.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }

        }
        protected void btnCart1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CART1.aspx.");
        }


      private void BindProductRepeater()
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dttblCategory1 = new DataTable();
                        sda.Fill(dttblCategory1);
                        rptrProducts.DataSource = dttblCategory1;
                        rptrProducts.DataBind();
                    }

                }
            }
        } 

        
}