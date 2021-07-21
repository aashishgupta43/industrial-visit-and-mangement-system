using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI; 
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class adminsection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aid"] != null)
        {
            Label1.Text=("Welcome" + Session["aid"].ToString());
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        } 
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
         
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {

    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {

    }
    protected void edt_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        
        Session.Abandon();
      

        if (Session["aid"] != null)
        {
            Session["aid"] = null;


            Response.Redirect("adminlogin.aspx");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
}