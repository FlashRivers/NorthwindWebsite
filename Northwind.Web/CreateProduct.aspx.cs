using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Northwind.Data;
public partial class CreateProduct : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Form.Attributes.Add("class", "needs-validation");
            Form.Attributes.Add("novalidate", "");
            txtName.Attributes.Add("required", "true");
            ddlSuppliers.Attributes.Add("required", "true");
            ddlCategories.Attributes.Add("required", "true");
            txtQuantity.Attributes.Add("required", "true");
            txtUnitPrice.Attributes.Add("required", "true");
            txtUnitsInStock.Attributes.Add("required", "true");
            txtUnitsOnOrder.Attributes.Add("required", "true");
            txtReorderLevel.Attributes.Add("required", "true");

            BindControls();

            if (!String.IsNullOrEmpty(Request.QueryString["success"]))
            {
                
                bool success = Convert.ToBoolean(Request.QueryString["success"]);
                if(success)
                {
                    lblSuccess.Visible = true;
                }
            }

        }
    }

    protected void BindControls()
    {
        var supplierObj = new Supplier();
        ddlSuppliers.DataSource = supplierObj.GetSuppliers();
        ddlSuppliers.DataBind();

        var categoryObj = new Category();
        ddlCategories.DataSource = categoryObj.GetCategories();
        ddlCategories.DataBind();
        hdnDiscontinued.Value = System.Convert.ToString(false);
        
    }

    protected void btnCreateProduct_Click(object sender, EventArgs e)
    {
        //var x = hdnDiscontinued.Value;

        //Utilities.ResetAllControls(this);
        Response.Redirect(Request.Url.PathAndQuery + "?success=true", true);

    }

    public class Utilities
    {
        public static void ResetAllControls(Control form)
        {
            foreach (Control control in form.Controls)
            {
                if (control is TextBox textBox)
                {
                    textBox.Text = null;
                }

                if (control is DropDownList comboBox)
                {
                    if (comboBox.Items.Count > 0)
                        comboBox.SelectedIndex = 0;
                }

                if (control is CheckBox checkBox)
                {
                    checkBox.Checked = false;
                }

            }
        }
    }

}