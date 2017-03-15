using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GrantView : System.Web.UI.Page
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
            var gran = from d in cae.GrantRequests
                       where d.PersonKey == key
                       select d;

            GridView1.DataSource = gran.ToList();
            GridView1.DataBind();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageAccount.aspx");

    }
}