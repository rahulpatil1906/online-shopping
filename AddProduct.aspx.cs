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
using System.IO;


public partial class AddProduct : System.Web.UI.Page
{
     public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategory1();
            BindSizes2();
            
        }


    }

    private void BindSizes2()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblSizes2", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlSizes.DataSource = dt;
                ddlSizes.DataTextField = "SizeName";
                ddlSizes.DataValueField = "P_SizeID";
                ddlSizes.DataValueField = "CatID";
                ddlSizes.DataBind();
                ddlSizes.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
   }

    private void BindCategory1()
    {
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
    protected void btadd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@P_Name", txtname.Text);
            cmd.Parameters.AddWithValue("@P_Price", txtprice.Text);
            cmd.Parameters.AddWithValue("@P_CatID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@P_Quantity", ddlQuantity.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@P_SizeID", ddlSizes.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtPDetails.Text);
            if (cbCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@P_COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@P_COD", 0.ToString());
            }


            con.Open();
            Int64 P_ID = Convert.ToInt64(cmd.ExecuteScalar());

            //Insert and upload Images
            if (FulImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/images/ProductImages/") + P_ID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(FulImg01.PostedFile.FileName);
                FulImg01.SaveAs(SavePath + "\\" + txtname.Text.ToString().Trim() +"01"+ Extention);

                SqlCommand cmd1 = new SqlCommand("insert into tblProductImages values('" + P_ID + "', '" + txtname.Text.ToString().Trim() + "01" + "', '" + Extention + "')", con);
                cmd1.ExecuteNonQuery();
                lblMsg.Text = "Product Inserted Successfuly";
            }
        }
    }
    protected void ddlSizes_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblSizes2 where CatID='" + ddlCategory.SelectedItem.Value + "' ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlSizes.DataSource = dt;
                ddlSizes.DataTextField = "SizeName";
                ddlSizes.DataValueField = "P_SizeID";
                ddlSizes.DataBind();

            }
            else
            {
                ddlSizes.Items.Clear();
            }
        }
    }
    

    protected void btnSignOut_Click(object sender, EventArgs e)
    {

    }
}