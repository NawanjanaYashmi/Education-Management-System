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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {   
            //Checking the session
            if ((Session["userid"] == null) || (Session["role"] != "Admin"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }

            SqlConnection con = new SqlConnection(strcon);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            //setting number of Students
            SqlCommand cmd = new SqlCommand("SELECT COUNT(username) FROM Student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                NoOfStudents.InnerHtml = dt.Rows[0][0].ToString();
            }
            else
            {
                NoOfStudents.InnerHtml = " --- ";
            }

            //Setting number of Teachers
            SqlCommand cmd2 = new SqlCommand("SELECT COUNT(Teacher_Id) FROM Teacher", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count >= 1)
            {
                NoOfTeachers.InnerHtml = dt2.Rows[0][0].ToString();
            }
            else
            {
                NoOfTeachers.InnerHtml = " --- ";
            }

            //setting number of subjects
            SqlCommand cmd3 = new SqlCommand("SELECT COUNT(Sub_Id) FROM Subject;", con);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count >= 1)
            {
                NoOfSubjects.InnerHtml = dt3.Rows[0][0].ToString();
            }
            else
            {
                NoOfSubjects.InnerHtml = " --- ";
            }

            //Setting number of Employees
            SqlCommand cmd4 = new SqlCommand("SELECT COUNT(Emp_Id) from Employee;", con);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            if (dt4.Rows.Count >= 1)
            {
                NoOfEmployees.InnerHtml = dt4.Rows[0][0].ToString();
            }
            else
            {
                NoOfEmployees .InnerHtml = " --- ";
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../EmpProfile.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        }

        protected void loadEmp()
        {
            Response.Redirect("AddEmp.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddEmp.aspx");
        }
    }
}