using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class admin_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool chektype(string a)
    {
        string exp=Path.GetExtension(a);
        switch (exp.ToLower())
        {
            case ".gif": return true;
            case ".jpeg": return true;
            case ".jpg": return true;
            case ".bmp": return true;
            case ".png": return true;
            default: return false;
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        if (imgupload.HasFile)
        {
            if (!chektype(imgupload.FileName))
            {
                lbl_kala.Text = "فرمت پشتیبانی نمیشود!";
            }
            else
            {
                kalaTableAdapters.Tbl_kalaTableAdapter kta = new kalaTableAdapters.Tbl_kalaTableAdapter();
                string imgup = imgupload.FileName;
                kta.Insertkalajadid(txt_namekala.Text, txt_tozihat.Text, imgup, DropDownList1.SelectedIndex, int.Parse(txt_price.Text), 0, int.Parse(drp_cat.SelectedValue));
                imgupload.SaveAs(MapPath("~/img/"+imgupload.FileName));
                lbl_kala.Text = "ارسال با موفقیت انجام شد";
                txt_namekala.Text="";
                txt_tozihat.Text="";
                txt_price.Text = "";
                GridView1.DataBind();
            }
        }
    }
}