<%@ Page Title="CorrectData - Contatos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de contatos:</h1>
    <br/><br/>

    <div>
        <span class="index"><center>
            <a href="/Default?letter=A">A</a> - 
            <a href="/Default?letter=B">B</a> - 
            <a href="/Default?letter=C">C</a> - 
            <a href="/Default?letter=D">D</a> - 
            <a href="/Default?letter=E">E</a> - 
            <a href="/Default?letter=F">F</a> - 
            <a href="/Default?letter=G">G</a> - 
            <a href="/Default?letter=H">H</a> - 
            <a href="/Default?letter=I">I</a> - 
            <a href="/Default?letter=J">J</a> - 
            <a href="/Default?letter=K">K</a> - 
            <a href="/Default?letter=L">L</a> - 
            <a href="/Default?letter=M">M</a> - 
            <a href="/Default?letter=N">N</a> - 
            <a href="/Default?letter=O">O</a> - 
            <a href="/Default?letter=P">P</a> - 
            <a href="/Default?letter=Q">Q</a> - 
            <a href="/Default?letter=R">R</a> - 
            <a href="/Default?letter=S">S</a> - 
            <a href="/Default?letter=T">T</a> - 
            <a href="/Default?letter=U">U</a> - 
            <a href="/Default?letter=V">V</a> - 
            <a href="/Default?letter=W">W</a> - 
            <a href="/Default?letter=X">X</a> - 
            <a href="/Default?letter=Y">Y</a> - 
            <a href="/Default?letter=Z">Z</a> - 
            <a href="/Default">TODOS</a>
        </center></span>
    </div>

    <br/>
    <asp:GridView ID="tabela_contatos" AutoGenerateColumns="False" runat="server">
        <Columns>
            <asp:BoundField ItemStyle-CssClass="update" DataField="nome_contato" HeaderText="Nome: " />
            <asp:BoundField DataField="email_contato" HeaderText="E-mail: " />
            <asp:BoundField DataField="tel1_contato" HeaderText="Telefone: " />
        </Columns>
    </asp:GridView>

    <asp:Button ID="adc_contato" Style="position: absolute; float: right; margin: 10px 10px 10px 950px;" ItemStyle-Width="150px" DataTextField="N017" Text="Adicionar contato" OnClick="adc_contato_Click" runat="server"/>
</asp:Content>

