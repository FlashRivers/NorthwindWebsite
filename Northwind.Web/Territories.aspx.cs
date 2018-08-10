using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Northwind.EF;

public partial class Territories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int regionID = 0;
        if (!String.IsNullOrEmpty(Request.QueryString["regionid"]))
        {
            // Query string value is there so now use it
            regionID = Convert.ToInt32(Request.QueryString["regionid"]);
        } else
        {
            Response.Redirect("DatabaseFirstSample.aspx");
        }
        using (var db = new NorthwindEntities())
        {
            //var region = new Region { RegionDescription = "WestEasternSouth" };
            //db.Regions.Add(region);
            //db.SaveChanges();
            var region = db.Regions.FirstOrDefault(r => r.RegionID == regionID);
            var territories = region.Territories;

            var query = from t in territories
                        orderby t.TerritoryDescription
                        select t;

            TerritoryRepeater.DataSource = query.ToList();
            TerritoryRepeater.DataBind();
        }
    }
    protected void Repeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rptDemo = sender as Repeater; // Get the Repeater control object.

        // If the Repeater contains no data.
        if (TerritoryRepeater != null && TerritoryRepeater.Items.Count < 1)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                // Show the Error Label (if no data is present).
                Label lblErrorMsg = e.Item.FindControl("lblErrorMsg") as Label;
                if (lblErrorMsg != null)
                {
                    lblErrorMsg.Visible = true;
                }
            }
        }
    }

}