
using Microsoft.Reporting.WebForms;
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
	public partial class EmpReport : System.Web.UI.Page
	{
        
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
            if ((Session["userid"] == null) || (Session["role"] != "Admin"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }
           
            SqlConnection con = new SqlConnection(strcon);
            /*
           con.Open();
           SqlCommand cmd = new SqlCommand("select Emp_Id,NIC,FirstName,LastName,Email,PhoneNo,Address from Employee;", con);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataTable dt = new DataTable();
           da.Fill(dt);

           ReportViewer1.LocalReport.DataSources.Clear();
           ReportDataSource rds = new ReportDataSource("Emp",dt);
           ReportViewer1.LocalReport.ReportPath = Server.MapPath("EmpReport.rdlc");
           ReportViewer1.LocalReport.DataSources.Add(rds);
           ReportViewer1.LocalReport.Refresh();
           */
            con.Open();
            SqlCommand cmd = new SqlCommand("select Emp_Id,NIC,FirstName,LastName,Email,PhoneNo,Address from Employee;", con);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            con.Close();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("Emp", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("EmpReport.rdlc");
            ReportViewer1.LocalReport.EnableHyperlinks = true;
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            ReportViewer1.ZoomMode = ZoomMode.FullPage;
            ReportViewer1.LocalReport.Refresh();
            ReportViewer1.LocalReport.EnableHyperlinks = true;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        }
    }
}