using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PROG_Task_2._2
{
    public partial class Farmer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"INSERT INTO [dbo].[Farmer]
                                            ([Farmer_Username]
                                            ,[Farmer_Product]
                                            ,[Farmer_ProdDesc]
                                            ,[Type_Of_Prod]
                                            ,[Date_Of_Record]
                                            ,[Prod_Quantity]
                                            ,[unit_Price])
                                                VALUES('" + txtUsername.Text + "', '" + txtProd.Text + "', '" + txtDesc.Text + "', '" + ddTypeProd.Text + "', '" + dpDate.Text + "', '" + txtQuantity.Text + "', '" + txtPrice.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader sda = cmd.ExecuteReader();

            con.Close();

                Response.Write("<script>alert('Product Successfully Uploaded');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please Enter in all fields');</script>");
            }

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"SELECT [Farmer_Username] AS Username
                                       ,[Farmer_Product] AS Product
                                       ,[Farmer_ProdDesc] AS Product_Description
                                       ,[Type_Of_Prod] AS Product
                                       ,[Prod_Quantity] AS Quantity
                                       ,[unit_Price] AS Unit_Price
                                       ,[Date_Of_Record] AS Date
                                        FROM[dbo].[Farmer]
                                        WHERE Farmer_Username = '" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader read = cmd.ExecuteReader();
                GridView1.DataSource = read;
                GridView1.DataBind();

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please Enter in Username');</script>");
            }
        }
    }
}