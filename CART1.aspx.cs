using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class CART1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCartProducts();
        }

    }
    private void BindCartProducts()
    {
        if (Request.Cookies["CartPID10"] != null)
        {
            string CookieData10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
            string[] CookieDataArray10 = CookieData10.Split(',');
            if (CookieDataArray10.Length > 0)
            {
                h5NoItems.InnerText = "MY CART (" + CookieDataArray10.Length + " Items)";
                DataTable dtCategory1 = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for (int i = 0; i < CookieDataArray10.Length; i++)
                {
                    string P_ID = CookieDataArray10[i].ToString().Split('-')[0];
                    string P_SizeID = CookieDataArray10[i].ToString().Split('-')[1];

                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName1(" + P_SizeID + ") as SizeNamee," + P_SizeID + " as SizeIDD,SizeData.Name,SizeData.Extention from tblProduct A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.P_ID=A.P_ID ) SizeData where A.P_ID=" + P_ID + "", con))
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

                rptrCartProducts.DataSource = dtCategory1;
                rptrCartProducts.DataBind();
                divPriceDetails.Visible = true;

                spanCartTotal.InnerText = CartTotal.ToString();
                spanTotal.InnerText = "Rs. " + Total.ToString();
                spanDiscount.InnerText = "- " + (CartTotal - Total).ToString();
            }
            else
            {
                //TODO Show Empty Cart
                h5NoItems.InnerText = "Your Shopping Cart is Empty";
                divPriceDetails.Visible = false;
            }
        }
        else
        {
            //TODO Show Empty Cart
            h5NoItems.InnerText = "Your Shopping Cart is Empty";
            divPriceDetails.Visible = false;


        }
    }


    



    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        string CookieP_ID10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
        Button btn = (Button)(sender);
        string P_SizeID = btn.CommandArgument;

        List<String> CookiePIDList = CookieP_ID10.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
        CookiePIDList.Remove(P_SizeID);
        string CookiePIDUpdated = String.Join(",", CookiePIDList.ToArray());
        if (CookiePIDUpdated == "")
        {
            HttpCookie CartProducts = Request.Cookies["CartPID10"];
            CartProducts.Values["CartPID10"] = null;
            CartProducts.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(CartProducts);

        }
        else
        {
            HttpCookie CartProducts = Request.Cookies["CartPID10"];
            CartProducts.Values["CartPID10"] = CookiePIDUpdated;
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);

        }
        Response.Redirect("~/CART1.aspx");
    }

    protected void btnBuyNow_Click(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            Response.Redirect("~/Payment1.aspx");
        }
        else
        {
            Response.Redirect("~/Sign-in.aspx?rurl=cart");
        }
    }





    public object dtCategory { get; set; }
}