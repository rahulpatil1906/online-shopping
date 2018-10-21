using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         BindCartNumber();       
        if (Session["USERNAME"] != null)
        {
            btnSignup.Visible = false;
            btnSignin.Visible =   false;
            btnSignOut.Visible = true;
        }
        else
        {
            btnSignup.Visible = true;
            btnSignin.Visible = true;
            btnSignOut.Visible = false;

        }
    }
    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID10"] != null)
        {
            string CookieP_ID10 = Request.Cookies["CartPID10"].Value.Split('=')[1];
            string[] ProductArray = CookieP_ID10.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }
    



    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/home1.aspx");
    }
    protected void btnSignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Sign-in.aspx");

    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Sign-Up.aspx");
    }
    protected void btnCart1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CART1.aspx.");
    }
    

}