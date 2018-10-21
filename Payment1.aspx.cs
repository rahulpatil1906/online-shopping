using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Payment1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            if (!IsPostBack)
            {
                BindPriceData();
            }
        }
        else
        {
            Response.Redirect("~/Sign-in.aspx");
        }

    }

    private void BindPriceData()
    {
        if (Request.Cookies["CartPID10"] != null)
        {
            string CookieData10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
            string[] CookieDataArray10 = CookieData10.Split(',');
            if (CookieDataArray10.Length > 0)
            {
                DataTable dtCategory1 = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for (int i = 0; i < CookieDataArray10.Length; i++)
                {
                    string P_ID = CookieDataArray10[i].ToString().Split('-')[0];
                    string P_SizeID = CookieDataArray10[i].ToString().Split('-')[1];

                    if (hdPidSizeID.Value != null && hdPidSizeID.Value != "")
                    {
                        hdPidSizeID.Value += "," + P_ID + "-" + P_SizeID;
                    }
                    else
                    {
                        hdPidSizeID.Value = P_ID + "-" + P_SizeID;
                    }

                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName1(" + P_SizeID + ") as SizeNamee,"
                            + P_SizeID + " as SizeIDD,SizeData.Name,SizeData.Extention from tblProduct A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.P_ID=A.P_ID ) SizeData where A.P_ID=" + P_ID + " ", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                sda.Fill(dtCategory1);
                            }

                        }
                    }
                    CartTotal += Convert.ToInt64(dtCategory1.Rows[i]["P_Price"]);
                    Total += Convert.ToInt64(dtCategory1.Rows[i]["P_Price"]);
                }
                divPriceDetails.Visible = true;


                spanCartTotal.InnerText = CartTotal.ToString();
                spanTotal.InnerText = "Rs. " + Total.ToString();
                spanDiscount.InnerText = "- " + (CartTotal - Total).ToString();

                hdCartAmount.Value = CartTotal.ToString();
                hdCartDiscount.Value = (CartTotal - Total).ToString();
                hdTotalPayed.Value = Total.ToString();
            }
            else
            {
                //TODO Show Empty Cart
                Response.Redirect("~/Products.aspx");
            }
        }
        else
        {
            //TODO Show Empty Cart
            Response.Redirect("~/Products.aspx");
        }
    }
    protected void btncod_Click(object sender, EventArgs e)
    {
        if (Session["U_ID"] != null)
        {
            string U_ID = Session["U_ID"].ToString();
            string PaymentType = "COD";
            string Status = "Pending";
            DateTime DateOfPurchase = DateTime.Now;
            string U_Email = Session["U_Email"].ToString();
            DateTime cancel_date ;
            
          


            //Insert Data to tblPurchase
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblPurchase values('" + U_ID + "','"
                    + hdPidSizeID.Value + "','" + hdCartAmount.Value + "','" + hdCartDiscount.Value + "','"
                    + hdTotalPayed.Value + "','" + PaymentType + "','" + Status + "','" + DateOfPurchase + "','"
                    + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "','" + txtMobileNumber.Text + "','" + ddlQuantity.SelectedValue + "','') select SCOPE_IDENTITY()", con);
                con.Open();
                Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                ClearTextBox();
                
              }
            Response.Redirect("~/Billing.aspx");
        }
        else
        {
            Response.Redirect("~/Sign-in.aspx");
        }
    }
    private void ClearTextBox()
    {
        txtName.Text = "";
        txtAddress.Text = "";
        txtPinCode.Text = "";
        txtMobileNumber.Text = "";
        ddlQuantity.SelectedValue = "";
        
    }

    }
