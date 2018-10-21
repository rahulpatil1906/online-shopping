using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;


public partial class ApprovalStatus2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            PendingRecordsGridview.DataSource = "SqlDataSource1";
            PendingRecordsGridview.DataBind();
        }

    }
    protected void PendingRecordsGridview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "accept")
        {
            Session["ID"] = e.CommandArgument.ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RuksarConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO EMP2 (ID, Name,City) SELECT ID, Name ,City FROM tbl_Employee where ID='" + Session["ID"].ToString() + "'", con);
            SqlCommand cmd2 = new SqlCommand("delete from EMP where ID='" + Session["ID"].ToString() + "'", con);
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();

        }
    }
}