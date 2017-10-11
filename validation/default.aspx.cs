using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace validation
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            Decimal tip = Convert.ToDecimal(txtAmount.Text, CultureInfo.InvariantCulture) * Convert.ToDecimal(ddlPercent.SelectedValue, CultureInfo.InvariantCulture);
            lblTip.Text = tip.ToString("c");

            Decimal total = Convert.ToDecimal(txtAmount.Text, CultureInfo.InvariantCulture) + tip;
            lblTotal.Text = total.ToString("c");

            pnlResults.Visible = true;
            
        }
    }
}