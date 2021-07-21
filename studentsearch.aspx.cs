using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Web.DataAccess;
using System.Configuration;
using System.IO;


public partial class stug : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            Label1.Text=("Welcome "+ Session["uid"].ToString());
        }
        else
        {
            Response.Redirect("studentlogin.aspx");
        } 
       
    }
    public void FillGridView()
    {
        if (TextBox1.Text == "")
        {
            try
            {
                string cnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(cnString);
                string qr1 = "select *from GridView where trade='" + TextBox2.Text + "' ";
                GlobalClass.adap = new SqlDataAdapter(qr1, con);
                SqlCommandBuilder bui = new SqlCommandBuilder(GlobalClass.adap);
                GlobalClass.dt = new DataTable();
                GlobalClass.adap.Fill(GlobalClass.dt);
                GridView1.DataSource = GlobalClass.dt;
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script> alert('Connection String Error...') </script>");

            }
        }
        else if (TextBox2.Text == "")
        {

            try
            {
                string cnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(cnString);
                string qr1 = "select *from GridView where state='" + TextBox1.Text + "' ";
                GlobalClass.adap = new SqlDataAdapter(qr1, con);
                SqlCommandBuilder bui = new SqlCommandBuilder(GlobalClass.adap);
                GlobalClass.dt = new DataTable();
                GlobalClass.adap.Fill(GlobalClass.dt);
                GridView1.DataSource = GlobalClass.dt;
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script> alert('Connection String Error...') </script>");

            }

        }
        else
        {
            try
            {
                string cnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(cnString);

                string qr1 = "select *from GridView where state='" + TextBox1.Text + "' and trade='" + TextBox2.Text + "' ";
                GlobalClass.adap = new SqlDataAdapter(qr1, con);
                SqlCommandBuilder bui = new SqlCommandBuilder(GlobalClass.adap);
                GlobalClass.dt = new DataTable();
                GlobalClass.adap.Fill(GlobalClass.dt);
                GridView1.DataSource = GlobalClass.dt;
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script> alert('Connection String Error...') </script>");

            }
        }
    }





   
   

    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void PaginatetheData(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.FillGridView();
    }

    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        FillGridView();

    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
      
          Session.Abandon();
         
        if (Session["uid"] != null)
        {
            Session["uid"] = null;


            Response.Redirect("studentlogin.aspx");
        }
    }
}