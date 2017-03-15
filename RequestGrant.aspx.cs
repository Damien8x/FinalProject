using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RequestGrant : System.Web.UI.Page
{
    Community_AssistEntities cas = new Community_AssistEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userkey"] == null)
            Response.Redirect("Default.aspx");

     /*   if (!IsPostBack)
        {
            FillGrantList();
        }
        */
    }

  /*  protected void FillGrantList()
    {
        GrantType[] grants = GetGrantTypes();
        GrantsDropDownList.DataSource = grants;
        GrantsDropDownList.DataTextField = "GrantTypeName";
        GrantsDropDownList.DataValueField = "GrantTypeKey";
        GrantsDropDownList.DataBind();
    }
    */

    protected void GrantButton_Click(object sender, EventArgs e)
    {
        int key = (int)Session["userkey"];
        GrantRequest gr = new GrantRequest();
        gr.GrantRequestExplanation = ExplainTextBox.Text;
        gr.GrantRequestAmount = decimal.Parse(AmountTextBox.Text);
        gr.GrantTypeKey = int.Parse(GrantsDropDownList.SelectedValue.ToString());
        gr.PersonKey = key;
        int result = cas.usp_AddRequest(gr.GrantTypeKey, gr.GrantRequestExplanation, gr.GrantRequestAmount, gr.PersonKey);
        if (result != -1)
        {
            ResultLabel.Text = "Grant Submitted";
            Response.Redirect("ManageAccount.aspx");
        }
        else
            ResultLabel.Text = "There was a problem";

    }


/*

    public List<GrantType> GetGrantTypes()
    {
        var types = from g in cas.GrantTypes
                    select new
                    {
                        g.GrantTypeKey,
                        g.GrantTypeName
                    };
        List<GrantType> gTypes = new List<GrantType>();
        foreach (var t in types)
        {
            GrantType type = new GrantType();
            type.GrantTypeKey = t.GrantTypeKey;
            type.GrantTypeName = t.GrantTypeName;
            gTypes.Add(type);
        }

        gTypes.Select(x => x.GrantTypeKey).ToArray();
        return gTypes;
    }

    */
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageAccount.aspx");

    }
}
