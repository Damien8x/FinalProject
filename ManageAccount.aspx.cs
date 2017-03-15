using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DonationButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Donations.aspx");
    }

    protected void ViewDonationsButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewDonation.aspx");
    }

    protected void GrantButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestGrant.aspx");
    }

    protected void ViewGrantsButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrantView.aspx");
    }

    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateInfo.aspx");
    }
}