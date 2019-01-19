using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Conn conn = new Conn();

        tabela_contatos.DataSource = conn.dataContatos();
        tabela_contatos.DataBind();
    }

    protected void adc_contato_Click(object sender, EventArgs e)
    {
        Response.Redirect("NovoContato.aspx");
    }
}