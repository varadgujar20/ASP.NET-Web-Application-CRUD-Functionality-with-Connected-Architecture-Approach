using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace EmpApp
{
    public partial class Default : System.Web.UI.Page
    {
        public SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["connstr"] = System.Configuration.ConfigurationManager.ConnectionStrings["myconnstr"].ConnectionString;

            SqlConnection conn = new SqlConnection(Application["connstr"].ToString());

            conn.Open();

            String strQuery = @"select e.emp_id,e.emp_name,e.salary,d.dept_desc,l.locn_desc,e2.emp_name as Manager,
	                            e.locn_id,e.dept_id,e.rep_to
	                            from emp_mast e inner join dept_mast d
	                            on e.dept_id=d.dept_id
	                            inner join locn_mast l
	                            on e.locn_id=l.locn_id
	                            left outer join emp_mast e2
	                            on e.rep_to=e2.emp_id";

            

            SqlCommand cmd = new SqlCommand(strQuery,conn);

            
            rdr = cmd.ExecuteReader();
            decimal empSalary;

            

            if (!string.IsNullOrEmpty(Request.QueryString["softDeleteEmpId"]))
            {
                int empIdToDelete = Convert.ToInt32(Request.QueryString["softDeleteEmpId"]);
                SoftDeleteEmployee(empIdToDelete);
            }
            if (!IsPostBack)
            {
                

                if (!IsPostBack)
                {
                    

                    if (!string.IsNullOrEmpty(Request.QueryString["InsertEmployee"]))
                    {
                        
                        string empId = Request.QueryString["empId"];
                        string empName = Request.QueryString["empName"];
                        string empSalaryString = Request.QueryString["empSalary"];
                        string deptId = Request.QueryString["deptId"];
                        string locId = Request.QueryString["locId"];
                        string managerId = Request.QueryString["managerId"];

                        
                    }
                }
            }
        }

        private void SoftDeleteEmployee(int emp_id)
            {
                using (SqlConnection conn = new SqlConnection(Application["connstr"].ToString()))
                {
                    conn.Open();
                string updateQuery = "DELETE FROM emp_mast WHERE emp_id = @emp_id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@emp_id", emp_id);
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Redirect("Default.aspx");
            }


        }
    }