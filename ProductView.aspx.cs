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


public partial class ProductView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["P_ID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductImages();
                BindProductDetails();
            }
        }
        else
        {
           Response.Redirect("~/Products.aspx");
        }


    }
    private void BindProductImages()
    {
        Int64 P_ID = Convert.ToInt64(Request.QueryString["P_ID"]);

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where P_ID=" + P_ID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory1 = new DataTable();
                    sda.Fill(dtCategory1);
                    rptrImages.DataSource = dtCategory1;
                    rptrImages.DataBind();
                }

            }
        }

    }

    private void BindProductDetails()
    {
        Int64 P_ID = Convert.ToInt64(Request.QueryString["P_ID"]);

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProduct where P_ID=" + P_ID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd)) 
                {
                    DataTable dtCategory1 = new DataTable();
                    sda.Fill(dtCategory1);
                    rptrProductDetails.DataSource = dtCategory1;
                    rptrProductDetails.DataBind();
                }

            }
        }

    }
    protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
      if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;


            DropDownList ddlSizes = e.Item.FindControl("ddlSizes") as DropDownList;

            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblSizes2 where CatID=" + CatID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtCategory1 = new DataTable();
                        sda.Fill(dtCategory1);
                        ddlSizes.DataSource = dtCategory1;
                        ddlSizes.DataTextField = "SizeName";
                        ddlSizes.DataValueField = "P_SizeID";
                        ddlSizes.DataBind();
                    }

                }
            }

        }

    }
    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
    protected void btnCart1_Click(object sender, EventArgs e)
    {
        string SelectedSize = string.Empty;
        foreach (RepeaterItem item in rptrProductDetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var ddlList = item.FindControl("ddlSizes") as DropDownList;
                SelectedSize = ddlList.SelectedValue;

                var lblError = item.FindControl("lblError") as Label;
                lblError.Text = "";
            }
        }

        if (SelectedSize != "")
        {
            Int64 P_ID = Convert.ToInt64(Request.QueryString["P_ID"]);

            if (Request.Cookies["CartPID10"] != null)
            {
                string CookieP_ID10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
                CookieP_ID10 = CookieP_ID10 + "," + P_ID + "-" + SelectedSize;

                HttpCookie CartProducts = new HttpCookie("CartPID10");
                CartProducts.Values["CartPID10"] = CookieP_ID10;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("CartPID10");
                CartProducts.Values["CartPID10"] = P_ID.ToString() + "-" + SelectedSize;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/ProductView.aspx?P_ID=" + P_ID);


        }

        else
        {
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "Please select a size";
                }
            }
        }
        Response.Redirect("~/CART1.aspx");

    }





    public DataTable dtCategory1 { get; set; }
}

