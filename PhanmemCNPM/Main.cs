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
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Sanpham frm = new Sanpham();
            frm.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Hoadon frm = new Hoadon();
            frm.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Qly frm = new Qly();
            frm.Show();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
           DialogResult tb = MessageBox.Show("Bạn muốn đăng xuất?", "Thông báo",MessageBoxButtons.OKCancel,MessageBoxIcon.Question);
            if(tb == DialogResult.OK)
            {
                Dangnhap frm = new Dangnhap();
                frm.Show();
                this.Hide();
            }
            
        }
    }
}
