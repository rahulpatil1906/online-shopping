using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;


public partial class Billing : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String str;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        str = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        if (Session["USERNAME"] != null)
        {
        }

            
            
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
