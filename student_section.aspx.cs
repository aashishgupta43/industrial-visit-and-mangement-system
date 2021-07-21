using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class student_section : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uid"] != null)
        {
            Label1.Text=("Welcome " + Session["uid"].ToString());
        }
        else
        {
            Response.Redirect("studentlogin.aspx");
        }
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {

       
          Session.Abandon();
          
        if (Session["uid"] != null)
        {
            Session["uid"] = null;
           

            Response.Redirect("studentlogin.aspx");
        }
    }
}