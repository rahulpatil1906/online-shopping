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


public partial class CancelOrder : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String str;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        str = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        con = new SqlConnection(str);
        con.Open();
        str = "select * from  tblPurchase  where PurchaseID=" +Request.QueryString["PurchaseID"].ToString();
        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Label2.Text = dr["Name"].ToString();
        Label4.Text = dr["Address"].ToString();
       Label6.Text = dr["Pincode"].ToString();
       Label8.Text = dr["MobileNumber"].ToString();
       Label10.Text= dr["Quantity"].ToString();
       Label12.Text = dr["TotalPayed"].ToString();
       con.Close();
    }
               

                
                


        
 
    

    protected void  Button1_Click(object sender, EventArgs e)
{
str = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
SqlConnection con = new SqlConnection(str);
con.Open();
str = "update  tblPurchase set Status='" + "Cancel" + "',cancel_date='" + DateTime.Now+ "' where PurchaseID=" + Request.QueryString["PurchaseID"].ToString();
cmd=new SqlCommand(str,con);
cmd.ExecuteNonQuery();
lblMsg.Text="Order Cancelled!";
con.Close();
}
    
        

}

   