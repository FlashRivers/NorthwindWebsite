using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Northwind.EF;
public partial class JQueryCallback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static EmployeeMini GetEmployeeById(int ID)
    {
        using (var db = new NorthwindEntities())
        {
            var emp = db.Employees.FirstOrDefault(e => e.EmployeeID == ID);
            var empMini = new EmployeeMini { FirstName = emp.FirstName, LastName = emp.LastName, Title = emp.Title };
            return empMini;
        }
    }

    public class EmployeeMini
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Title { get; set; }

    }
}