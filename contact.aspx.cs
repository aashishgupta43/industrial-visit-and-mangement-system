using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (fname.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter first name');", true);
            fname.Focus();
        }
        else if (lname.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter last name');", true);
            lname.Focus();
        }
        else if (email.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter E-mail id');", true);
            email.Focus();
        }
        else if (sub.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter mobile no.');", true);
            sub.Focus();
        }
        else
        {
            
            String dr, s, f_name, l_name, uemail,subj;

                dr = ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString;
                SqlConnection cn = new SqlConnection(dr);
                cn.Open();
                            f_name = fname.Text; l_name = lname.Text; uemail = email.Text; subj = sub.Text; 
       

                s = "INSERT INTO contact  (f_name, l_name,email,subject) VALUES('" + f_name + "','" + l_name + "', '" + uemail + "','" + subj + "')";
              
                SqlCommand cmd = new SqlCommand(s, cn);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('you have successfully Send message');", true);
                cn.Close();
                fname.Text = "";
                lname.Text = "";
                email.Text = "";
                sub.Text = "";

              

                         

        }
    }
  
    protected void email_TextChanged(object sender, EventArgs e)
    {

    }
    protected void sub_TextChanged(object sender, EventArgs e)
    {

    }
    protected void fname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lname_TextChanged(object sender, EventArgs e)
    {

    }
}