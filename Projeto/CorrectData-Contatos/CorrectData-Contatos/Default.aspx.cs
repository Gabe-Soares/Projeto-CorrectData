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

        try
        {
            if (!IsPostBack)
            {

                if (this.Request.QueryString.HasKeys())
                {
                    if (this.Request.QueryString["letter"] != null && !string.IsNullOrEmpty(Page.Request.QueryString["letter"]))
                    {
                        tabela_contatos.DataSource = conn.dataContatosLetra(Request.QueryString["letter"].ToString());
                        tabela_contatos.DataBind();
                    }
                }
                else
                {
                    tabela_contatos.DataSource = conn.dataContatosLetra();
                    tabela_contatos.DataBind();
                }
            }
        }
        catch (Exception erro)
        {
            Console.WriteLine("!!! - Erro: " + erro);
        }

        
        /**
         * Código abandonado por conta do tempo.
         * O objetivo aqui era criar de forma dinâmica a tag <a> pelo JavaScript, já que o <asp:BoundField> não permite este recurso.
         * Criando a tag, na primeira coluna da tabela de contatos do /Default.aspx, ela redirecionaria para a tela de alteração do contato.
         */
        /*ScriptManager.RegisterStartupScript(this, typeof(Page), "JavaScript", 
            "$(document).ready(function(){" +
            "var nomes = $('.update');var nomes_dom = nomes; var i;for(i=0; i<nomes.length; i++){nomes[i] = nomes[i].textContent.toString();}" +
            "for(i=0; i<nomes_dom.length; i++){var tag = document.createElement('a');tag.setAttribute('href', \"/Default?letter=\" + nomes[i]);" +
            "tag.innerHTML = \" (Editar)\";nomes_dom.appendChild(tag);}alert('Rodou.');" +
            "});", true);*/
    }

    protected void adc_contato_Click(object sender, EventArgs e)
    {
        Response.Redirect("NovoContato.aspx");
    }
}