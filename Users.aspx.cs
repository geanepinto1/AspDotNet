using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        EndEditing();
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        EndEditing();
    }

    private void EndEditing()
    {
        Response.Redirect("Users.aspx");
    }

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        FormView form = (FormView)sender;

        if (form.DataKey.Value != null)
        {
            // Get the lead id from the form view now that it has finished binding
            int UserId = (int)form.DataKey.Value;

            // Now we update the SQL parameter for SqlDataSourceNotes to know which record to retrieve data for
            //SqlDataSourceNotes.SelectParameters.Add("LeadId", TypeCode.Int32, leadId.ToString());
            SqlDataSourceNotesUserCreated.SelectParameters["UserId"].DefaultValue = UserId.ToString();

            // Now we force the control to data bind
            SqlDataSourceNotesUserCreated.DataBind();
        }

    }
}