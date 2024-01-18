using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkshayaGunasekaraPandian_BookStore
{
    public partial class CartContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var books = Session["myCart"] as List<Book>;

            if (!IsPostBack && books != null)
            {
                int fValue = 0;
                foreach (var item in books)
                {
                    fValue = (item.quantity) * Convert.ToInt32(item.price);
                    lbxCart.Items.Add(item.bookName + " : " + fValue);
                }
            }

        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btnRemoveItem_Click(object sender, EventArgs e)
        {
            if (lbxCart.SelectedIndex > -1)
            {
                var books = Session["myCart"] as List<Book>;
                books.RemoveAt(lbxCart.SelectedIndex);
                lbxCart.Items.RemoveAt(lbxCart.SelectedIndex);

                if (books.Count == 0)
                {
                    btnCheckout.Enabled = false;
                }
            }
        }

        protected void btnEmptyCart_Click(object sender, EventArgs e)
        {
            lbxCart.Items.Clear();
        }
    }
}