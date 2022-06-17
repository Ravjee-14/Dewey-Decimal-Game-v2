using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PROG_Task_2._2
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"SELECT * FROM FarmerAccountPending;";
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

                con.Open();
                //SQL Query to login
                String query2 = @"SELECT * FROM Farmer";
                SqlCommand cmd2 = new SqlCommand(query2, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader read2 = cmd2.ExecuteReader();
                GridView2.DataSource = read2;
                GridView2.DataBind();

                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('An Error Occured');</script>");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"INSERT INTO [dbo].[FarmLogin]
                                            ([Farmer_Username]
                                            ,[Farmer_Password])
                                            VALUES('" + txtUsername.Text + "', '" + txtPassword.Text + "')";



                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sda = cmd.ExecuteReader();
                con.Close();

                con.Open();
                String query2 = @"DELETE FROM [dbo].[FarmerAccountPending]
                                            WHERE Farmer_Username='" + txtUsername.Text + "'";

                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlDataReader sda2 = cmd2.ExecuteReader();

                con.Close();


                Response.Write("<script>alert('Account Successfully Created');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Username is already taken');</script>");
            }
        }

        protected void btnFill_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"SELECT  [Farmer_Username]
                                    ,[Farmer_Password]
                                    ,[Farmer_Name]
                                    ,[Farmer_Email]
                                        FROM [dbo].[FarmerAccountPending]
                                        WHERE Farmer_Username='" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtPassword.Text = reader.GetValue(1).ToString();
                }
                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please Input username');</script>");
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
                                        WHERE Farmer_Username = '" + txtViewUser.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader read = cmd.ExecuteReader();
                GridView2.DataSource = read;
                GridView2.DataBind();

                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please Input Username');</script>");
            }
        }

        protected void btnDateASC_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                //Method Taken from Stack Overflow
                //https://stackoverflow.com/questions/14208958/select-data-from-date-range-between-two-dates
                //FallenAngel
                //https://stackoverflow.com/users/257972/fallenangel
                //Accessed 10 June 2022
                String query = @"SELECT Farmer_Username, Farmer_Product, Farmer_ProdDesc, Type_Of_Prod, Date_Of_Record 
	                         FROM Farmer WHERE Date_Of_Record BETWEEN '" + date1.Text + "' AND '" + date2.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader read = cmd.ExecuteReader();
                GridView2.DataSource = read;
                GridView2.DataBind();

                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please fill in date range');</script>");
            }
        }

        protected void btnProdAsc_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                con.Open();
                //SQL Query to login
                String query = @"SELECT Farmer_Username, Farmer_Product, Farmer_ProdDesc, Type_Of_Prod, Date_Of_Record 
	                                FROM Farmer WHERE Type_Of_Prod='" + DropDownList1.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                //This method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/rahul4_saxena/fill-Asp-Net-grid-view-on-selecting-record-from-drop-down-li/
                //Rahul Saxen
                //https://www.c-sharpcorner.com/members/rahul-saxena8
                //Accessed 10 June 2022
                SqlDataReader read = cmd.ExecuteReader();
                GridView2.DataSource = read;
                GridView2.DataBind();

                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please enter in Product Type');</script>");
            }
        }
    }
}