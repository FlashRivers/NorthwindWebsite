using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Northwind.Data
{
     public partial class Product
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public decimal Price { get; set; }

        public string DisplayPrice
        {
            get { return string.Format("{0:C}", Price); }
        }

        public List<Product> GetProducts()
        {
            NorthwindDataContext db = new NorthwindDataContext();
            var data = from p in db.Products
                       select p;

            List<Product> retval = new List<Product>();

            foreach (var item in data)
            {
                Product newItem = new Product
                {
                    ID = item.ProductID,
                    Name = item.ProductName,
                    Price = item.UnitPrice ?? 0,
                    SupplierID = item.SupplierID
                };
                retval.Add(newItem);
            }

            return retval;
        }

    }
}
