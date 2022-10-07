using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace saglik.Web
{
    public partial class Default : System.Web.UI.Page
    {

       

        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            DropDownList7.Visible = false;
            DropDownList8.Visible = false;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            Label2.Text = DropDownList1.SelectedValue;
            Label5.Text = DropDownList2.SelectedValue;
            Label3.Text = TextBox1.Text;
            Label4.Text = TextBox2.Text;

            saglik.Business.Class1 arda = new Business.Class1();
            Label1.Text = arda.Getirunvan(TextBox4.Text);

            if (DropDownList2.SelectedItem.Text == "0-10")
            {
                DropDownList3.Visible = true;
            }
            if (DropDownList2.SelectedItem.Text == "11-20")
            {
                DropDownList4.Visible = true;
            }
            if (DropDownList2.SelectedItem.Text == "21-30")
            {
                DropDownList5.Visible = true;
            }
            if (DropDownList2.SelectedItem.Text == "31-50")
            {
                DropDownList6.Visible = true;
            }
            if (DropDownList2.SelectedItem.Text == "51-70")
            {
                DropDownList7.Visible = true;
            }
            if (DropDownList2.SelectedItem.Text == "71-100")
            {
                DropDownList8.Visible = true;
            }
        }

        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedItem.Text == "Profesör")
            {
                GridView1.Visible = true;
            }
            else if (DropDownList1.SelectedItem.Text == "Doçent")
            {
                GridView2.Visible = true;
            }

            else if (DropDownList1.SelectedItem.Text == "Yardımcı Doçent")
            {
                GridView3.Visible = true;
            }
            else if (DropDownList1.SelectedItem.Text == "Operatör")

            {
                GridView4.Visible = true;
            }
            else if (DropDownList1.SelectedItem.Text == "Uzman")
            {
                GridView5.Visible= true;
            }

           
        }





        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection("Data Source = ROSEeeeeeee\\ARDA; Initial Catalog = kayıtlar; Integrated Security = True"))
            {



                using (SqlCommand cmd = cnn.CreateCommand())
                {

                    cmd.CommandText = "INSERT INTO gelenveri (Ad,soyad,yaş,şikayetleriniz) values (@p1,@p2,@p3,@p4); ";

                    cmd.Parameters.Add(new SqlParameter("@p1", TextBox1.Text));

                    cmd.Parameters.Add(new SqlParameter("@p2", TextBox2.Text));

                    cmd.Parameters.Add(new SqlParameter("@p3", DropDownList2.SelectedItem.Text));

                    cmd.Parameters.Add(new SqlParameter("@p4", TextBox3.Text));

                    cnn.Open();

                    cmd.ExecuteNonQuery();

                }

            }

            saglik.DataAccess.data data = new saglik.DataAccess.data();
            Label7.Text = data.randevu(TextBox4.Text);
            


        }
    }
}