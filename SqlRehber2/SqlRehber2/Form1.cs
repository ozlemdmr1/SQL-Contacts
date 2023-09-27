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

namespace SqlRehber2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        public SqlConnection con;
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlCommand cmd;
        void GridwiewDoldur()
        {
            con=new SqlConnection("server=LAPTOP-5SS982QE\\SQLEXPRESS01; " +
                                            "Initial Catalog=rehberim;Integrated Security=SSPI");
            con.Open();
            da=new SqlDataAdapter("select *from kisi",con);
            ds = new DataSet();
            da.Fill(ds, "kisi");
            dataGridView1.DataSource = ds.Tables["kisi"];
            con.Close();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            GridwiewDoldur();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "insert into kisi (TcNo, AdSoyad, Sehir, Adres) values ("
                + textBox1.Text + ",'" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            GridwiewDoldur();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "delete from kisi where TcNo=" + textBox1.Text + "";
            cmd.ExecuteNonQuery();
            con.Close();
            GridwiewDoldur();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "update kisi set AdSoyad='" + textBox2.Text + "',Sehir='" 
                + textBox3.Text + "',Adres='" + textBox4.Text + "'where TcNo=" + textBox1.Text + "";
            cmd.ExecuteNonQuery();
            con.Close();
            GridwiewDoldur();
        }
    }
}
