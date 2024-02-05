using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpApp
{
    public partial class InsertEmp : System.Web.UI.Page
    {
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connall = new SqlConnection(Application["connstr"].ToString());
                SqlConnection connlocn = new SqlConnection(Application["connstr"].ToString());
                SqlConnection conndept = new SqlConnection(Application["connstr"].ToString());
                SqlConnection connman = new SqlConnection(Application["connstr"].ToString());
                connall.Open();
                //Response.Write(connall.State);
                connlocn.Open();
                conndept.Open();
                connman.Open();

                String locnQuery = @"select * from locn_mast";
                string deptQuery = @"select * from dept_mast";
                string allQuery = @"select * from emp_mast";
                string manQuery = @"select emp_id, emp_name from emp_mast";


                SqlCommand cmdlocn = new SqlCommand(locnQuery, connlocn);
                txt_li_update.DataSource = cmdlocn.ExecuteReader();
                txt_li_update.DataValueField = "locn_id";
                txt_li_update.DataTextField = "locn_desc";
                txt_li_update.DataBind();


                SqlCommand cmddept = new SqlCommand(deptQuery, conndept);
                txt_di_update.DataSource = cmddept.ExecuteReader();
                txt_di_update.DataValueField = "dept_id";
                txt_di_update.DataTextField = "dept_desc";
                txt_di_update.DataBind();

                SqlCommand cmdman = new SqlCommand(manQuery, connman);
                txt_rt_update.DataSource = cmdman.ExecuteReader();
                txt_rt_update.DataValueField = "emp_id";
                txt_rt_update.DataTextField = "emp_name";
                txt_rt_update.DataBind();

                SqlCommand cmdall = new SqlCommand(allQuery, connall);



                connall.Close();
                connlocn.Close();
                conndept.Close();
                connman.Close();
                cmdlocn.Dispose();
                cmdall.Dispose();
                cmddept.Dispose();
                cmdman.Dispose();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["empid"] = lblidshow.Text;
            ViewState["empname"] = lblnameshow.Text;
            ViewState["s_salary"] = txt_sa_update.Text;
            ViewState["locndesc"] = txt_li_update.SelectedValue;
            ViewState["deptdesc"] = txt_di_update.SelectedValue;
            ViewState["repto"] = txt_rt_update.SelectedValue;
            SqlConnection connupdate = new SqlConnection(Application["connstr"].ToString());
            connupdate.Open();

            Response.Write(connupdate.State);
            string strupdate = @"insert into emp_mast values('" + ViewState["empid"] + " ','" + ViewState["empname"] + "','" + ViewState["s_salary"] + "' ,'" + ViewState["locndesc"] + "','" + ViewState["deptdesc"] + "','" + ViewState["repto"] + "')";
            SqlCommand cmd = new SqlCommand(strupdate, connupdate);
            int status = cmd.ExecuteNonQuery();
            Response.Redirect("Default.aspx");

        }
    }

}