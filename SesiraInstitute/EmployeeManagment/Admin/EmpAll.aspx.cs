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
    public partial class EmpAll : System.Web.UI.Page
    {
       
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["userid"] == null) || (Session["role"] != "Admin"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }
            GridView1.DataBind();

        }

        protected void profilebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProfile.aspx");
                
        }

        protected void Report_btn_click(object sender, EventArgs e)
        {
            Response.Redirect("EmpReport.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
         
            
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
           
            String Empid = GridView1.Rows[rowindex].Cells[5].Text.ToString();
            

            

           try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                
                SqlCommand cmd = new SqlCommand("delete from Employee where NIC ='" + Empid.ToString()+ "';",con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert(\"Employee Deleted Successfully\")</script>");
                con.Close();


                GridView1.DataBind();
                

            }
            catch(Exception ex)
            {
                
               

            }
            Response.Redirect("EmpAll.aspx");
        }

        
    }
}
