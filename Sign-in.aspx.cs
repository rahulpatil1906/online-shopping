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


public partial class Sign_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["U_Username"] != null && Request.Cookies["U_Password"] != null)
            {
                txtuname.Text = Request.Cookies["U_Username"].Value;
                txtpass.Attributes["value"] = Request.Cookies["U_Password"].Value;
                CheckBox1.Checked = true;

            }
        }
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from signup where U_Username='" + txtuname.Text + "' and U_Password='" + txtpass.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                Session["U_ID"] = dt.Rows[0]["U_ID"].ToString();
                Session["U_Email"] = dt.Rows[0]["U_Email"].ToString();

                if (CheckBox1.Checked)
                {
                    Response.Cookies["U_Username"].Value = txtuname.Text;
                    Response.Cookies["U_Password"].Value = txtpass.Text;

                    Response.Cookies["U_Username"].Expires = DateTime.Now.AddDays(30);
                    Response.Cookies["U_Password"].Expires = DateTime.Now.AddDays(30);
                }
                else
                {
                    Response.Cookies["U_Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["U_Password"].Expires = DateTime.Now.AddDays(-1);
                }

                string Utype;
                Utype = dt.Rows[0][10].ToString().Trim();
                if (Utype == "U")
                {
                    Session["USERNAME"] = txtuname.Text;
                    if (Request.QueryString["rurl"] != null)
                    {
                        if (Request.QueryString["rurl"]  == "Cart")
                        {
                            Response.Redirect("~/Cart.aspx");

                        }
                    }
                    else
                    {
                        Response.Redirect("~/UserHome.aspx");
                    }
                }
                if (Utype == "A")
                {
                    Session["USERNAME"] = txtuname.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }


                else
                {
                    lblError.Text = "Invalid Username or Password !";
                }
                

            }
            
            
        }
        ClearTextBox();
    }
    private void ClearTextBox()
    {
        txtuname.Text = "";
        txtpass.Text = "";

    }

    

    
}

