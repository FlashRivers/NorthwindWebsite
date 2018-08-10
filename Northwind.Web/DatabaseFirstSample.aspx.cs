using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Northwind.EF;

public partial class DatabaseFirstSample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (var db = new NorthwindEntities())
        {
            //var region = new Region { RegionDescription = "WestEasternSouth" };
            //db.Regions.Add(region);
            //db.SaveChanges();
            var query = from r in db.Regions
                        orderby r.RegionDescription
                        select r;

            RegionRepeater.DataSource = query.ToList();
            RegionRepeater.DataBind();
        }
    }
}