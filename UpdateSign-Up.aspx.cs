using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;




public partial class Sign_Up : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("Select Count(U_ID) from signup", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        //i++;
        lblid.Text = UserID + i.ToString();

    }
    protected void btSignup_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into signup values('" + (lblid.Text) + "','" + (txtfname.Text) + "','" + (txtlname.Text) + "','" + (txtemail.Text) + "','" + (txtpass.Text) + "','" + (txtconpass.Text) + "','" + (dateTimePicker1.Text) + "','" + (RadioButtonList2.SelectedValue) + "','" + (txtphoneno.Text) + "','" + (txtaddress.Text) + "','U')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        GenerateAutoID();
        ClearTextBox();
        Response.Redirect("~/Products.aspx");
          
    }

    private void messagebox(string p)
    {
    }

    private void ClearTextBox()
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtpass.Text = "";
        txtconpass.Text = "";
        txtfname.Text = "";
        dateTimePicker1.Text = "";
        RadioButtonList2.SelectedValue = "";
        txtphoneno.Text = "";
        txtaddress.Text = "";
    }

       
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearTextBox();


     }

    
}