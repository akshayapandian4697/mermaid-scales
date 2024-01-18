using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkshayaGunasekaraPandian_BookStore
{
    public partial class CheckoutContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Success.aspx");
        }

        protected void btnCancelOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}