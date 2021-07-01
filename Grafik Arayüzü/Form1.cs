using SimpleTCP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hava_Durumu_İstasyonu_Client
{
    public partial class Form1 : Form
    {
        string[] deger = new string[6];
        string sicaklik, nem, basinc, voltaj, saat, dakika;
        double sic_double, nem_double, bas_double, vol_double, saat_double, dak_double;


        public Form1()
        {
            InitializeComponent();

            chart1.Titles.Add("Sıcaklık ve Nem");
            chart2.Titles.Add("Basınç");
            chart3.Titles.Add("Gerilim");
        }
        SimpleTcpClient client;

        private void chart1_Click(object sender, EventArgs e)
        {
            
        }

        private void btnbaslat_Click(object sender, EventArgs e)
        {
            btnbaslat.Enabled = false;
            //Connect to server
            client.Connect(txtip.Text, Convert.ToInt32(txtport.Text));
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            client = new SimpleTcpClient();
            client.StringEncoder = Encoding.UTF8;
            client.DataReceived += Client_DataReceived;
        }

        private void Client_DataReceived(object sender, SimpleTCP.Message e)
        {
            //Update message to txtveri
            txtveri.Invoke((MethodInvoker)delegate ()
            {

                string[] deger = e.MessageString.Split(',');

                string sicaklik = deger[0];
                string nem = deger[1];
                string basinc = deger[2];
                string voltaj = deger[3];
                string saat = deger[4];
                string dakika = deger[5];

               
                txtveri.Text += "Sıcaklık: " + deger[0] + " °C" + Environment.NewLine + "Nem: " + "% " + deger[1] + Environment.NewLine;
                txtveri.Text += "Basınç: " + deger[2] + " hPa" + Environment.NewLine + "Voltaj: " + deger[3] + " V" + Environment.NewLine;
                txtveri.Text += "Saat: " + deger[4] + " : "; txtveri.Text += deger[5] + Environment.NewLine;
                txtveri.Text += "*************" + Environment.NewLine;

                txtveri.SelectionStart = txtveri.Text.Length;
                txtveri.ScrollToCaret();


                sic_double = Convert.ToDouble(sicaklik);
                nem_double = Convert.ToDouble(nem);
                bas_double = Convert.ToDouble(basinc);
                vol_double = Convert.ToDouble(voltaj);
                saat_double = Convert.ToDouble(saat);
                dak_double = Convert.ToDouble(dakika);

                chart1.Series[0].Points.AddY(sic_double);
                chart1.Series[1].Points.AddY(nem_double);
                chart2.Series[0].Points.AddY(bas_double);
                chart3.Series[0].Points.AddY(vol_double);

            });
        }
    }
}
