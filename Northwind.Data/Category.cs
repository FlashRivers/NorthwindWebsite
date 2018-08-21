using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Northwind.Data
{
    public partial class Category
    {
        //public int ID { get; set; }
        //public string Name { get; set; }
        public static List<ComboCategory> GetCategories()
        {
            using(NorthwindDataContext db = new NorthwindDataContext())
            {
                var query = from c in db.Categories
                           select new ComboCategory() { ID = c.CategoryID, Name = c.CategoryName };
                return query.ToList();
            }
            //NorthwindDataContext db = new NorthwindDataContext();
            //var data = from c in db.Categories
            //           select c;

            //List<Category> retval = new List<Category>();
            //foreach (var item in data)
            //{
            //    Category newItem = new Category
            //    {
            //        ID = item.CategoryID,
            //        Name = item.CategoryName
            //    };
            //    retval.Add(newItem);
            //}
            //return retval; 
            //return data.ToList();
        }
    }

    public class ComboCategory
    {
        public int ID { get; set; }
        public string Name { get; set; }    
    }
}
    