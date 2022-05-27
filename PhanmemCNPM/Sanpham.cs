using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PhanmemCNPM
{
    public partial class Sanpham : Form
    {
        public Sanpham()
        {
            InitializeComponent();
        }
        public void getdl()
        {
            string query = @"Select * from Sanpham";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Sanpham");
            dgv1.DataSource = ds.Tables["Sanpham"];
            

        }
        
        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Sanpham_Load(object sender, EventArgs e)
        {
            getdl();
        }

        private void dgv1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            if (row >= 0)
            {
              
                txtma.Text = dgv1.Rows[row].Cells["Masp"].Value.ToString();
                txtten.Text = dgv1.Rows[row].Cells["Tensp"].Value.ToString();
                txtloai.Text = dgv1.Rows[row].Cells["Loaisp"].Value.ToString();
                txtth.Text = dgv1.Rows[row].Cells["Thuonghieu"].Value.ToString();
                txtgb.Text = dgv1.Rows[row].Cells["Giaban"].Value.ToString();
                txtvt.Text = dgv1.Rows[row].Cells["Vitri"].Value.ToString();
                txtkm.Text = dgv1.Rows[row].Cells["Khuyenmai"].Value.ToString();
                txttt.Text = dgv1.Rows[row].Cells["Trangthai"].Value.ToString();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
            string masp = txtma.Text;
            string ten = txtten.Text;
            string loai = txtloai.Text;
            string th = txtth.Text;
            string gb = txtgb.Text;
            string vt = txtvt.Text;
            string km = txtkm.Text;
            string tt = txttt.Text;

            string query = @"insert into Sanpham values('" + masp + "','" + ten + "','" + loai + "','" + th + "','" + gb + "','" + vt + "','" + km + "','" + tt + "')";
            ketnoi cn = new ketnoi();
            bool kq = cn.excute(query);
            if (kq == true)
            {
                MessageBox.Show("Thêm thành công");
                getdl();
            }
            else
            {
                MessageBox.Show("Thêm thất bại");
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            txtma.Text = "";
            txtten.Text = "";
            txtloai.Text = "";
            txtth.Text = "";
            txtgb.Text = "";
            txtvt.Text = "";
            txtkm.Text = "";
            txttt.Text = "";
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string masp = txtma.Text;
            string ten = txtten.Text;
            string loai = txtloai.Text;
            string th = txtth.Text;
            string gb = txtgb.Text;
            string vt = txtvt.Text;
            string km = txtkm.Text;
            string tt = txttt.Text;
            string query = @"update Sanpham set Tensp='" + ten + "',Loaisp='" + loai + "',Thuonghieu='" + th + "',Giaban='" + gb + "',Vitri='" + vt + "',Khuyenmai='" + km + "',Trangthai='" + tt + "' where Masp='" + masp + "'";
            ketnoi cn = new ketnoi();
            bool kq = cn.excute(query);
            if (kq == true)
            {
                MessageBox.Show("Sửa thành công");
                getdl();
            }
            else
            {
                MessageBox.Show("Sửa thất bại");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string masp = txtma.Text;
            string query = @"delete  from Sanpham where Masp='" + masp + "'";
            ketnoi cn = new ketnoi();
            bool kq = cn.excute(query);
            if (kq == true)
            {
                MessageBox.Show("Xóa thành công");
                getdl();
            }
            else
            {
                MessageBox.Show("Xóa thất bại");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string ten = txtten.Text;
            string query = @"select * from Sanpham where Tensp = '" + ten + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Sanpham");
            dgv1.DataSource = ds.Tables["Sanpham"];
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string loai = txtloai.Text;
            string query = @"select * from Sanpham where Loaisp = '" + loai + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Sanpham");
            dgv1.DataSource = ds.Tables["Sanpham"];
        }

        private void button8_Click(object sender, EventArgs e)
        {
            string th = txtth.Text;
            string query = @"select * from Sanpham where Thuonghieu = '" + th + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Sanpham");
            dgv1.DataSource = ds.Tables["Sanpham"];
        }
    }
}
