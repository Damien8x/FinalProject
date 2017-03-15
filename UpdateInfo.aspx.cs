using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        int key = (int)Session["userKey"];
        string lastname = LastNameTextBox.Text;
        string firstname = FirstNameTextBox.Text;
        string email = EmailTextBox.Text;
        string apartment = ApartmentNumberTextBox.Text;
        string street = StreetTextBox.Text;
        string city = CityTextBox.Text;
        string state = StateTextBox.Text;
        string zip = ZipcodeTextBox.Text;
     
      

        Community_AssistEntities cae = new Community_AssistEntities();
        int result = cae.usp_UpdatePersonInfo(key, lastname, firstname, email, apartment, street, city, state, zip);


        if (result != -1)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            ResultLabel.Text = "Something Went Horribly Wrong.... With Your Entries";
        }

    }

}