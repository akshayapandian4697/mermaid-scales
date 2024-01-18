using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkshayaGunasekaraPandian_BookStore
{
    public partial class ProductsContent : System.Web.UI.Page
    {
        Book book;
        List<Book> books = new List<Book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["myCart"] == null)
            {
                Session["myCart"] = books;
            }

            if (!IsPostBack)   //  IsPostBack is a variable which is false for the first time the page is loaded.  
            {
                ddlProductList.DataBind();
            }

            book = this.getBook();

            lblName.Text = book.bookName.ToString();
            lblAuthor.Text = book.author.ToString();
            lblPrice.Text = book.price.ToString();
            lblQty.Text = book.quantity.ToString();
            imgProduct.ImageUrl = book.imagePath;

            HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                lblFirstName.Text = cookie["FirstName"];
            }
        }

        public Book getBook()
        {
            DataView dvProduct = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            dvProduct.RowFilter = "Book_Id = '" + ddlProductList.SelectedValue + "'";
            DataRowView row = dvProduct[0];

            Book book = new Book();
            book.bookId = Convert.ToInt32(row["Book_Id"]);
            book.bookName = row["Book_Name"].ToString();
            book.author = row["Author"].ToString();
            book.price = Convert.ToDouble(row["Price"]);
            book.imagePath = row["ImagePath"].ToString();

            return book;
        }

        protected void btnGoToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            Book book = new Book();
            book.bookId = Convert.ToInt32(ddlProductList.SelectedValue);
            book.bookName = lblName.Text;
            book.author = lblAuthor.Text;
            book.price = Convert.ToDouble(lblPrice.Text);
            book.quantity = Convert.ToInt32(txtQuantity.Text);
            book.imagePath = imgProduct.ImageUrl;

            books = (List<Book>)Session["myCart"];
            books.Add(book);

            Session["myCart"] = books;
            Response.Redirect("~/Cart.aspx");
        }
    }
}