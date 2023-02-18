<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="waAvaliacaoFrontEnd.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Preenchimento de Cadastro" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nome Completo" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbNomeCompleto" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="CPF" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbCpf" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Telefone" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbTelefone" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="E-mail" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbEmail" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Endereço" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbEndereco" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Mensagem" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <asp:TextBox ID="txbMensagem" runat="server" Font-Names="Lucida Calligraphy" BorderColor="#000066" BorderStyle="Solid" Height="100px" Width="500px"></asp:TextBox>
    <br />
<asp:Button ID="btEnviar" runat="server" Text="Enviar" OnClick="btEnviar_Click" BackColor="#000066" BorderColor="#33CCFF" BorderStyle="Solid" Font-Bold="True" Font-Names="Lucida Calligraphy" Font-Size="Small" ForeColor="White" Width="250px" />

</asp:Content>
