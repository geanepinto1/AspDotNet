using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for FormExtensions
/// </summary>
public static class FormExtensions
{
    // Extenion method for FormView
    public static void SetRowValueValueByKey(this FormView form, string DataKeyValue)
    {
        int intPageIndex = 0;

        // Loop thru each page in the GridView
        for (int intPage = 0; intPage < form.PageCount; intPage++)
        {
            // Set the current GridView page
            form.PageIndex = intPage;
            // Bind the formView to the current page
            form.DataBind();

            if (Convert.ToString(form.DataKey.Value) == DataKeyValue)
            {
                intPageIndex = intPage;
                break;
            }
        }

        // Set the GridView to the values found
        if (intPageIndex != form.PageIndex)
        {
            form.PageIndex = intPageIndex;
            //form.SelectedIndex = intSelectedIndex;
            form.DataBind();
        }
    }
}