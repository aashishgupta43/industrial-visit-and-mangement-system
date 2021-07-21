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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Call FillGridView Method
            FillGridView();
        }
    }

    public void FillGridView()
    {
        try
        {
            string cnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(cnString);
          
            GlobalClass.adap = new SqlDataAdapter("select * from GridView", con);
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
   
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void PaginatetheData(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.FillGridView();
    }
}