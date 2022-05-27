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
    public partial class Hoadon : Form
    {
        public Hoadon()
        {
            InitializeComponent();
        }
        public void getdl()
        {
            string query = @"Select * from Hoadon";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Hoadon");
            dgv2.DataSource = ds.Tables["Hoadon"];


        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Hoadon_Load(object sender, EventArgs e)
        {
            getdl();
        }

        private void dgv1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }
        private void button3_Click(object sender, EventArgs e)
        {
            string mahd = txtmhd.Text;
            string masp = txtmsp.Text;
            string ten = txtten.Text;
            string dg = txtdg.Text;
            string tt = txttt.Text;
            string ngay = txtngay.Text;
            string kh = txtkh.Text;
            string nb = txtnb.Text;
            string query = @"insert into Hoadon values('" + mahd + "','" + masp + "','" + ten + "','" + dg + "','" + tt + "','" + ngay + "','" + kh + "','" + nb + "')";
            ketnoi cn = new ketnoi();
            bool kq = cn.excute(query);
            if (kq == true)
            {
                MessageBox.Show("Lưu thành công");
                getdl();
            }
            else
            {
                MessageBox.Show("Lưu thất bại");
            }
        }
        private void button4_Click(object sender, EventArgs e)
        {
            
        }

        private void button6_Click(object sender, EventArgs e)
        {
            txtmhd.Text = "";
            txtmsp.Text = "";
            txtten.Text = "";
            txtdg.Text = "";
            txttt.Text = "";
            txtngay.Text = "";
            txtkh.Text = "";
            txtnb.Text = "";
            txtdoanhthu.Text = "";
        }

        private void dgv2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int row = e.RowIndex;
            if (row >= 0)
            {

                txtmhd.Text = dgv2.Rows[row].Cells["Mahd"].Value.ToString();
                txtmsp.Text = dgv2.Rows[row].Cells["Masp"].Value.ToString();
                txtten.Text = dgv2.Rows[row].Cells["Tensp"].Value.ToString();
                txtdg.Text = dgv2.Rows[row].Cells["Dongia"].Value.ToString();
                txttt.Text = dgv2.Rows[row].Cells["Thanhtien"].Value.ToString();
                txtngay.Text = dgv2.Rows[row].Cells["Ngay"].Value.ToString();
                txtkh.Text = dgv2.Rows[row].Cells["Tenkh"].Value.ToString();
                txtnb.Text = dgv2.Rows[row].Cells["Tennv"].Value.ToString();


            }
        }

        private void btnsua_Click(object sender, EventArgs e)
        {
            string mahd = txtmhd.Text;
            string masp = txtmsp.Text;
            string ten = txtten.Text;
            string dg = txtdg.Text;
            string tt = txttt.Text;
            string ngay = txtngay.Text;
            string kh = txtkh.Text;
            string nb = txtnb.Text;
            string query = @"update Hoadon set Masp='" + masp + "',Tensp='" + ten + "',Dongia='" + dg + "',Thanhtien='" + tt + "',Ngay='" + ngay + "',Tenkh='" + kh + "',Tennv='" + nb + "' where Mahd='" + mahd + "'";
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
    
        private void btnsum_Click(object sender, EventArgs e)
        {
            int tien = dgv2.Rows.Count;
            int sum = 0;
            for (int i = 0; i < tien - 1; i++)
            {
                sum += Convert.ToInt32(dgv2.Rows[i].Cells["Thanhtien"].Value.ToString());
            }
            txtdoanhthu.Text = sum.ToString();
        }
    }
}
