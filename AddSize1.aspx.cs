﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
 


public partial class AddSize1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategoryRptr();      
            BindCategory();
        }


    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblSizes1 values('" + txtSizeName.Text + "','" + ddlCategory.SelectedItem.Value + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSizeName.Text = string.Empty;
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;
        }
        BindCategoryRptr();


    }
    private void BindCategoryRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSizes1 A inner join tblCategory B on B.CatID=A.CatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory = new DataTable();
                    sda.Fill(dtCategory);
                    rptrCategory.DataSource = dtCategory;
                    rptrCategory.DataBind();
                    if (dtCategory.Rows.Count != 0)
                    {
                        ddlCategory.DataSource = dtCategory;
                        ddlCategory.DataTextField = "CatName";
                        ddlCategory.DataValueField = "CatID";
                        ddlCategory.DataBind();
                        ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                    }

                }

            }
        }
    }
    private void BindCategory()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatID";
                ddlCategory.DataValueField = "";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
}