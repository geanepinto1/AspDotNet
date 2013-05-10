using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Leads : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string leadId = Request.Params["leadId"];

            if (!string.IsNullOrEmpty(leadId))
            {
                FormView1.SetRowValueValueByKey(leadId);
            }
        }
    }


    //protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    //{
    //    EndEditing();
    //}

    //protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    //{
    //    EndEditing();
    //}

    //private void EndEditing()
    //{
    //    Response.Redirect("Leads.aspx");
    //}

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        FormView form = (FormView)sender;

        if (form.DataKey.Value != null)
        {
            // Get the lead id from the form view now that it has finished binding
            int leadId = (int)form.DataKey.Value;

            // Now we update the SQL parameter for SqlDataSourceNotes to know which record to retrieve data for
            //SqlDataSourceNotes.SelectParameters.Add("LeadId", TypeCode.Int32, leadId.ToString());
            SqlDataSourceNotes.SelectParameters["LeadId"].DefaultValue = leadId.ToString();

            // Now we force the control to data bind
            SqlDataSourceNotes.DataBind();

            // Update the context aware controls
            newNoteUrl.PostBackUrl = string.Format("Notes.aspx?leadId={0}", leadId);
        }
    }


//    //button for search client on the object data source
//    protected void btnSearch_Click(object sender, EventArgs e)
//    {
//        //clear form
//        FormView1.DataSourceID = "";
//        //load diferent datasource
//        FormView1.DataSource = ClientLeadsSqlDataSource;
//        //databind to form
//        FormView1.DataBind();
//    }
    
}
 
