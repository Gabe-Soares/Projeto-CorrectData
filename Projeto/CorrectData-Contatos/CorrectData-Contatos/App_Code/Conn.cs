using System.Data.SqlClient;
using System.Data;

public class Conn
{
    //Atributos
    private string string_conexao = "Data Source=GABRIL\\SQLSERVER2017;Initial Catalog=CorrectData_Contatos;Integrated Security=True";
    public string query_string = "SELECT nome_contato, email_contato, tel1_contato FROM CONTATOS_TB";

    public DataTable dataContatos()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = this.string_conexao;

        SqlDataAdapter da = new SqlDataAdapter(query_string, conn);
        conn.Open();
        
        DataTable dt = new DataTable();
        da.Fill(dt);

        conn.Close();
        
        return dt;
    }
}