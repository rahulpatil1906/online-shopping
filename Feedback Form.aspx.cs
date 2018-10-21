using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Feedback_Form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-D0T6FSCU\SQLEXPRESS;Initial Catalog=Ruksar;Integrated Security=True");
    String UserID = "User";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
        }

    }
    private void GenerateAutoID()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Count(U_ID) from Feedback", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        //i++;
        lblid.Text = UserID + i.ToString();

    }
    protected void btncod_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Feedback values('" + (lblid.Text) + "','" + (txtUsername1.Text) + "','" + (txtFeed.Text) + "','" + (txtSuggestion.Text) + "','" + (ddlRating.SelectedValue) + "')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Thank You For Your Feedback!')</Script>");
        con.Close();
        GenerateAutoID();
        ClearTextBox();

    }

    private void messagebox(string p)
    {
    }

    private void ClearTextBox()
    {
        txtUsername1.Text = "";
        txtFeed.Text = "";
        txtSuggestion.Text = "";
        ddlRating.SelectedValue = "";
        
    }


    
}