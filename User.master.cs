using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
        }
        else
        {
            btnSignOut.Visible = true;
        }

    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {

    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/home1.aspx");
    }
    public void BindCartNumber()
    {
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
    }
}
