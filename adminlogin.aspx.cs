using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
            uid.Focus();
        }
        else if (upass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
           upass.Focus();
        }

        else
        {
            String id, pass, id1, pass1, s;
            id = uid.Text;
            pass = upass.Text;
            s = "select * from ADMIN";

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                id1 = rs.GetString(0);
                pass1 = rs.GetString(1);
                if (id == id1 && pass == pass1)
                {
                    Session["aid"] =" Admin";
                    Response.Redirect("adminsection.aspx");
                }
                else
                {
                    Label3.Visible = true;

                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        uid.Text = "";
        upass.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../home.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
    }
    
}

