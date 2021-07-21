using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Configuration;


public partial class schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

            if (Session["aid"] != null)
            {
                Label1.Text=("Welcome " + Session["aid"].ToString());
            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }
            TextBox1.Text = Request.QueryString["id"];
            TextBox2.Text = Request.QueryString["state"];
            TextBox3.Text = Request.QueryString["name"];
            TextBox4.Text = Request.QueryString["trade"];
            TextBox5.Text = Request.QueryString["city"];
            Image2.ImageUrl = Request.QueryString["photopath"];
        
            Random r = new Random();
            int num = r.Next(9000, 10000);
            TextBox12.Text = num.ToString();

    }  
    
   
    protected void fname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void mail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void mob_TextChanged(object sender, EventArgs e)
    {

    }
    protected void uid_TextChanged(object sender, EventArgs e)
    {

    }
    protected void pass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void cpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox6.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter college no');", true);
            TextBox6.Focus();
        }
        else if (TextBox7.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter batch name');", true);
            TextBox7.Focus();
        }
        else if (TextBox8.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter Schedule date');", true);
            TextBox8.Focus();
        }
        else if (TextBox9.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter visting date.');", true);
            TextBox6.Focus();
        }

        else if (TextBox9.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter trade');", true);
            TextBox6.Focus();
        }
        else if (TextBox10.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
            TextBox10.Focus();
        }
        else if (TextBox11.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter conform password');", true);
            TextBox11.Focus();
        }
        else
        {

            Random r = new Random();
            int num = r.Next(9000, 10000);
            TextBox12.Text = num.ToString();
      
            String dr, s;

            dr = ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString;
            SqlConnection cn = new SqlConnection(dr);
            cn.Open();


            s = "INSERT INTO schedule (id,name,trade,city,state,clgno,batchno,sdate,vdate,vtime,ctrade,bookingid) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "', '"
                + TextBox3.Text + "','" + TextBox4.Text + "' ,'" + TextBox5.Text + "', '" + TextBox6.Text + "','" + TextBox7.Text + "','"
                + TextBox8.Text + "', '" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','"+TextBox12.Text+"')";

            SqlCommand cmd = new SqlCommand(s, cn);
            cmd.ExecuteNonQuery();
            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('you have successfully manage industry for industrial visit ');", true);
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
       TextBox6.Text = "";
       TextBox7.Text = "";
       TextBox8.Text = "";
       TextBox9.Text = "";
       TextBox10.Text = "";
       TextBox11.Text = "";
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Butttonlogout_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();


        if (Session["aid"] != null)
        {
            Session["aid"] = null;


            Response.Redirect("adminlogin.aspx");
        }
    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Image2_Load(object sender, EventArgs e)
    {

    }


}