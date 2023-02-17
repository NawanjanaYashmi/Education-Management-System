using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute
{
    public partial class Employee : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpAll.aspx");
        }
    }
}