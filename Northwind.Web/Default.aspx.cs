using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Northwind.Data;
public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //var productObj = new Product();

        ProductRepeater.DataSource = Product.GetProducts();
        ProductRepeater.DataBind();


    }

    protected void InsertButton_Click(object sender, EventArgs e)
    {
        Product p = new Product()
        {
            ProductName = "Rick's Magic Love Potion",
            SupplierID = 1,
            CategoryID = 1,
            QuantityPerUnit = "48 - 1 oz vials",
            UnitPrice = 25,
            UnitsInStock = 20,
            UnitsOnOrder = 0,
            ReorderLevel = 10,
            Discontinued = false
        };

        NorthwindDataContext db = new NorthwindDataContext();
        db.Products.InsertOnSubmit(p);
        db.SubmitChanges();

    }
}