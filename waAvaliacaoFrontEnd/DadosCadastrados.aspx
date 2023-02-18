<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="DadosCadastrados.aspx.cs" Inherits="waAvaliacaoFrontEnd.DadosCadastrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Lista dos Dados Cadastrados" Font-Names="Lucida Calligraphy"></asp:Label>
    <br />
    <br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="0" DataKeyNames="cpf" DataSourceID="SqlDataSourceDadosCadastrados" AllowPaging="True" Font-Names="Lucida Calligraphy">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="cpf" HeaderText="cpf" ReadOnly="True" SortExpression="cpf" />
        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" SortExpression="mensagem" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#E2181E" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceDadosCadastrados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nome], [cpf], [telefone], [endereco], [email], [mensagem] FROM [ListaDeDadosCadastrados]" DeleteCommand="DELETE FROM [ListaDeDadosCadastrados] WHERE [cpf] = @cpf" InsertCommand="INSERT INTO [ListaDeDadosCadastrados] ([nome], [cpf], [telefone], [endereco], [email], [mensagem]) VALUES (@nome, @cpf, @telefone, @endereco, @email, @mensagem)" UpdateCommand="UPDATE [ListaDeDadosCadastrados] SET [nome] = @nome, [telefone] = @telefone, [endereco] = @endereco, [email] = @email, [mensagem] = @mensagem WHERE [cpf] = @cpf">
    <DeleteParameters>
        <asp:Parameter Name="cpf" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="cpf" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="mensagem" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="mensagem" Type="String" />
        <asp:Parameter Name="cpf" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
