using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Northwind.Data
{
    public partial class Supplier
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public static List<Supplier> GetSuppliers()
        {
            NorthwindDataContext db = new NorthwindDataContext();
            var data = from s in db.Suppliers
                       select s;
            List<Supplier> retval = new List<Supplier>();
            foreach (var item in data)
            {
                Supplier newItem = new Supplier
                {
                    ID = item.SupplierID,
                    Name = item.CompanyName
                };
                retval.Add(newItem);
            }
            return retval;
        }
    }
}
