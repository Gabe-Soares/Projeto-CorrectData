<%@ Page Title="Novo contato" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NovoContato.aspx.cs" Inherits="NovoContato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Dados do novo contato:</h1>

    <form ID="novo_cad">
        <div>
            <asp:Label ID="nome_label" Text="Nome completo: " runat="server"></asp:Label>
            <asp:TextBox ID="nome_text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="nasc_label" Text="Data de nascimento: " runat="server"></asp:Label>
            <asp:TextBox ID="nasc_text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="email_label" Text="Email: " runat="server"></asp:Label>
            <asp:TextBox ID="email_text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="tipo_email_label" Text="Tipo do email: " runat="server"></asp:Label>
            <asp:ListBox ID="tipo_email_list" Rows="2" Width="100px" SelectionMode="Single"  runat="server">
                <asp:ListItem>Profissional</asp:ListItem>
                <asp:ListItem>Pessoal</asp:ListItem>
            </asp:ListBox>
        </div>
        <div>
            <asp:Label ID="tel1_label" Text="Telefone para contato: " runat="server"></asp:Label>
            <asp:TextBox ID="tel1_text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="tipo_tel1_label" Text="Tipo do telefone: " runat="server"></asp:Label>
            <asp:ListBox ID="tipo_tel1_list" Rows="5" Width="100px" SelectionMode="Single"  runat="server">
                <asp:ListItem>Residencial</asp:ListItem>
                <asp:ListItem>Comercial</asp:ListItem>
                <asp:ListItem>Celular</asp:ListItem>
                <asp:ListItem>Fax</asp:ListItem>
                <asp:ListItem>Outros</asp:ListItem>
            </asp:ListBox>
        </div>
        <div>
            <asp:Label ID="tel2_label" Text="Telefone para contato: " runat="server"></asp:Label>
            <asp:TextBox ID="tel2_text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="tipo_tel2_label" Text="Tipo do telefone: " runat="server"></asp:Label>
            <asp:ListBox ID="tipo_tel2_list" Rows="5" Width="100px" SelectionMode="Single"  runat="server">
                <asp:ListItem>Residencial</asp:ListItem>
                <asp:ListItem>Comercial</asp:ListItem>
                <asp:ListItem>Celular</asp:ListItem>
                <asp:ListItem>Fax</asp:ListItem>
                <asp:ListItem>Outros</asp:ListItem>
            </asp:ListBox>
        </div>
        <div>
            <asp:Button ID="submitbutton" Text="Cadastrar" OnClick="cadastraButton" runat="server"/>
            <asp:Button ID="limpar_buttpn" Text="Limpar" OnClick="limpar_buttpn_Click" runat="server"/>
        </div>
        <div>
            <asp:Button ID="pag_inicial" Text="Página inicial" OnClick="pag_inicial_Click" runat="server"/>
        </div>
   </form>
</asp:Content>