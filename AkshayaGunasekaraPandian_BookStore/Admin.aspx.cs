using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography.X509Certificates;
using System.Data;

namespace AkshayaGunasekaraPandian_BookStore
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindGridView();
            }
        }

        public void bindGridView()
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            
            SqlCommand cmd = new SqlCommand("SELECT * FROM Genre", con);
            string query = "select Books.Book_Id, Books.Book_Name, Genre.Genre_Name from [dbo].[Books] inner join [dbo].[Genre] on Books.Genre_Id = Genre.Genre_Id";
            SqlCommand comm = new SqlCommand(query, con);
            con.Open();

            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                //GridView2.DataSource = sdr;
                GridView2.DataBind();
                //sdr.Close();

                SqlDataAdapter sda = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView3.DataSource= dt;
                GridView3.DataBind();
            }
            catch (Exception exp)
            {
                //lblErrMsg.Text = "Error on Execution : " + exp.Message;
            }
            con.Close();
        }

        protected void btnAddNewGenre_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            string cmdText = "INSERT INTO Genre (Genre_Id,Genre_Name,Genre_Desc) " +
                "Values ('" + txtGenreId.Text + "','" + txtGenreName.Text + "','" + txtGenreDesc.Text + "')";
            SqlCommand cmd = new SqlCommand(cmdText, con);
            int row = cmd.ExecuteNonQuery();
            con.Close();
            if (row > 0)
            {
                lblMsg.Text = row + "Record Inserted Successfully!!";
            }
            else
            {
                lblErrMsg.Text = "Error inserting the values, please try again!";
            }
        }
    }
}