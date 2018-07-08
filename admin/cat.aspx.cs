using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_cat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_catsend_Click(object sender, EventArgs e)
    {
        if (txt_catname.Text == "")
        {
            lbl_catsend.Text = "موضوع دسته بندی نوشته شود";
        }
        else
        {
            catTableAdapters.Tbl_catTableAdapter catap = new catTableAdapters.Tbl_catTableAdapter();
            catap.Insertcat(txt_catname.Text);
            lbl_catsend.Text = "ارسال موفقیت آمیز بود";
            GridView1.DataBind();
            txt_catname.Text = "";
        }

    }
}