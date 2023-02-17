using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Employee where Emp_UserName='"+TextBox1.Text.Trim()+ "' AND Password='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["userid"] = dr.GetValue(0).ToString();
                        Session["role"] = "Employee";
                        Response.Redirect("EmpDash.aspx");



                    }
                    
                }
                else
                {
                    Response.Write("<script>alert(\"Invalide Credentials\");</script>");

                }

            }catch(Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Admin/AdminLogInPage.aspx");
        }
    }
}