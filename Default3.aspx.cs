using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-D0T6FSCU\SQLEXPRESS;Initial Catalog=Ruksar;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void btnCount_Click(object sender, EventArgs e)
    {
        OperationDataContext od = new OperationDataContext();

        tblSizes2 tblSizes2 = new tblSizes2();

        var counts = 
    }
    


   

}