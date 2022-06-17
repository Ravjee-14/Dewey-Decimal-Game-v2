using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Threading;
using System.Text;

namespace PROG_Task_2._2
{
    public partial class FarmerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //This Method was taken from DelftStack
        //https://www.delftstack.com/howto/csharp/encrypt-and-decrypt-a-string-in-csharp/#:~:text=Encrypt%20a%20String%20With%20the%20AesManaged%20Class%20in%20C%23,-Encryption%20is%20the&text=The%20AesManaged%20class%20provides%20methods,to%20the%20CreateEncryptor()%20function.
        //Author is anonymous
        //Accessed 09 June 2022
        static string Encrypt(string value)
        {
            //used to encrypt password
            using (MD5CryptoServiceProvider MD5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = MD5.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND3PP3C;Initial Catalog=Farm_Central;Integrated Security=True");
                string encryptedPassword = Encrypt(txtPassword.Text);

                con.Open();
                //SQL Query to login
                String query = "SELECT COUNT(1) FROM FarmLogin WHERE Farmer_Username=@User AND Farmer_Password=@User_Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@User", txtUsername.Text);
                cmd.Parameters.AddWithValue("@User_Password", encryptedPassword);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                //This Method was taken from C# Corner
                //https://www.c-sharpcorner.com/UploadFile/009464/simple-login-form-in-Asp-Net-using-C-Sharp/
                //Nilesh Jadav
                //https://www.c-sharpcorner.com/members/nilesh-jadav
                //Accessed 09 June 2022
                //Loops used to perform certain actions like grant access or give an error message
                //Loops used to perform certain actions like grant access or give an error message
                if (count == 1)
                {
                    //This method was taken from Grepper
                    //https://www.codegrepper.com/code-examples/csharp/how+to+open+another+window+wpf+c%23
                    //Author is anonymous
                    //Accessed 09 June 2022
                    //used to open new window and close login screen
                    Response.Redirect("Farmer.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Username and Password Combination');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}