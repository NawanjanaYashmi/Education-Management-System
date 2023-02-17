using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesiraInstitute
{
    public partial class AddEmp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["userid"] == null) || (Session["role"] != "Admin"))
            {
                Response.Redirect("../Employee/EmpLogIn.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkID())
            {
                Response.Write("<script>alert(\"Employee Already Exist With this Employee ID \");</script>");
            }else if (checkUserName())
            {
                Response.Write("<script>alert(\"Employee Already Exist With this Employee User Name \");</script>");
            }
            else
            {
                SignUp();
            }
            
        }





        void SignUp()
        {
           


                if (RadioButton3.Checked)
                {
                    SignUpNewAdmin();
                    
                }
                else
                {

                    SignUpNewEmployee();
                    
                }

        }
        void SignUpNewAdmin()
        {
            try {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }
                
                string filepath = "../../Images/profle.png";
               
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                
                FileUpload1.SaveAs(Server.MapPath("../../profileimgs/" + filename));


                filepath = "~profileimgs/" + filename;

                Response.Write("<script>alert(\"affter path\");</script>");

                SqlCommand cmd = new SqlCommand("insert into Admin (Emp_Id,Emp_UserName,BasicSalary,Password,FirstName,LastName,Email,PhoneNo,NIC,Gender,DOB,Address,imgpath) values (@Emp_Id,@Emp_UserName,@BasicSalary,@Password,@FirstName,@LastName,@Email,@PhoneNo,@NIC,@Gender,@DOB,@Address,@imgpath);", con);

                cmd.Parameters.AddWithValue("@Emp_Id", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_UserName", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@BasicSalary", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", RadioButton1.Checked);
                cmd.Parameters.AddWithValue("@DOB", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@imgpath", filepath);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert(\" New Admin Added succsfuly\");</script>");

                con.Close();

            }catch(Exception ex)
            {
                Response.Write("<script>alert(\"Error Occured\");</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }

        void SignUpNewEmployee()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }

                string filepath = "../../Images/profle.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/profileimgs/" + filename));
                filepath = "~/profileimgs/" + filename;

                SqlCommand cmd = new SqlCommand("insert into Employee (Emp_Id,Emp_UserName,BasicSalary,Password,FirstName,LastName,Email,PhoneNo,NIC,Gender,DOB,Address,imgpath) values (@Emp_Id,@Emp_UserName,@BasicSalary,@Password,@FirstName,@LastName,@Email,@PhoneNo,@NIC,@Gender,@DOB,@Address,@imgpath);", con);


                cmd.Parameters.AddWithValue("@Emp_Id", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_UserName", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@BasicSalary", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", RadioButton1.Checked);
                cmd.Parameters.AddWithValue("@DOB", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@imgpath", filepath);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert(\" New Admin Employee succsfuly\");</script>");

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(\"Error Occured\");</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }





           
        }




        bool checkID()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (RadioButton3.Checked)
                {
                    SqlCommand cmd = new SqlCommand("Select * from Admin where Emp_Id ='" + TextBox10.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        con.Close();
                        return true;
                    }
                    else
                    {
                        con.Close();
                        return false;
                    }
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("Select * from Employee where Emp_Id ='" + TextBox10.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        con.Close();
                        return true;
                    }
                    else
                    {
                        con.Close();
                        return false;

                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        bool checkUserName()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (RadioButton3.Checked)
                {
                    SqlCommand cmd = new SqlCommand("Select * from Admin where Emp_UserName ='" + TextBox11.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        con.Close();
                        return true;
                    }
                    else
                    {
                        con.Close();
                        return false;
                    }
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("Select * from Employee where Emp_UserName ='" + TextBox11.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count >= 1)
                    {
                        con.Close();
                        return true;
                    }
                    else
                    {
                        con.Close();
                        return false;
                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["username"] =null;
            Session["userid"] =null;
            Session["role"] =null;


        }
    }
}