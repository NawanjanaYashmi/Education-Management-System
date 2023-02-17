using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["userid"] == null) || (Session["role"] != "Admin"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }
        }

        protected void profilebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empprofile.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        }
    }
}