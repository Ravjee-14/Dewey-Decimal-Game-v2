using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Text;

namespace PROG_Task_2._2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string Encrypt(string value)
        {
            //This Method was taken from DelftStack
            //https://www.delftstack.com/howto/csharp/encrypt-and-decrypt-a-string-in-csharp/#:~:text=Encrypt%20a%20String%20With%20the%20AesManaged%20Class%20in%20C%23,-Encryption%20is%20the&text=The%20AesManaged%20class%20provides%20methods,to%20the%20CreateEncryptor()%20function.
            //Author is anonymous
            //Accessed 09 June 2022
            //used to encrypt password
            using (MD5CryptoServiceProvider MD5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = MD5.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //This method was taken from Stack Overflow
            //https://stackoverflow.com/questions/5687889/how-to-check-if-item-is-selected-from-a-combobox-in-c-sharp
            //Suraj Kumar
            //https://stackoverflow.com/users/10532500/suraj-kumar
            //Accessed 10 June 2022
            if (ddRole.Text == "Farmer")
            {
                try
                {
                    string encryptedPassword = Encrypt(txtPassword.Text);
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                    con.Open();
                    //SQL Query to create a new user
                    SqlCommand cmd2 = new SqlCommand(@"INSERT INTO [dbo].[FarmerAccountPending]
                                                         ([Farmer_Username]
                                                         ,[Farmer_Password]
                                                         ,[Farmer_Name]
                                                         ,[Farmer_Email])
                                                    VALUES
                                                         ('" + txtUsername.Text + "', '" + encryptedPassword + "', '" + txtName.Text + "', '" + txtEmail.Text + "');", con);
                    SqlDataReader dr = cmd2.ExecuteReader();
                    con.Close();

                    //Message displayed to show user their username or password
                    Response.Write("Username: " + txtUsername.Text + "\nPassword: " + txtPassword.Text);
                    Response.Write("<script>alert('Your Account will be created in 3 - 5 Working days');</script>");

                }
                catch
                {
                    Response.Write("<script>alert('Username is Taken');</script>");
                }
            }

            //This method was taken from Stack Overflow
            //https://stackoverflow.com/questions/5687889/how-to-check-if-item-is-selected-from-a-combobox-in-c-sharp
            //Suraj Kumar
            //https://stackoverflow.com/users/10532500/suraj-kumar
            //Accessed 10 June 2022
            if (ddRole.Text == "Employee")
            {
                try
                {
                    string encryptedPassword = Encrypt(txtPassword.Text);
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");

                    con.Open();
                    //SQL Query to create a new user
                    SqlCommand cmd2 = new SqlCommand(@"INSERT INTO [dbo].[EmpLogin]
                                                         ([Emp_Username]
                                                         ,[Emp_Password])
                                                    VALUES
                                                         ('" + txtUsername.Text + "', '" + encryptedPassword + "');", con);
                    SqlDataReader dr = cmd2.ExecuteReader();
                    con.Close();

                    //Message displayed to show user their username or password
                    Response.Write("Username: " + txtUsername.Text + "\nPassword: " + txtPassword.Text);
                    Response.Write("<script>alert('Account Successfully Created');</script>");

                }
                catch
                {
                    Response.Write("<script>alert('Username is Taken');</script>");
                }
            }

        }
    }
}