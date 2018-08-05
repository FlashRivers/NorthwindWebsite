<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/default.master" AutoEventWireup="true" CodeFile="CreateProduct.aspx.cs" Inherits="CreateProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Create a New Product<asp:Label ID="lblSuccess" runat="server" Text=" - Product added successfully!" Visible="false" CssClass="text-success" /></h1>
    <hr class="mb-4">
    <div class="row">
        <div class="col-md-5 mb-3">
            <label for="txtName">Product name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Valid product name is required.
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="ddlSuppliers">Supplier</label>
            <asp:DropDownList ID="ddlSuppliers" runat="server" DataTextField="Name" DataValueField="ID" AppendDataBoundItems="true" CssClass="custom-select d-block w-100">
                <asp:ListItem Value="" Text="Choose..." />
            </asp:DropDownList>
            <div class="invalid-feedback">
                Please select a valid supplier.
            </div>
        </div>
        <div class="col-md-3 mb-3">
            <label for="ddlCategories">Category</label>
            <asp:DropDownList ID="ddlCategories" runat="server" DataTextField="Name" DataValueField="ID" AppendDataBoundItems="true" CssClass="custom-select d-block w-100">
                <asp:ListItem Value="" Text="Choose..." />
            </asp:DropDownList>
            <div class="invalid-feedback">
                Please select a valid category.
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 mb-3">
            <label for="txtQuantity">Quantity Per Unit</label>
            <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Quantity required.
            </div>
        </div>
        <div class="col-md-2 mb-3">
            <label for="txtUnitPrice">Unit Price</label>
            <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Unit price required.
            </div>
        </div>
        <div class="col-md-2 mb-3">
            <label for="txtUnitsInStock">Units In Stock</label>
            <asp:TextBox ID="txtUnitsInStock" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Units in stock required.
            </div>
        </div>
        <div class="col-md-2 mb-3">
            <label for="txtUnitsOnOrder">Units On Order</label>
            <asp:TextBox ID="txtUnitsOnOrder" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Units on order required.
            </div>
        </div>
        <div class="col-md-2 mb-3">
            <label for="reorderlevel">Re-Order Level</label>
            <asp:TextBox ID="txtReorderLevel" runat="server" CssClass="form-control" />
            <div class="invalid-feedback">
                Re-Order level on order required.
            </div>
        </div>
    </div>
    <hr class="mb-4">
    <div class="custom-control custom-checkbox">
        <asp:HiddenField ID="hdnDiscontinued" runat="server" />
        <input type="checkbox" class="custom-control-input" id="cboDiscontinued" onchange="storeValue();">
        <label class="custom-control-label" for="cboDiscontinued">Discontinued</label>
    </div>
    <hr class="mb-4">
    <asp:Button ID="btnCreateProduct" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Create New Product" OnClick="btnCreateProduct_Click"  />
<%--    <button class="btn btn-primary btn-lg btn-block" type="submit">Create New Product</button>--%>
    <script>
        var storeValue = function () {
            var cb = document.getElementById("cboDiscontinued");
            var hdn = document.getElementById("<%=hdnDiscontinued.ClientID %>");
            hdn.value = cb.checked;
        };

        function hdnValue() { return <%=hdnDiscontinued.ClientID %>};

        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';

            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');

                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</asp:Content>

