<%@ Page Title="CorrectData - Contatos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de contatos:</h1>

    <asp:GridView ID="tabela_contatos" AutoGenerateColumns="False" runat="server">
        <Columns>
            <asp:BoundField DataField="nome_contato" HeaderText="Nome: " />
            <asp:BoundField DataField="email_contato" HeaderText="E-mail: " />
            <asp:BoundField DataField="tel1_contato" HeaderText="Telefone: " />
        </Columns>
    </asp:GridView>

    <asp:Button ID="adc_contato" CssClass="button" ItemStyle-Width="150px" DataTextField="N017" Text="Adicionar contato" OnClick="adc_contato_Click" runat="server"/>
</asp:Content>

