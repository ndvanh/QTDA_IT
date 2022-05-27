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
    public partial class Qly : Form
    {
        public Qly()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string ma = txtma.Text;
            string query = @"Select Count(*) from MaQly where Maqly='" + ma + "'";
            ketnoi cn = new ketnoi();
            DataSet ds = cn.getdata(query, "MaQly");
            if ((int)ds.Tables["MaQly"].Rows[0].ItemArray[0] == 1)
            {
                MessageBox.Show("Nhập mã thành công");
                Nhanvien frm = new Nhanvien();
                frm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Mã sai!");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
