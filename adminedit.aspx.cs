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


public partial class _adminedit : System.Web.UI.Page

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
    protected void editRecord(object sender, GridViewEditEventArgs e)
    {
        // Get the image path for remove old image after update record
        Image imgEditPhoto = GridView1.Rows[e.NewEditIndex].FindControl("imgPhoto") as Image;
        GlobalClass.imgEditPath = imgEditPhoto.ImageUrl;

        // Get the current row index for edit record
        GridView1.EditIndex = e.NewEditIndex;
        FillGridView();
    }
    protected void cancelRecord(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGridView();
    }
    protected void AddNewRecord(object sender, EventArgs e)
    {
        try
        {
            if (GlobalClass.dt.Rows.Count > 0)
            {
                GridView1.EditIndex = -1;
                GridView1.ShowFooter = true;
                FillGridView();
            }
            else
            {
                GridView1.ShowFooter = true;
                DataRow dr = GlobalClass.dt.NewRow();
                dr["name"] = "0";
                dr["trade"] = 0;

                dr["state"] = "0";
                dr["city"] = "0";
                dr["photopath"] = "0";
                GlobalClass.dt.Rows.Add(dr);
                GridView1.DataSource = GlobalClass.dt;
                GridView1.DataBind();
                GridView1.Rows[0].Visible = false;
            }
        }
        catch
        {
            Response.Write("<script> alert('Row not added in DataTable...') </script>");
        }
        
    }

    protected void AddNewCancel(object sender, EventArgs e)
    {
        GridView1.ShowFooter = false;
        FillGridView();
    }

    protected void InsertNewRecord(object sender, EventArgs e)
    {
        try
        {
            string strName = GlobalClass.dt.Rows[0]["name"].ToString();
            if (strName == "0")
            {
                GlobalClass.dt.Rows[0].Delete();
                GlobalClass.adap.Update(GlobalClass.dt);
            }
            TextBox txtName = GridView1.FooterRow.FindControl("txtNewName") as TextBox;
            TextBox txtAge = GridView1.FooterRow.FindControl("txtNewAge") as TextBox;
        
            TextBox txtCountry = GridView1.FooterRow.FindControl("txtNewCountry") as TextBox;
            TextBox txtCity = GridView1.FooterRow.FindControl("txtNewCity") as TextBox;
            FileUpload fuPhoto = GridView1.FooterRow.FindControl("fuNewPhoto") as FileUpload;
            Guid FileName = Guid.NewGuid();
            fuPhoto.SaveAs(Server.MapPath("~/Images/" + FileName + ".jpg"));
            DataRow dr = GlobalClass.dt.NewRow();
            dr["name"] = txtName.Text.Trim();
            dr["trade"] = txtAge.Text.Trim();

            dr["state"] = txtCountry.Text.Trim();
            dr["city"] = txtCity.Text.Trim();
            dr["photopath"] = "~/Images/" + FileName + ".jpg";
            GlobalClass.dt.Rows.Add(dr);
            GlobalClass.adap.Update(GlobalClass.dt);
            GridView1.ShowFooter = false;
            FillGridView();
        }
        catch
        {
            Response.Write("<script> alert('Record not added...') </script>");
        }

    }
    protected void updateRecord(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            TextBox txtName = GridView1.Rows[e.RowIndex].FindControl("txtName") as TextBox;
            TextBox txtAge = GridView1.Rows[e.RowIndex].FindControl("txtAge") as TextBox;
         
            TextBox txtCountry = GridView1.Rows[e.RowIndex].FindControl("txtCountry") as TextBox;
            TextBox txtCity = GridView1.Rows[e.RowIndex].FindControl("txtCity") as TextBox;
            FileUpload fuPhoto = GridView1.Rows[e.RowIndex].FindControl("fuPhoto") as FileUpload;
            Guid FileName = Guid.NewGuid();
            if (fuPhoto.FileName != "")
            {
                fuPhoto.SaveAs(Server.MapPath("~/Images/" + FileName + ".png"));
                GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["photopath"] = "~/Images/" + FileName + ".jpg";
                File.Delete(Server.MapPath(GlobalClass.imgEditPath));
            }
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["name"] = txtName.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["trade"] = txtAge.Text.Trim();

            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["state"] = txtCountry.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["city"] = txtCity.Text.Trim();
           
            GlobalClass.adap.Update(GlobalClass.dt);
            GridView1.EditIndex = -1;
            FillGridView();
        }
        catch
        {
            Response.Write("<script> alert('Record updation fail...') </script>");
        }
    }
    protected void RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex].Delete();
            GlobalClass.adap.Update(GlobalClass.dt);
            // Get the image path for removing deleted's record image from server folder
            Image imgPhoto = GridView1.Rows[e.RowIndex].FindControl("imgPhoto") as Image;
            File.Delete(Server.MapPath(imgPhoto.ImageUrl));
            FillGridView();
        }
        catch
        {
            Response.Write("<script> alert('Record not deleted...') </script>");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        GridViewRow gr = GridView1.SelectedRow;


        Response.Redirect("ShowData.aspx?Id=" + gr.Cells[2].Text);



    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        ;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {


    }
    protected void PaginatetheData(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.FillGridView();
    }
    protected void txtNewCity_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();

        if (Session["aid"] != null)
        {
            Session["aid"] = null;


            Response.Redirect("studentlogin.aspx");
        }
    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {

        Response.Redirect("adminsection.aspx");
    }
}