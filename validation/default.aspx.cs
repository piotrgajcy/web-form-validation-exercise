using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            Decimal tip = Convert.ToDecimal(txtAmount.Text, System.Globalization.CultureInfo.InvariantCulture) * Convert.ToDecimal(ddlPercent.SelectedValue, System.Globalization.CultureInfo.InvariantCulture);
            lblTip.Text = tip.ToString("c");
        }
    }
}