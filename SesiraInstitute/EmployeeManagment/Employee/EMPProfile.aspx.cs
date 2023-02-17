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
    public partial class EmpProfile : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["userid"] == null) || (Session["role"] != "Employee"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Employee WHERE Emp_Id ='" + Session["userid"] + "';",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {   
                    //set the EmpID
                    TextBox10.Text = dt.Rows[0][0].ToString();
                    //set The User Name
                    TextBox11.Text = dt.Rows[0][1].ToString();
                    //Set the Basic Salary
                    TextBox12.Text = dt.Rows[0][2].ToString();


                    //secondary Details 
                    //Set First Name 
                    TextBox1.Text = dt.Rows[0][4].ToString();
                    //Set Last Name
                    TextBox2.Text = dt.Rows[0][5].ToString();
                    //Set password
                    TextBox3.Text = dt.Rows[0][3].ToString();
                    //Set Confirm Password
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    //Set Email
                    TextBox5.Text = dt.Rows[0][6].ToString();
                    //Set Phone Number
                    TextBox6.Text = dt.Rows[0][7].ToString();
                    // Set NIC
                    TextBox7.Text = dt.Rows[0][8].ToString();
                    //Set Birth data
                    TextBox8.Text = dt.Rows[0][10].ToString();
                    //Set the Address
                    TextBox9.Text = dt.Rows[0][11].ToString();
                    String gender = dt.Rows[0][9].ToString();

                    
                    if (gender == "True")
                    {
                        RadioButton1.Checked = true;
                        RadioButton2.Checked = false;
                        
                    }
                    else
                    {
                        RadioButton1.Checked = false;
                        RadioButton2.Checked = true;
                    }

                }
                else
                {
                    Response.Write("<script>alert(\"Error occurred in your user session. Please Log again and Try\");</script>");
                }


            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["userid"] = null;
            Session["role"] = null;
        } 

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update Employee Set FirstName = @FirstName , LastName=@LastName ,Email=@Email , PhoneNo=@PhoneNo , NIC=@NIC,DOB=@DOB,Address=@Address",con);

                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();

            }
            catch(Exception ex)
            {

            }
        }
    }
}