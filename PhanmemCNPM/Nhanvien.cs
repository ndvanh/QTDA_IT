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
    public partial class Nhanvien : Form
    {
        public Nhanvien()
        {
            InitializeComponent();
        }
        public void getdl()
        {
            string query = @"Select * from Nhanvien";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Nhanvien");
            dgvnv.DataSource = ds.Tables["Nhanvien"];


        }
        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Nhanvien_Load(object sender, EventArgs e)
        {
            getdl();
        }

        private void dgvnv_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            if (row >= 0)
            {

                txtma.Text = dgvnv.Rows[row].Cells["Manv"].Value.ToString();
                txtten.Text = dgvnv.Rows[row].Cells["Tennv"].Value.ToString();
                txtngay.Text = dgvnv.Rows[row].Cells["Ngaysinh"].Value.ToString();
                txtcv.Text = dgvnv.Rows[row].Cells["Chucvu"].Value.ToString();
                txtlg.Text = dgvnv.Rows[row].Cells["Luong"].Value.ToString();
                txtgt.Text = dgvnv.Rows[row].Cells["Gioitinh"].Value.ToString();
                txtdc.Text = dgvnv.Rows[row].Cells["Diachi"].Value.ToString();
                txttt.Text = dgvnv.Rows[row].Cells["Trangthai"].Value.ToString();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string manv = txtma.Text;
            string ten = txtten.Text;
            string ngay = txtngay.Text;
            string cv = txtcv.Text;
            string lg = txtlg.Text;
            string gt = txtgt.Text;
            string dc = txtdc.Text;
            string tt = txttt.Text;

            string query = @"insert into Nhanvien values('" + manv + "','" + ten + "','" + ngay + "','" + cv + "','" + lg + "','" + gt + "','" + dc + "','" + tt + "')";
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

        private void button3_Click(object sender, EventArgs e)
        {
            string manv = txtma.Text;
            string ten = txtten.Text;
            string ngay = txtngay.Text;
            string cv = txtcv.Text;
            string lg = txtlg.Text;
            string gt = txtgt.Text;
            string dc = txtdc.Text;
            string tt = txttt.Text;

            string query = @"update Nhanvien set Tennv='" + ten + "',Ngaysinh='" + ngay + "',Chucvu='" + cv + "',Luong='" + lg + "',Gioitinh='" + gt + "',Diachi='" + dc + "',Trangthai='" + tt + "' where Manv='" + manv + "'";
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
            string manv = txtma.Text;
            string query = @"delete  from Nhanvien where Manv='" + manv + "'";
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
            string query = @"select * from Nhanvien where Tennv = '" + ten + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Nhanvien");
            dgvnv.DataSource = ds.Tables["Nhanvien"];
        }

        private void button6_Click(object sender, EventArgs e)
        {
            txtma.Text = "";
            txtten.Text = "";
            txtngay.Text = "";
            txtcv.Text = "";
            txtlg.Text = "";
            txtgt.Text = "";
            txtdc.Text = "";
            txttt.Text = "";
        }
    }
}
