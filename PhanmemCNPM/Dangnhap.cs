using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace PhanmemCNPM
{
    public partial class Dangnhap : Form
    {
        public Dangnhap()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string tk = txt1.Text;
            string mk = txt2.Text;
            string query = @"Select Count(*) from Dangnhap where Taikhoan='" + tk + "' and Matkhau ='" + mk + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "Dangnhap");
            if ((int)ds.Tables["Dangnhap"].Rows[0].ItemArray[0] == 1)
            {
                MessageBox.Show("Đăng nhập thành công");
                Main frm = new Main();
                frm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại");
            }

        }
        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void Dangnhap_Load(object sender, EventArgs e)
        {
           
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

       
    }
}
