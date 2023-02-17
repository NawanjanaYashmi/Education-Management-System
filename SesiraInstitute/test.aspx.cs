using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute
{
    public partial class test : System.Web.UI.Page
    {
        String ConnectionString = "Data Source=THARUSHA\\SQLEXPRESS;Initial Catalog=NotificationDB;User ID=sa;Password=123";



        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "REPORT_PRO";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);

            con.Close();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/RptNotification.rdlc");

            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            ReportViewer1.ZoomMode = ZoomMode.FullPage;
            ReportViewer1.LocalReport.Refresh();
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }
    }
}