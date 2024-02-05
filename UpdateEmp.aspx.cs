using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public SqlDataReader rdrall;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!IsPostBack) 
            { 
                SqlConnection connlocn = new SqlConnection(Application["connstr"].ToString());
                SqlConnection conndept = new SqlConnection(Application["connstr"].ToString());
                SqlConnection connall = new SqlConnection(Application["connstr"].ToString());
                SqlConnection connman = new SqlConnection(Application["connstr"].ToString());

                connlocn.Open();
                conndept.Open();
                connall.Open();
                connman.Open();

                string locnQuery = @"select * from locn_mast";
                string deptQuery = @"select * from dept_mast";
                string strQuery = @"select * from emp_mast where emp_id = '" + Request.QueryString["emppdcode"] + "'";
                string manQuery = @"select emp_id,emp_name from emp_mast";

                SqlCommand cmdlocn = new SqlCommand(locnQuery, connlocn);
                drlocn.DataSource=cmdlocn.ExecuteReader();
                drlocn.DataValueField = "locn_id";
                drlocn.DataTextField = "locn_desc";
                drlocn.DataBind();

                SqlCommand cmddept = new SqlCommand(deptQuery, conndept);
                drdept.DataSource = cmddept.ExecuteReader();
                drdept.DataValueField = "dept_id";
                drdept.DataTextField = "dept_desc";
                drdept.DataBind();

                SqlCommand cmdman = new SqlCommand(manQuery, connman);
                drman.DataSource = cmdman.ExecuteReader();
                drman.DataValueField = "emp_id";
                drman.DataTextField = "emp_name";
                drman.DataBind();

                SqlCommand cmdall = new SqlCommand(strQuery, connall);
                rdrall = cmdall.ExecuteReader();

                while(rdrall.Read())
                { 
                        lblidshow.Text = rdrall["emp_id"].ToString();
                        lblnameshow.Text = rdrall["emp_name"].ToString();
                        drlocn.SelectedValue = rdrall["locn_id"].ToString();
                        drdept.SelectedValue = rdrall["dept_id"].ToString();
                        SalaryTextbox1.Text = rdrall["salary"].ToString();
                        drman.SelectedValue = rdrall["rep_to"].ToString();
                }
                connall.Close();
                conndept.Close();
                connlocn.Close();
                connman.Close();
                cmdlocn.Dispose();
                cmddept.Dispose();  
                cmdman.Dispose();   
                cmdall.Dispose();

            }
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            SqlConnection conntemp = new SqlConnection(Application["connstr"].ToString());
            conntemp.Open();
            string strlocn,strdept,strman, strsalary;
            strsalary = SalaryTextbox1.Text;
            strlocn = drlocn.Text;
            strdept=drdept.Text;
            strman=drman.Text;
            string strQueryy = @"update emp_mast set emp_name = '" +lblnameshow.Text + "' , salary = '" + strsalary + "', locn_id = '" + strlocn + "' ,dept_id = '" + strdept + "' ,rep_to = '" + strman + " 'where emp_id ='" + lblidshow.Text + "'";
            SqlCommand cmd = new SqlCommand(strQueryy, conntemp);
            int status = cmd.ExecuteNonQuery();
            Response.Redirect("Default.aspx?emppdcode=" + status);
        }
    }
}