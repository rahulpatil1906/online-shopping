using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Configuration;


public partial class AddSize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategoryRptr();
            BindCategory();
            
         }


    }
    private void BindCategory()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategory1", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }

    private void BindCategoryRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSizes2 A inner join tblCategory1 B on B.CatID=A.CatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory1 = new DataTable();
                    sda.Fill(dtCategory1);
                    rptrCategory.DataSource = dtCategory1;
                    rptrCategory.DataBind();
                    if (dtCategory1.Rows.Count != 0)
                    {
                        ddlCategory.DataSource = dtCategory1;
                        ddlCategory.DataTextField = "CatName";
                        ddlCategory.DataValueField = "CatID";
                        ddlCategory.DataBind();
                        ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                    }

                }

            }
        }
    }
    
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblSizes2 values('" + txtSizeName.Text + "','" + ddlCategory.SelectedItem.Value + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSizeName.Text = string.Empty;
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;

         }
        BindCategoryRptr();


    }
    
}