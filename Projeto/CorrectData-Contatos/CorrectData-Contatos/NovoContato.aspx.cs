using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NovoContato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cadastraButton(object sender, EventArgs e)
    {
        if (nome_text.ToString().Replace(" ", String.Empty)!=null && nome_text.ToString().Replace(" ", String.Empty) != "")
        {
            String[] aux = new String[8];
            aux[0] = checaPreenchido(nome_text.Text.ToString());
            aux[1] = checaPreenchido(nasc_text.Text.ToString());
            aux[2] = checaPreenchido(email_text.Text.ToString());
            aux[3] = checaPreenchido(tipo_email_list.Text.ToString());
            aux[4] = checaPreenchido(tel1_text.Text.ToString());
            aux[5] = checaPreenchido(tipo_tel1_list.Text.ToString());
            aux[6] = checaPreenchido(tel2_text.Text.ToString());
            aux[7] = checaPreenchido(tipo_tel2_list.Text.ToString());

            String insert = "INSERT INTO CONTATOS_TB(nome_contato, nasc_data, email_contato, email_tipo, tel1_contato, tel1_tipo, tel2_contato, tel2_tipo) VALUES (@nome, @data, @email, @email_tipo, @tel1, @tel1_tipo, @tel2, @tel2_tipo)";

            try {
                String str_conn = "Data Source=GABRIL\\SQLSERVER2017;Initial Catalog=CorrectData_Contatos;Integrated Security=True";
                SqlConnection conn = new SqlConnection(str_conn);
                conn.Open();
                SqlCommand cmd = new SqlCommand(insert, conn);

                cmd.Parameters.AddWithValue("@nome", aux[0]);
                cmd.Parameters.AddWithValue("@data", aux[1]);
                cmd.Parameters.AddWithValue("@email", aux[2]);
                cmd.Parameters.AddWithValue("@email_tipo", aux[3]);
                cmd.Parameters.AddWithValue("@tel1", aux[4]);
                cmd.Parameters.AddWithValue("@tel1_tipo", aux[5]);
                cmd.Parameters.AddWithValue("@tel2", aux[6]);
                cmd.Parameters.AddWithValue("@tel2_tipo", aux[7]);
                cmd.CommandType = System.Data.CommandType.Text;

                cmd.ExecuteNonQuery();

                cmd.Parameters.Clear();
                conn.Close();


                Response.Write("<script>alert('Cadastro realizado com sucesso.');</script>");

                nome_text.Text = "";
                nasc_text.Text = "";
                email_text.Text = "";
                tel1_text.Text = "";
                tel2_text.Text = "";
            }
            catch (Exception erro)
            {
                Console.WriteLine("!!! - Erro: " + erro);
                Response.Write("<script>alert('Falha ao cadastrar.');</script>");
            }
        }
        else
        {
            nome_label.ForeColor = System.Drawing.Color.Red;
        }
    }

    private String checaPreenchido(String s)
    {
        if (s.ToString().Replace(" ", String.Empty) == "")
        {
            return ("NULL");
        }
        else
        {
            return (s);
        }
    }

    protected void limpar_buttpn_Click(object sender, EventArgs e)
    {
        nome_text.Text = "";
        nasc_text.Text = "";
        email_text.Text = "";
        tel1_text.Text = "";
        tel2_text.Text = "";
    }

    protected void pag_inicial_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}