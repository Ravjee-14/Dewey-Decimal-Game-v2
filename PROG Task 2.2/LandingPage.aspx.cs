using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG_Task_2._2
{
    public partial class LandingPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFarmer_Click(object sender, EventArgs e)
        {
            //This method was taken from Grepper
            //https://www.codegrepper.com/code-examples/csharp/how+to+open+another+window+wpf+c%23
            //Author is anonymous
            //Accessed 09 June 2022
            //used to open new window and close login screen
            Response.Redirect("FarmerLogin.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            //This method was taken from Grepper
            //https://www.codegrepper.com/code-examples/csharp/how+to+open+another+window+wpf+c%23
            //Author is anonymous
            //Accessed 09 June 2022
            //used to open new window and close login screen
            Response.Redirect("EmployeeLogin.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //This method was taken from Grepper
            //https://www.codegrepper.com/code-examples/csharp/how+to+open+another+window+wpf+c%23
            //Author is anonymous
            //Accessed 09 June 2022
            //used to open new window and close login screen
            Response.Redirect("Registration.aspx");
        }
    }
}