using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute.EmployeeManagment.Master
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {   //Checking the Session
            if ((Session["userid"] == null) || (Session["role"] != "Employee"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }
            //setting number of Subjects
            SqlConnection con = new SqlConnection(strcon);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT COUNT(Sub_Id) FROM Subject;",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count>= 1)
            {
                NoOfSubjects.InnerHtml = dt.Rows[0][0].ToString();
            }
            else
            {
                NoOfSubjects.InnerHtml = " --- ";
            }



            SqlCommand cmd2 = new SqlCommand("SELECT COUNT(username) FROM Student", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count>=1)
            {
                NoOfStudents.InnerHtml = dt2.Rows[0][0].ToString();
            }
            else
            {
                NoOfStudents.InnerHtml = " --- ";
            }

            SqlCommand cmd3 = new SqlCommand("SELECT COUNT(Teacher_Id) FROM Teacher", con);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count >= 1)
            {
                NoOfTeachers.InnerHtml = dt3.Rows[0][0].ToString();
            }
            else
            {
                NoOfTeachers.InnerHtml = " --- ";
            }


        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        }

        protected void ProfileBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProfile.aspx");
        }

        
    }
}