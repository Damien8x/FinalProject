using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewDonation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Community_AssistEntities cae = new Community_AssistEntities();
            int key = (int)Session["userKey"];
            var dons = from d in cae.Donations
                       where d.PersonKey == key
                       select d;

            GridView1.DataSource = dons.ToList();
            GridView1.DataBind();

        }
    }


    protected void BackButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageAccount.aspx");
    }
}