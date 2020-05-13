using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DS_MH : System.Web.UI.Page
{
    public static string chuoiKN = "Data Source=TRANVUDAI-PC;Initial Catalog=QL_DIEMSV;User ID=sa;Password=123456";
    public static SqlConnection cn=new SqlConnection(chuoiKN);
    protected void Page_Load(object sender, EventArgs e)
    {
        HienThi();
    }
    void HienThi()
    {
        try
        {
            string chuoiSQL = "SELECT * FROM tbl_MH";
            SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception)
        {
            Label1.Text = "Lỗi kết nối!";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string chuoiSQL = "INSERT INTO tbl_MH Values ('"+TextBox1.Text+"',N'"+TextBox2.Text+"')";
        ThucThi(chuoiSQL);
        HienThi();
    }
    void ThucThi(string caulenh)
    {
        SqlCommand cm = new SqlCommand(caulenh, cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string chuoiSQL = "SELECT * FROM tbl_MH";
        SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int dong = GridView1.SelectedIndex;
        int trang = GridView1.PageIndex;
        TextBox1.Text = dt.Rows[trang * 3 + dong][0].ToString();
        TextBox2.Text = dt.Rows[trang * 3 + dong][1].ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string chuoiSQL = "DELETE tbl_MH where MaMH='" + TextBox1.Text + "'";
        ThucThi(chuoiSQL);
        HienThi();
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string chuoiSQL = "UPDATE tbl_MH SET TenMH=N'" + TextBox2.Text + "' where MaMH='" + TextBox1.Text + "'";
        ThucThi(chuoiSQL);
        HienThi();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
}