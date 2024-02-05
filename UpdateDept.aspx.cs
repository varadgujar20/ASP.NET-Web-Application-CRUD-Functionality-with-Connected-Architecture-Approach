using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpApp
{
    public partial class UpdateDept : System.Web.UI.Page
    {
        public SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            // ViewState["deptcd"] = Request.QueryString["Depdcode"];
            string deptcd = Request.QueryString["updcode"].ToString();

            SqlConnection conn = new SqlConnection(Application["connstr"].ToString());

            //string deptcd = Request.QueryString["dept_id"];

            conn.Open();

            String strQuery = "select * from dept_mast where dept_id = '" + deptcd + "';";

            SqlCommand command = new SqlCommand(strQuery, conn);

            reader = command.ExecuteReader();
            //Response.Write(strQuery);

            //Response.Write(reader.HasRows);

            reader.Read();
            {
                ViewState["deptcd"] = reader["dept_id"];

                ViewState["deptname"] = reader["dept_desc"];

                //lblidshow.Text = ViewState["deptcd"].ToString();

                if (!IsPostBack)
                {
                    lblidshow.Text = ViewState["deptcd"].ToString();
                    txtname.Text = ViewState["deptname"].ToString();
                }
            }

        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            SqlConnection conntemp = new SqlConnection(Application["connstr"].ToString());
            conntemp.Open();
            string strQuery = @"update dept_mast set dept_desc='" + txtname.Text + "'" + "where dept_id ='" + ViewState["deptcd"] + "'";
            SqlCommand cmd = new SqlCommand(strQuery, conntemp);
            int status = cmd.ExecuteNonQuery();
            Response.Redirect("Default.aspx?updcode=" + status + "&deptcd=" + ViewState["deptcd"]);
        }
    }
}