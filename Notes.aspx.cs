using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Notes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        GridView form = (GridView)sender;
        if (GridView1.SelectedDataKey.Value != null)
        {
            int leadId = (int)form.SelectedDataKey.Value;

            // Now we update the SQL parameter for SqlDataSourceNotes to know which record to retrieve data for

            SqlDataSourceNotes.SelectParameters["LeadId"].DefaultValue = leadId.ToString();
            //SqlDataSourceNotes.SelectParameters["LeadId"].DefaultValue = leadId.ToString();

            // Now we force the control to data bind
            SqlDataSourceNotes.DataBind();

            // Update the context aware controls
        }
    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;

        backToLeadUrl.PostBackUrl = string.Format("Leads.aspx?leadId={0}", list.SelectedValue);
    }
}